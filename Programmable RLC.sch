EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Programmable RLC Impedance"
Date ""
Rev "1.0"
Comp "Stage Centre Spatial de Liège"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 60C3C15F
P 3200 2950
F 0 "#PWR0101" H 3200 2700 50  0001 C CNN
F 1 "GND" H 3205 2777 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60C3E3A4
P 2350 4900
F 0 "#PWR0102" H 2350 4650 50  0001 C CNN
F 1 "GND" H 2355 4727 50  0000 C CNN
F 2 "" H 2350 4900 50  0001 C CNN
F 3 "" H 2350 4900 50  0001 C CNN
	1    2350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1700 2750 1700
$Comp
L power:GND #PWR0104
U 1 1 60C54B0A
P 9750 2850
F 0 "#PWR0104" H 9750 2600 50  0001 C CNN
F 1 "GND" H 9755 2677 50  0000 C CNN
F 2 "" H 9750 2850 50  0001 C CNN
F 3 "" H 9750 2850 50  0001 C CNN
	1    9750 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 4250 8750 4350
Text GLabel 1050 5550 0    50   Input ~ 0
Vgenerator
$Comp
L power:GND #PWR0105
U 1 1 60C95AF8
P 1050 5750
F 0 "#PWR0105" H 1050 5500 50  0001 C CNN
F 1 "GND" H 1055 5577 50  0000 C CNN
F 2 "" H 1050 5750 50  0001 C CNN
F 3 "" H 1050 5750 50  0001 C CNN
	1    1050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5650 1050 5750
Text GLabel 800  3100 3    50   Input ~ 0
VgyratedCapa
Text GLabel 7300 3150 3    50   Input ~ 0
VgyratedIndu
$Comp
L power:GND #PWR0106
U 1 1 60CCCA9F
P 5650 2950
F 0 "#PWR0106" H 5650 2700 50  0001 C CNN
F 1 "GND" V 5655 2822 50  0000 R CNN
F 2 "" H 5650 2950 50  0001 C CNN
F 3 "" H 5650 2950 50  0001 C CNN
	1    5650 2950
	0    1    1    0   
$EndComp
Wire Notes Line
	550  1350 5200 1350
Wire Notes Line
	5250 3600 5250 2400
Text Notes 2250 1200 0    50   ~ 0
Adjustable Capacitor (gyrated)
Text Notes 9400 1200 0    50   ~ 0
Adjustable Inductor
Text Notes 5800 2300 0    50   ~ 0
Adjustable Resistor
Wire Wire Line
	10350 5450 10750 5450
$Comp
L power:GND #PWR0107
U 1 1 60CFF9CB
P 10750 5450
F 0 "#PWR0107" H 10750 5200 50  0001 C CNN
F 1 "GND" V 10755 5322 50  0000 R CNN
F 2 "" H 10750 5450 50  0001 C CNN
F 3 "" H 10750 5450 50  0001 C CNN
	1    10750 5450
	0    -1   -1   0   
$EndComp
Text GLabel 10350 5350 2    50   Input ~ 0
Vs++
Text GLabel 10350 5550 2    50   Input ~ 0
Vs--
Text GLabel 9750 3150 3    50   Input ~ 0
Vs--
Text GLabel 2250 2850 1    50   Input ~ 0
Vs++
Wire Wire Line
	2350 2350 1850 2350
Wire Wire Line
	9600 2400 9600 2950
Wire Wire Line
	8150 2400 8750 2400
