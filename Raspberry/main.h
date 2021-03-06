#ifndef _main_h
#define _main_h

#include "sensor.h"

void publish(char stemp[4]);
void Cleanup(SensorList *sensorList);
void ReadTemperatureLoop(SensorList *sensorList);
void LogTemperature(Sensor *sensor, float temperature, int temp);

#endif /* _main_h */
