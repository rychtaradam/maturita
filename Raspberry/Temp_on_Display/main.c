#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <signal.h>

#include "main.h"
#include "sensor.h"
#include "tm1637.h"

const uint8_t celsia[] = {
  0b01100011, // Stupeň
  0b00111001  // C
};
/*const uint8_t stupen[] = {
  SEG_A | SEG_D | SEG_E | SEG_F   // C
};*/

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
        printf("No sensors found - exiting.\n");
        return 0;
    }
    printf("Attached Sensors: %d\n", sensorList->SensorCount);

    ReadTemperatureLoop(sensorList);        
    Cleanup(sensorList);   
}


void Cleanup(SensorList *sensorList) {
    printf("Exiting...\n");
    FreeSensors(sensorList);
    TMclear();
}

void ReadTemperatureLoop(SensorList *sensorList) {
    while(!sigintFlag) {
        for(int i = 0; i < sensorList->SensorCount; i++) {
            float temperature = ReadTemperature(sensorList->Sensors[i]);
            int temp = ReadTemperature(sensorList->Sensors[i]);
            LogTemperature(sensorList->Sensors[i], temperature, temp);
        }       
    }
}

void LogTemperature(Sensor *sensor, float temperature, int temp) {
    time_t currentTime;
    time(&currentTime);

    char dateTimeStringBuffer[32];
    strftime(dateTimeStringBuffer, 32, "%Y-%m-%d %H:%M:%S", localtime(&currentTime));

    printf("%s - %s - %.2fC\n", dateTimeStringBuffer, sensor->SensorName, temperature);
    TMshowNumber(temp, 0b11100000, false, 2, 0);
    TMsetSegments(celsia, 2, 2);
}