Text GLabel 8000 2700 1    50   Input ~ 0
Vs--
Text GLabel 4400 2950 1    50   Input ~ 0
Vs++
Text GLabel 8850 2900 1    50   Input ~ 0
Vs++
Text GLabel 10250 3350 3    50   Input ~ 0
Vs++
Text GLabel 1050 3150 3    50   Input ~ 0
Vs--
Text GLabel 3200 3250 3    50   Input ~ 0
Vs--
Text GLabel 9950 3350 3    50   Input ~ 0
Vs--
$Comp
L SR215A102FARTR1:SR215A102FARTR1 C1_capa1
U 1 1 60D7F2B6
P 2550 3000
F 0 "C1_capa1" H 2800 3265 50  0000 C CNN
F 1 "SR215A 1nF" H 2800 3174 50  0000 C CNN
F 2 "SR215A102FARTR1" H 2900 3050 50  0001 L CNN
F 3 "http://datasheets.avx.com/SR-Series.pdf" H 2900 2950 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - Leaded 50V 1000pF C0G (NP0) 1 % 5.08 mm" H 2900 2850 50  0001 L CNN "Description"
F 5 "5.08" H 2900 2750 50  0001 L CNN "Height"
F 6 "AVX" H 2900 2650 50  0001 L CNN "Manufacturer_Name"
F 7 "SR215A102FARTR1" H 2900 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "581-SR215A102FARTR1" H 2900 2450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/AVX/SR215A102FARTR1?qs=tCBT9FU%252BYulSMsvVJzeFRA%3D%3D" H 2900 2350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2900 2250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2900 2150 50  0001 L CNN "Arrow Price/Stock"
	1    2550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2400 9600 2400
Wire Wire Line
	2350 2350 2350 3250
Wire Wire Line
	2350 4100 2350 4200
Wire Wire Line
	2350 3950 2350 4100
Connection ~ 2350 4100
Wire Wire Line
	3050 3000 3100 3000
Wire Wire Line
	3150 2250 2750 2250
Connection ~ 2750 1700
Wire Wire Line
	2750 2250 2750 1700
Wire Wire Line
	3150 2150 3100 2150
Wire Wire Line
	7300 2050 8900 2050
Wire Wire Line
	8900 2950 8900 2050
Wire Wire Line
	7300 2050 7300 2400
Wire Wire Line
	7450 2400 7300 2400
Connection ~ 7300 2400
Wire Wire Line
	7300 2400 7300 2900
Wire Wire Line
	8900 2050 9200 2050
Connection ~ 8900 2050
$Comp
L SamacSys_Parts:C330C105J5R5TA C2_indu1
U 1 1 60DEE461
P 10400 2400
F 0 "C2_indu1" H 10650 2665 50  0000 C CNN
F 1 "C330C105J5R5TA" H 10650 2574 50  0000 C CNN
F 2 "C330C105J5R5TA" H 10750 2450 50  0001 L CNN
F 3 "http://www.kemet.com/docfinder?Partnumber=C330C105J5R5TA" H 10750 2350 50  0001 L CNN
F 4 "Multilayer Ceramic Capacitors MLCC - Leaded C330 1uF 50volts X7R 5%" H 10750 2250 50  0001 L CNN "Description"
F 5 "9.14" H 10750 2150 50  0001 L CNN "Height"
F 6 "80-C330C105J5R" H 10750 2050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/KEMET/C330C105J5R5TA?qs=tsLHmx0p5v0BSq4SE%252BKGtQ%3D%3D" H 10750 1950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Kemet" H 10750 1850 50  0001 L CNN "Manufacturer_Name"
F 9 "C330C105J5R5TA" H 10750 1750 50  0001 L CNN "Manufacturer_Part_Number"
	1    10400 2400
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:CMF551K0000BHEB R4_indu1
U 1 1 60DF0382
P 8900 2950
F 0 "R4_indu1" H 9250 3175 50  0000 C CNN
F 1 "CMF551K0000BHEB" H 9250 3084 50  0000 C CNN
F 2 "RESAD1653W69L737D229" H 9450 3000 50  0001 L CNN
F 3 "http://www.vishay.com/docs/31018/cmfind.pdf" H 9450 2900 50  0001 L CNN
F 4 "Vishay CMF55 Series ceramic Axial Metal Film Resistor 1k +/-0.1% 0.125W +/-50ppm/C" H 9450 2800 50  0001 L CNN "Description"
F 5 "" H 9450 2700 50  0001 L CNN "Height"
F 6 "71-CMF551K0000BHEB" H 9450 2600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Dale/CMF551K0000BHEB?qs=BpFtYU5tmpsqeBzAgCoCMw%3D%3D" H 9450 2500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 9450 2400 50  0001 L CNN "Manufacturer_Name"
F 9 "CMF551K0000BHEB" H 9450 2300 50  0001 L CNN "Manufacturer_Part_Number"
	1    8900 2950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:MG660-500-1% R1_indu1
