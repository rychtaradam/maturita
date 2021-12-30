# Ročníkový projekt
Veřejný server (Grafana): http://vaqe.net:3000/


## Využité technologie, komponenty, stroje a aplikace
   ### Komponenty a stroje
      - Raspberry Pi 3 Model B
      - Display TM1637
      - Teplotní sonda DS18B20
      - Tiskárna Ender 3 V2
      
   ### Technologie
      - Docker
      - MQTT
      - Node-RED
      - InfluxDB
      
   ### Aplikace na programování a grafika
      - Fusion 360
      - Arduino IDE
      - Diagram - https://app.diagrams.net/
      - Time Series Admin (https://github.com/timeseriesadmin/timeseriesadmin)
      - nano (Linux, VIM neumím vypnout :D)

## Rok 2019

- V polovině tohoto roku vzniká nápad na můj závěrečný projekt.
- Otcovi se porouchal jeho teploměr do udírny, který obsahoval 3 displaye a asi 3 tlačítka.
- Chtěl jsem mu ho nejprve opravit, ale z toho sešlo velice rychle.
- Dostal jsem nápad na vylepšení jeho teploměru a to do podoby jak hardwarové, tak softwarové.
- Můj první prototyp byl složen s teplotní sondy DS18B20, arduino UNO a 7-segment displaye TM1637.
- Zatím jsem neměl 3D tiskárnu, tak jsem arduino se sondou měl bez krabičky.

## Rok 2020

- Zakoupil jsem 3D tiskárnu Ender 3 V2.
- V aplikaci Autodesk Inventor jsem udělal první návrh krabičky a dal tisknout.
- Asi po 12 hodinách bylo hotovo a já zjistil, že tiskárna byla špatně nakalibrovaná a krabička měla stejně hodně chyb co se velikosti a rozměrů týče.
- Jelikož jsem byl v 3D tisku teprve začátečník, musel jsem se toho ještě hodně naučit.
- V polovině roku jsem už měl za sebou nějaké zkušenosti a taky pořízený BlTouch na lepší zkalibrování tiskárny.
- Vytiskl jsem svůj asi 5. návrh krabičky, která už byla použitelná.
- V tomto roce jsem také zakoupil hodinový modul na určení přesného času.
- Znovu jsem tedy Arduino naprogramoval, vše zapojil do krabičky a šel otestovat ven.
- Vše fungovalo, tak jak mělo a otec můj teploměr používá.

## Rok 2021

- Použití nápadu na teploměr jako závěrečný projekt.
- Zjištění - arduino a "blbý" teploměr nebude k maturitě stačit.
- Konzultace:
    - S panem Lučným jsme prokonzultovali možné varianty využití a zlepšení projektu.
    - Pan Lučný mi velmi pomohl a byl velice vstřícný a ochotný mi pomoct.
    - A přišel taky s pár radami co použít a čemu se vyhnout.
- Rozhodl jsem se celý projekt překopat a hlavně vyloučit použití Arduina UNO.
- Místo něho jsem začal s přípravami na Raspberry Pi 3 Model B.

   ### 1.10.2021
   - Návrh diagramu 
   ### 22.10.2021
   - Instalace Raspbian OS
   - První kód
   ### 30.10.2021
   - Přechod z C++ na C (z důvodu dostupnosti knihoven)
   - Zprovoznění všech knihoven pro obsluhu čidla a displeje
   ### 4.11.2021 
   - Začátek návrhu krabičky pomocí Fusion 360
   ### 17.11.2021
   - Dokončení krabičky
   ### 2.12.2021
   - Zprovoznění výpis teploty do konzole
   ### 8.12.2021
   - Zprovoznění výpisu teploty na displej
   ### 12.12.2021
   - Úprava kódu
   ### 14.12.2021
   - Zrušení Djanga
   - Instalace Grafany
   - Zkouška MQTT komunikace nanečisto v Pythonu (test brokera)
   ### 21.12.2021
   - Upravení funkce výpisu na displej
   ### 29.12.2021
   - Instalace Node-RED
   - Instalace InfluxDB
   - Zprovoznění Grafany
   - Zprovoznění MQTT na Raspberry Pi
   - Vytvoření dokumentace
   ### 30.12.2021
   - Nahrání 3D modelu krabičky
   - Nahrání obrázků navrhnuté krabičky
   - Úprava vzhledu kódu a poznámky programátora
   - Nahrání všech souborů ze serveru