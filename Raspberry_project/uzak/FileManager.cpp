#include "fileManager.h"

struct temperatureStructure {
	int temperature;
	int 
}

void saveToFile(temperatureStructure tempStr) {
	ofstream file;
	
	file.open("db.json", std::fstream::ios::app);
	//file << "Writing to a file in C++...";
	
	
	file.close();
}

temperatureStructure readFromFile() {
	/

	return { 60,  };
}