U 1 1 60DF14AA
P 8750 3400
F 0 "R1_indu1" V 9054 3488 50  0000 L CNN
F 1 "MG660-500-1%" V 9145 3488 50  0000 L CNN
F 2 "MG6605001" H 9300 3450 50  0001 L CNN
F 3 "https://www.mouser.es/datasheet/2/62/TypeMG-1279.pdf" H 9300 3350 50  0001 L CNN
F 4 "2.39x12.7" H 9300 3250 50  0001 L CNN "Description"
F 5 "2.77" H 9300 3150 50  0001 L CNN "Height"
F 6 "684-MG660-500-1%" H 9300 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Caddock/MG660-500-1/?qs=hE2b9RNHrswkmKDaVeR%252Bkg%3D%3D" H 9300 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Caddock" H 9300 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "MG660-500-1%" H 9300 2750 50  0001 L CNN "Manufacturer_Part_Number"
	1    8750 3400
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:MG660-500-1% R3_indu1
U 1 1 60DF4355
P 8150 2400
F 0 "R3_indu1" H 8500 2185 50  0000 C CNN
F 1 "MG660-500-1%" H 8500 2276 50  0000 C CNN
F 2 "MG6605001" H 8700 2450 50  0001 L CNN
F 3 "https://www.mouser.es/datasheet/2/62/TypeMG-1279.pdf" H 8700 2350 50  0001 L CNN
F 4 "2.39x12.7" H 8700 2250 50  0001 L CNN "Description"
F 5 "2.77" H 8700 2150 50  0001 L CNN "Height"
F 6 "684-MG660-500-1%" H 8700 2050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Caddock/MG660-500-1/?qs=hE2b9RNHrswkmKDaVeR%252Bkg%3D%3D" H 8700 1950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Caddock" H 8700 1850 50  0001 L CNN "Manufacturer_Name"
F 9 "MG660-500-1%" H 8700 1750 50  0001 L CNN "Manufacturer_Part_Number"
	1    8150 2400
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:CMF655K0000FKEB R3_capa1
U 1 1 60DF5B75
P 1150 2350
F 0 "R3_capa1" H 1500 2575 50  0000 C CNN
F 1 "CMF655K0000FKEB" H 1500 2484 50  0000 C CNN
F 2 "RESAD3573W69L1745D457" H 1700 2400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/CMF655K0000FKEB.pdf" H 1700 2300 50  0001 L CNN
F 4 "Metal Film Resistors - Through Hole 1.5W 5Kohms 1%" H 1700 2200 50  0001 L CNN "Description"
F 5 "" H 1700 2100 50  0001 L CNN "Height"
F 6 "71-CMF655K0000FKEB" H 1700 2000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Dale/CMF655K0000FKEB?qs=lPBU6YQ%252B5gjWJMmTFIh77g%3D%3D" H 1700 1900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 1700 1800 50  0001 L CNN "Manufacturer_Name"
F 9 "CMF655K0000FKEB" H 1700 1700 50  0001 L CNN "Manufacturer_Part_Number"
	1    1150 2350
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:CMF655K0000FKEB R5_capa1
U 1 1 60DFB35E
P 1850 1700
F 0 "R5_capa1" H 2200 1925 50  0000 C CNN
F 1 "CMF655K0000FKEB" H 2200 1834 50  0000 C CNN
F 2 "RESAD3573W69L1745D457" H 2400 1750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/CMF655K0000FKEB.pdf" H 2400 1650 50  0001 L CNN
F 4 "Metal Film Resistors - Through Hole 1.5W 5Kohms 1%" H 2400 1550 50  0001 L CNN "Description"
F 5 "" H 2400 1450 50  0001 L CNN "Height"
F 6 "71-CMF655K0000FKEB" H 2400 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Vishay-Dale/CMF655K0000FKEB?qs=lPBU6YQ%252B5gjWJMmTFIh77g%3D%3D" H 2400 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Vishay" H 2400 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "CMF655K0000FKEB" H 2400 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:MFR3-10KFC R1_capa1
U 1 1 60DFC447
P 2350 3250
F 0 "R1_capa1" V 2654 3338 50  0000 L CNN
F 1 "MFR3-10KFC" V 2745 3338 50  0000 L CNN
F 2 "RESAD1170W45L370D200" H 2900 3300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/MFR3-10KFC.pdf" H 2900 3200 50  0001 L CNN
F 4 "Metal Film Resistors - Through Hole 10K ohm 1% 0.4W" H 2900 3100 50  0001 L CNN "Description"
F 5 "" H 2900 3000 50  0001 L CNN "Height"
F 6 "" H 2900 2900 50  0001 L CNN "Mouser Part Number"
F 7 "" H 2900 2800 50  0001 L CNN "Mouser Price/Stock"
F 8 "TT ELECTRONICS / WELWYN" H 2900 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "MFR3-10KFC" H 2900 2600 50  0001 L CNN "Manufacturer_Part_Number"
	1    2350 3250
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:MFR3-10KFC R2_capa1
U 1 1 60DFE731
P 2350 4200
F 0 "R2_capa1" V 2654 4288 50  0000 L CNN
F 1 "MFR3-10KFC" V 2745 4288 50  0000 L CNN
F 2 "RESAD1170W45L370D200" H 2900 4250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/MFR3-10KFC.pdf" H 2900 4150 50  0001 L CNN
F 4 "Metal Film Resistors - Through Hole 10K ohm 1% 0.4W" H 2900 4050 50  0001 L CNN "Description"
F 5 "" H 2900 3950 50  0001 L CNN "Height"
F 6 "" H 2900 3850 50  0001 L CNN "Mouser Part Number"
F 7 "" H 2900 3750 50  0001 L CNN "Mouser Price/Stock"
F 8 "TT ELECTRONICS / WELWYN" H 2900 3650 50  0001 L CNN "Manufacturer_Name"
F 9 "MFR3-10KFC" H 2900 3550 50  0001 L CNN "Manufacturer_Part_Number"
	1    2350 4200
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:PTV09A-4015U-B503 R4_capa1
U 1 1 60DFF404
P 3150 2150
F 0 "R4_capa1" H 3700 2415 50  0000 C CNN
F 1 "PTV09A-4015U-B503" H 3700 2324 50  0000 C CNN
F 2 "PTV09A4015UB503" H 4100 2250 50  0001 L CNN
F 3 "https://www.bourns.com/docs/product-datasheets/PTV09.pdf" H 4100 2150 50  0001 L CNN
F 4 "Potentiometers PANEL CONTROL - 9MM-ST-CA 50 kohms 15 mm" H 4100 2050 50  0001 L CNN "Description"
F 5 "15.5" H 4100 1950 50  0001 L CNN "Height"
F 6 "652-PTV09A-4015UB503" H 4100 1850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTV09A-4015U-B503?qs=pxDZlBjcsChjgaXxrSM7Lg%3D%3D" H 4100 1750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 4100 1650 50  0001 L CNN "Manufacturer_Name"
F 9 "PTV09A-4015U-B503" H 4100 1550 50  0001 L CNN "Manufacturer_Part_Number"
	1    3150 2150
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:10129378-903001BLF conn_2
U 1 1 60E01719
P 10350 5550
F 0 "conn_2" H 10642 5085 50  0000 C CNN
F 1 "10129378-903001BLF" H 10642 5176 50  0000 C CNN
F 2 "HDRV3W67P0X254_1X3_762X241X858P" H 11000 5650 50  0001 L CNN
F 3 "" H 11000 5550 50  0001 L CNN
F 4 "HEADER SR VT TH 1X3" H 11000 5450 50  0001 L CNN "Description"
F 5 "8.58" H 11000 5350 50  0001 L CNN "Height"
F 6 "649-1012937890301BLF" H 11000 5250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Amphenol-FCI/10129378-903001BLF?qs=0lQeLiL1qybuYTJnitumiA%3D%3D" H 11000 5150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Amphenol" H 11000 5050 50  0001 L CNN "Manufacturer_Name"
F 9 "10129378-903001BLF" H 11000 4950 50  0001 L CNN "Manufacturer_Part_Number"
	1    10350 5550
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:FP12SPC1B1TP00 S1
U 1 1 60E080B3
P 3550 5500
F 0 "S1" H 4200 5765 50  0000 C CNN
F 1 "FP12SPC1B1TP00" H 4200 5674 50  0000 C CNN
F 2 "FP12SPC1B1TP00" H 4700 5600 50  0001 L CNN
F 3 "" H 4700 5500 50  0001 L CNN
F 4 "Pushbutton Switches SPDT N.O. STD plunger, Vertical, No CAP" H 4700 5400 50  0001 L CNN "Description"
F 5 "10.5" H 4700 5300 50  0001 L CNN "Height"
F 6 "611-FP12SPC1B1TP00" H 4700 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CK/FP12SPC1B1TP00?qs=GedFDFLaBXHjZqD4Rlpjfw%3D%3D" H 4700 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "C & K COMPONENTS" H 4700 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "FP12SPC1B1TP00" H 4700 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    3550 5500
	1    0    0    -1  
