#include "fileManager.h"
#include "TempSensorManager.h"

std::size_t GetTime() {
	
}

int main() {
	// Čtení teploty prostřednictvím TempSensorManageru.
	// Zapisování do souboru prostřednictvím FileManageru.
	
	int teplota = 0;

	while(true) {
		//Čtení teploty a času
		int tepl = GetTemperature();
		
		if(tepl < teplota || tepl > teplota) {
			teplota = tepl;
			
			std::size_t cas = GetTime();
		
			// Inicializace struktury
			TempDataStructure tempDatStr = { teplota, cas };
			
			saveToFile(tempDatStr);
		}
	}
}
