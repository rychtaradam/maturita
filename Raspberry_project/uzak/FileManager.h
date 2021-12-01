#ifndef _FILEMANAGER_H_
#define _FILEMANAGER_H_

#include <iostream>

#include "TempSensorManager.h"

structure TempDataStructure {
	int temperature;
	std::time_t time;
	
}

void saveToFile(TempDataStructure tempStr);

TempDataStructure readFromFile();

#endif /* _FILEMANAGER_H_ */