$EndComp
Text GLabel 3550 5600 0    50   Input ~ 0
Vgenerator
Text GLabel 3550 5700 0    50   Output ~ 0
VgyratedCapa
$Comp
L SamacSys_Parts:FP12SPC1B1TP00 S2
U 1 1 60E096D3
P 5500 5450
F 0 "S2" H 6150 5715 50  0000 C CNN
F 1 "FP12SPC1B1TP00" H 6150 5624 50  0000 C CNN
F 2 "FP12SPC1B1TP00" H 6650 5550 50  0001 L CNN
F 3 "" H 6650 5450 50  0001 L CNN
F 4 "Pushbutton Switches SPDT N.O. STD plunger, Vertical, No CAP" H 6650 5350 50  0001 L CNN "Description"
F 5 "10.5" H 6650 5250 50  0001 L CNN "Height"
F 6 "611-FP12SPC1B1TP00" H 6650 5150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CK/FP12SPC1B1TP00?qs=GedFDFLaBXHjZqD4Rlpjfw%3D%3D" H 6650 5050 50  0001 L CNN "Mouser Price/Stock"
F 8 "C & K COMPONENTS" H 6650 4950 50  0001 L CNN "Manufacturer_Name"
F 9 "FP12SPC1B1TP00" H 6650 4850 50  0001 L CNN "Manufacturer_Part_Number"
	1    5500 5450
	1    0    0    -1  
