#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <signal.h>
#include <mosquitto.h>
#include <wiringPi.h>

#include "main.h"
#include "sensor.h"
#include "tm1637.h"

#define LIMIT 90


const int buzzer = 2;

const uint8_t celsia[] = {
	0b01100011, // Stupeň
	0b00111001  // C
};

const uint8_t stupen[] = {
	0b01100011, // Stupeň
};

volatile sig_atomic_t sigintFlag = 0;

void onSigInt(int signum) {
    sigintFlag = 1;
}

void signaux(int sigtype) {
	TMclear();
	exit(0);
}

int main(int argc, char **argv) {
    signal(SIGINT,signaux);
    signal(SIGTERM,signaux);
    TMsetup(29,28);
    TMsetBrightness(6);

    signal(SIGINT, onSigInt);

    wiringPiSetup();
    pinMode(buzzer, OUTPUT);

    char **sensorNames;
    int sensorNamesCount;

    if(argc > 1) {
        sensorNames = argv + 1;
        sensorNamesCount = argc - 1;
    }
    else {
        sensorNames = NULL;
        sensorNamesCount = 0;
    }

    SensorList *sensorList = GetSensors(sensorNames, sensorNamesCount);
    if(sensorList->SensorCount == 0) {
        printf("Nenalezeny zadne senzory.\n");
        return 0;
    }
    printf("Pripojene senzory: %d\n", sensorList->SensorCount);

    ReadTemperatureLoop(sensorList);
    Cleanup(sensorList);
}

// Připojuje se na MQTT brokera a posílá data o teplotě do topicu
void publish(char stemp[4]) {
        int rc;
        struct mosquitto * mosq;

        mosquitto_lib_init();
        mosq = mosquitto_new("publisher", true, NULL);
        rc = mosquitto_connect(mosq, "vaqe.net", 1883, 60);
        if(rc != 0){
                printf("Nelze se pripojit k brokerovi! Error Code: %d\n", rc);
                mosquitto_destroy(mosq);
        }
	else {
		printf("Pripojeno k brokerovi!\n");
        	mosquitto_publish(mosq, NULL, "Rychtar/uzak", 2, stemp, 0, false);
        	mosquitto_disconnect(mosq);
        	mosquitto_destroy(mosq);
        	mosquitto_lib_cleanup();
	}
}

void Cleanup(SensorList *sensorList) {
    printf("Vypnuti...\n");
    FreeSensors(sensorList);
    TMclear();
}

// Čte teplotu z čidla
void ReadTemperatureLoop(SensorList *sensorList) {
    while(!sigintFlag) {
        for(int i = 0; i < sensorList->SensorCount; i++) {
            float temperature = ReadTemperature(sensorList->Sensors[i]);
            int temp = ReadTemperature(sensorList->Sensors[i]);
            LogTemperature(sensorList->Sensors[i], temperature, temp);

	    if(temperature > LIMIT) {
		digitalWrite(buzzer, 1000);
		delay(500);
		digitalWrite(buzzer, 0);
	    }
        }
    }
}

// Zaznamenává teplotu a vypisuje jí na displej a do konzole (pro debugging)
void LogTemperature(Sensor *sensor, float temperature, int temp) {
    time_t currentTime;
    time(&currentTime);

    char dateTimeStringBuffer[32];
    strftime(dateTimeStringBuffer, 32, "%Y-%m-%d %H:%M:%S", localtime(&currentTime));
    char stemp[4];
    sprintf(stemp, "%d", temp);
    publish(stemp);
    printf("%s - %s - %.2fC\n", dateTimeStringBuffer, sensor->SensorName, temperature);

    // Zjišťuje "délku" čísla a rozhoduje zda-li vypsat "°C", nebo jenom "°" (nedostatek místa na displeji při tří místném čísle)
	if(temp < -9 || temp > 99){
		TMshowNumber(temp, false, false, 3, 0);
		TMsetSegments(stupen, 1, 3);
	}
	else {
		TMshowNumber(temp, false, false, 2, 0);
		TMsetSegments(celsia, 2, 2);
	}
}
