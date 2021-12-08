#ifndef _main_h
#define _main_h 

#define LCDADDRESS 0x27

#include "sensor.h"

void Cleanup(SensorList *sensorList);
void ReadTemperatureLoop(SensorList *sensorList);
void LogTemperature(Sensor *sensor, float temperature, int temp);

#endif /* _main_h */