$EndComp
Text GLabel 5500 5550 0    50   Input ~ 0
Vgenerator
Text GLabel 5500 5650 0    50   Output ~ 0
VgyratedIndu
$Comp
L SamacSys_Parts:FP12SPC1B1TP00 S3
U 1 1 60E0D233
P 7850 5500
F 0 "S3" H 8500 5765 50  0000 C CNN
F 1 "FP12SPC1B1TP00" H 8500 5674 50  0000 C CNN
F 2 "FP12SPC1B1TP00" H 9000 5600 50  0001 L CNN
F 3 "" H 9000 5500 50  0001 L CNN
F 4 "Pushbutton Switches SPDT N.O. STD plunger, Vertical, No CAP" H 9000 5400 50  0001 L CNN "Description"
F 5 "10.5" H 9000 5300 50  0001 L CNN "Height"
F 6 "611-FP12SPC1B1TP00" H 9000 5200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CK/FP12SPC1B1TP00?qs=GedFDFLaBXHjZqD4Rlpjfw%3D%3D" H 9000 5100 50  0001 L CNN "Mouser Price/Stock"
F 8 "C & K COMPONENTS" H 9000 5000 50  0001 L CNN "Manufacturer_Name"
F 9 "FP12SPC1B1TP00" H 9000 4900 50  0001 L CNN "Manufacturer_Part_Number"
	1    7850 5500
	1    0    0    -1  
$EndComp
Text GLabel 7850 5600 0    50   Input ~ 0
Vgenerator
Text GLabel 7850 5700 0    50   Output ~ 0
Vresistor
NoConn ~ 3150 2350
NoConn ~ 4250 2150
NoConn ~ 4250 2250
NoConn ~ 4850 5500
NoConn ~ 4850 5600
NoConn ~ 9150 5500
NoConn ~ 9150 5600
NoConn ~ 9950 2750
Wire Wire Line
	10250 2750 10250 2700
Wire Wire Line
	8750 4100 8750 4250
Connection ~ 8750 4250
NoConn ~ 6800 5450
NoConn ~ 6800 5550
Wire Wire Line
	8000 2700 8000 2750
NoConn ~ 8750 4450
Text GLabel 5850 2550 2    50   Input ~ 0
Vresistor
NoConn ~ 5650 3050
$Comp
L SamacSys_Parts:OPA548TG3 IC1
U 1 1 60E5E8BF
P 1050 2850
F 0 "IC1" H 1650 3115 50  0000 C CNN
F 1 "OPA548TG3" H 1650 3024 50  0000 C CNN
F 2 "TO127P470X1016X2195-7P" H 2100 2950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa548.pdf" H 2100 2850 50  0001 L CNN
F 4 "OP Amp Single GP 30V/60V 7-Pin D2PAK" H 2100 2750 50  0001 L CNN "Description"
F 5 "4.7" H 2100 2650 50  0001 L CNN "Height"
F 6 "595-OPA548TG3" H 2100 2550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/OPA548TG3?qs=wgAEGBTxy7kacmUoGWhX2g%3D%3D" H 2100 2450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 2100 2350 50  0001 L CNN "Manufacturer_Name"
F 9 "OPA548TG3" H 2100 2250 50  0001 L CNN "Manufacturer_Part_Number"
	1    1050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2400 8750 3300
$Comp
L SamacSys_Parts:OPA548TG3 IC2
U 1 1 60E64515
P 3200 2950
F 0 "IC2" H 3800 3215 50  0000 C CNN
F 1 "OPA548TG3" H 3800 3124 50  0000 C CNN
F 2 "TO127P470X1016X2195-7P" H 4250 3050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa548.pdf" H 4250 2950 50  0001 L CNN
F 4 "OP Amp Single GP 30V/60V 7-Pin D2PAK" H 4250 2850 50  0001 L CNN "Description"
F 5 "4.7" H 4250 2750 50  0001 L CNN "Height"
F 6 "595-OPA548TG3" H 4250 2650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/OPA548TG3?qs=wgAEGBTxy7kacmUoGWhX2g%3D%3D" H 4250 2550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 4250 2450 50  0001 L CNN "Manufacturer_Name"
F 9 "OPA548TG3" H 4250 2350 50  0001 L CNN "Manufacturer_Part_Number"
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:OPA548TG3 IC3
U 1 1 60E664C9
P 7650 2900
F 0 "IC3" H 8250 3165 50  0000 C CNN
F 1 "OPA548TG3" H 8250 3074 50  0000 C CNN
F 2 "TO127P470X1016X2195-7P" H 8700 3000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa548.pdf" H 8700 2900 50  0001 L CNN
F 4 "OP Amp Single GP 30V/60V 7-Pin D2PAK" H 8700 2800 50  0001 L CNN "Description"
F 5 "4.7" H 8700 2700 50  0001 L CNN "Height"
F 6 "595-OPA548TG3" H 8700 2600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/OPA548TG3?qs=wgAEGBTxy7kacmUoGWhX2g%3D%3D" H 8700 2500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 8700 2400 50  0001 L CNN "Manufacturer_Name"
F 9 "OPA548TG3" H 8700 2300 50  0001 L CNN "Manufacturer_Part_Number"
	1    7650 2900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:OPA548TG3 IC4
U 1 1 60E66E9A
P 9750 2850
F 0 "IC4" H 10350 3115 50  0000 C CNN
F 1 "OPA548TG3" H 10350 3024 50  0000 C CNN
F 2 "TO127P470X1016X2195-7P" H 10800 2950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa548.pdf" H 10800 2850 50  0001 L CNN
F 4 "OP Amp Single GP 30V/60V 7-Pin D2PAK" H 10800 2750 50  0001 L CNN "Description"
F 5 "4.7" H 10800 2650 50  0001 L CNN "Height"
F 6 "595-OPA548TG3" H 10800 2550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/OPA548TG3?qs=wgAEGBTxy7kacmUoGWhX2g%3D%3D" H 10800 2450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 10800 2350 50  0001 L CNN "Manufacturer_Name"
F 9 "OPA548TG3" H 10800 2250 50  0001 L CNN "Manufacturer_Part_Number"
	1    9750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2950 900  2950
Wire Wire Line
	900  2950 900  4100
Wire Wire Line
	900  4100 2350 4100
Wire Wire Line
	3100 2150 3100 3000
Wire Wire Line
	2250 2950 2550 2950
Wire Wire Line
	2550 2950 2550 3000
Wire Wire Line
	3200 3050 3100 3050
Wire Wire Line
	3100 3050 3100 3000
Connection ~ 3100 3000
Wire Wire Line
	4400 3050 4500 3050
Wire Wire Line
	4500 3050 4500 1700
Wire Wire Line
	2750 1700 4500 1700
Wire Wire Line
	3200 3150 3200 3250
Wire Wire Line
	1050 3050 1050 3150
NoConn ~ 4400 3150
NoConn ~ 2250 3050
NoConn ~ 8850 3100
NoConn ~ 10950 3050
Text GLabel 9750 3050 0    50   Input ~ 0
Vs--
Wire Wire Line
	7450 4250 7450 3000
Wire Wire Line
	7450 3000 7650 3000
Wire Wire Line
	7450 4250 8750 4250
Wire Wire Line
	7650 2900 7300 2900
Connection ~ 7300 2900
Wire Wire Line
	7300 2900 7300 3150
Text GLabel 7650 3200 0    50   Input ~ 0
Vs--
Text GLabel 7650 3100 0    50   Input ~ 0
Vs--
Wire Wire Line
	8850 3000 8950 3000
Wire Wire Line
	8950 3000 8950 3300
Wire Wire Line
	8950 3300 8750 3300
Connection ~ 8750 3300
Wire Wire Line
	8750 3300 8750 3400
Text GLabel 10950 2850 1    50   Input ~ 0
Vs++
Wire Wire Line
	9750 2950 9600 2950
Connection ~ 9600 2950
$Comp
L SamacSys_Parts:10129378-902001BLF conn_1
U 1 1 60E875F9
P 1050 5550
F 0 "conn_1" H 1350 5800 50  0000 L CNN
F 1 "10129378-902001BLF" H 1678 5455 50  0000 L CNN
F 2 "HDRV2W67P0X254_1X2_508X241X843P" H 1700 5650 50  0001 L CNN
F 3 "https://www.mouser.co.uk/datasheet/2/18/10129378-1530218.pdf" H 1700 5550 50  0001 L CNN
F 4 "Vertical header straight" H 1700 5450 50  0001 L CNN "Description"
F 5 "8.43" H 1700 5350 50  0001 L CNN "Height"
F 6 "649-1012937890201BLF" H 1700 5250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Amphenol-FCI/10129378-902001BLF?qs=0lQeLiL1qybv6C1q0T3%2FPw%3D%3D" H 1700 5150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Amphenol" H 1700 5050 50  0001 L CNN "Manufacturer_Name"
F 9 "10129378-902001BLF" H 1700 4950 50  0001 L CNN "Manufacturer_Part_Number"
	1    1050 5550
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:93R1A-R22-A12L R2_indu1
U 1 1 60EA026B
P 8750 4350
F 0 "R2_indu1" H 9300 4615 50  0000 C CNN
F 1 "93R1A-R22-A12L" H 9300 4524 50  0000 C CNN
F 2 "93R1AR22A12L" H 9700 4450 50  0001 L CNN
F 3 "" H 9700 4350 50  0001 L CNN
F 4 "Bourns 93 Series Panel Mount, Through Hole Cermet Trimmer Resistor with Pin Terminations, 2.5k +/-10% 2W +/-150ppm/C" H 9700 4250 50  0001 L CNN "Description"
F 5 "17.45" H 9700 4150 50  0001 L CNN "Height"
F 6 "652-93R1A-R22-A12L" H 9700 4050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/93R1A-R22-A12L?qs=iuQ%252BhjgTeiiwIJe4aEq5DA%3D%3D" H 9700 3950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 9700 3850 50  0001 L CNN "Manufacturer_Name"
F 9 "93R1A-R22-A12L" H 9700 3750 50  0001 L CNN "Manufacturer_Part_Number"
	1    8750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60C527DB
P 9850 4350
F 0 "#PWR0103" H 9850 4100 50  0001 C CNN
F 1 "GND" V 9855 4222 50  0000 R CNN
F 2 "" H 9850 4350 50  0001 C CNN
F 3 "" H 9850 4350 50  0001 C CNN
	1    9850 4350
	0    -1   -1   0   
$EndComp
NoConn ~ 9200 2150
Wire Notes Line
	7150 2400 7150 3600
Wire Notes Line
	5250 3600 7150 3600
Wire Notes Line
	5250 2400 7150 2400
Wire Wire Line
	10300 2050 11050 2050
Wire Wire Line
	11050 2050 11050 2400
Wire Wire Line
	11050 2950 10950 2950
Wire Wire Line
	10900 2400 11050 2400
Connection ~ 11050 2400
Wire Wire Line
	11050 2400 11050 2950
Wire Notes Line
	7200 5000 11150 5000
Wire Notes Line
	11150 1350 11150 5000
Wire Notes Line
	7200 1350 11150 1350
Wire Notes Line
	7200 1350 7200 5000
Wire Wire Line
	800  1700 800  2350
Wire Wire Line
	800  1700 1850 1700
Wire Wire Line
	800  2850 1050 2850
Connection ~ 800  2850
Wire Wire Line
	800  2850 800  3100
Wire Wire Line
	800  2350 1150 2350
Connection ~ 800  2350
Wire Wire Line
	800  2350 800  2850
Wire Notes Line
	5200 5000 550  5000
Wire Notes Line
	5200 1350 5200 5000
Wire Notes Line
	550  1350 550  5000
$Comp
L SamacSys_Parts:96R1A-R16-A15L R5_indu1
U 1 1 60EFC8C6
P 9200 1950
F 0 "R5_indu1" H 9400 2200 50  0000 L CNN
F 1 "96R1A-R16-A15L" H 9400 2100 50  0000 L CNN
F 2 "96R1AR16A15L" H 10050 2050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/96R1A-R16-A15L.pdf" H 10050 1950 50  0001 L CNN
F 4 "Bourns Conductive Plastic Potentiometer with a 6 mm Dia. Shaft 10k +/-10% 2W +/-150ppm/C, Linear, Panel Mount" H 10050 1850 50  0001 L CNN "Description"
F 5 "17.45" H 10050 1750 50  0001 L CNN "Height"
F 6 "652-96R1A-R16-A15L" H 10050 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/96R1A-R16-A15L?qs=iuQ%252BhjgTeig0Okk2%252Boma3A%3D%3D" H 10050 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 10050 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "96R1A-R16-A15L" H 10050 1350 50  0001 L CNN "Manufacturer_Part_Number"
	1    9200 1950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:96R1A-R16-A15L R_var1
U 1 1 60EFEC04
P 5650 2850
F 0 "R_var1" H 6478 2796 50  0000 L CNN
F 1 "96R1A-R16-A15L" H 6478 2705 50  0000 L CNN
F 2 "96R1AR16A15L" H 6500 2950 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/96R1A-R16-A15L.pdf" H 6500 2850 50  0001 L CNN
F 4 "Bourns Conductive Plastic Potentiometer with a 6 mm Dia. Shaft 10k +/-10% 2W +/-150ppm/C, Linear, Panel Mount" H 6500 2750 50  0001 L CNN "Description"
F 5 "17.45" H 6500 2650 50  0001 L CNN "Height"
F 6 "652-96R1A-R16-A15L" H 6500 2550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/96R1A-R16-A15L?qs=iuQ%252BhjgTeig0Okk2%252Boma3A%3D%3D" H 6500 2450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 6500 2350 50  0001 L CNN "Manufacturer_Name"
F 9 "96R1A-R16-A15L" H 6500 2250 50  0001 L CNN "Manufacturer_Part_Number"
	1    5650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2850 5650 2550
Wire Wire Line
	5650 2550 5850 2550
Wire Wire Line
	10300 1650 9200 1650
Wire Wire Line
	9200 1650 9200 1950
Wire Wire Line
	10300 1650 10300 2050
$EndSCHEMATC
