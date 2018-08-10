EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U2
U 1 1 5BD4771C
P 4900 1650
F 0 "U2" H 4370 1696 50  0000 R CNN
F 1 "ATtiny13A-PU" H 4370 1605 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4900 1650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 4900 1650 50  0001 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM78L05_SO8 U1
U 1 1 5BD47829
P 1900 1200
F 0 "U1" H 1900 1442 50  0000 C CNN
F 1 "LM78L05_SO8" H 1900 1351 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2000 1400 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78L05A.pdf" H 2100 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5BD479FD
P 1100 1350
F 0 "C4" H 1215 1396 50  0000 L CNN
F 1 "370-470nF" H 1215 1305 50  0000 L CNN
F 2 "" H 1138 1200 50  0001 C CNN
F 3 "~" H 1100 1350 50  0001 C CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5BD47B5C
P 1100 1200
F 0 "#PWR?" H 1100 1050 50  0001 C CNN
F 1 "+BATT" H 1115 1373 50  0000 C CNN
F 2 "" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1200 1600 1200
Connection ~ 1100 1200
$Comp
L power:-BATT #PWR?
U 1 1 5BD47BF1
P 1900 1500
F 0 "#PWR?" H 1900 1350 50  0001 C CNN
F 1 "-BATT" H 1915 1673 50  0000 C CNN
F 2 "" H 1900 1500 50  0001 C CNN
F 3 "" H 1900 1500 50  0001 C CNN
	1    1900 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 1500 1900 1500
Connection ~ 1900 1500
$Comp
L Device:C C1
U 1 1 5BD47C79
P 2350 1350
F 0 "C1" H 2465 1396 50  0000 L CNN
F 1 "22μF" H 2465 1305 50  0000 L CNN
F 2 "" H 2388 1200 50  0001 C CNN
F 3 "~" H 2350 1350 50  0001 C CNN
	1    2350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1500 2350 1500
Wire Wire Line
	2200 1200 2350 1200
$Comp
L power:+5V #PWR?
U 1 1 5BD47DCE
P 2350 1200
F 0 "#PWR?" H 2350 1050 50  0001 C CNN
F 1 "+5V" H 2365 1373 50  0000 C CNN
F 2 "" H 2350 1200 50  0001 C CNN
F 3 "" H 2350 1200 50  0001 C CNN
	1    2350 1200
	1    0    0    -1  
$EndComp
Connection ~ 2350 1200
$Comp
L Device:C C2
U 1 1 5BD47E61
P 4600 1000
F 0 "C2" V 4348 1000 50  0000 C CNN
F 1 "100nF" V 4439 1000 50  0000 C CNN
F 2 "" H 4638 850 50  0001 C CNN
F 3 "~" H 4600 1000 50  0001 C CNN
	1    4600 1000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BD48004
P 4900 950
F 0 "#PWR?" H 4900 800 50  0001 C CNN
F 1 "+5V" H 4915 1123 50  0000 C CNN
F 2 "" H 4900 950 50  0001 C CNN
F 3 "" H 4900 950 50  0001 C CNN
	1    4900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5BD48029
P 4450 1000
F 0 "#PWR?" H 4450 850 50  0001 C CNN
F 1 "-BATT" V 4465 1127 50  0000 L CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	0    -1   -1   0   
$EndComp
Text Notes 3900 850  0    50   ~ 0
Close to body
Wire Wire Line
	4900 950  4900 1000
Wire Wire Line
	4900 1000 4750 1000
Connection ~ 4900 1000
Wire Wire Line
	4900 1000 4900 1050
$Comp
L power:-BATT #PWR?
U 1 1 5BD4819E
P 4900 2250
F 0 "#PWR?" H 4900 2100 50  0001 C CNN
F 1 "-BATT" H 4915 2423 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:BUZ10L Q1
U 1 1 5BD4820E
P 6600 1350
F 0 "Q1" H 6805 1396 50  0000 L CNN
F 1 "BUZ10L" H 6805 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6850 1275 50  0001 L CIN
F 3 "" H 6600 1350 50  0001 L CNN
	1    6600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1350 5500 1350
$Comp
L power:+BATT #PWR?
U 1 1 5BD484E3
P 6700 1150
F 0 "#PWR?" H 6700 1000 50  0001 C CNN
F 1 "+BATT" H 6715 1323 50  0000 C CNN
F 2 "" H 6700 1150 50  0001 C CNN
F 3 "" H 6700 1150 50  0001 C CNN
	1    6700 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L1
U 1 1 5BD485DE
P 6700 1800
F 0 "L1" H 6787 1846 50  0000 L CNN
F 1 " " H 6787 1755 50  0000 L CNN
F 2 "" H 6700 1800 50  0001 C CNN
F 3 "~" H 6700 1800 50  0001 C CNN
	1    6700 1800
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5BD486BD
P 6700 2050
F 0 "#PWR?" H 6700 1900 50  0001 C CNN
F 1 "-BATT" H 6715 2223 50  0000 C CNN
F 2 "" H 6700 2050 50  0001 C CNN
F 3 "" H 6700 2050 50  0001 C CNN
	1    6700 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5BD488D4
P 7300 2000
F 0 "D1" H 7300 1784 50  0000 C CNN
F 1 "D_Schottky" H 7300 1875 50  0000 C CNN
F 2 "" H 7300 2000 50  0001 C CNN
F 3 "~" H 7300 2000 50  0001 C CNN
	1    7300 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 2000 7150 2000
Wire Wire Line
	6700 1950 6700 2000
Wire Wire Line
	6700 2000 6700 2050
Connection ~ 6700 2000
Wire Wire Line
	6700 1550 6700 1600
$Comp
L Device:CP C3
U 1 1 5BD4911D
P 7700 1800
F 0 "C3" H 7582 1754 50  0000 R CNN
F 1 "10μF" H 7582 1845 50  0000 R CNN
F 2 "" H 7738 1650 50  0001 C CNN
F 3 "~" H 7700 1800 50  0001 C CNN
	1    7700 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 2000 7700 2000
Wire Wire Line
	6700 1600 7700 1600
Connection ~ 6700 1600
Wire Wire Line
	6700 1600 6700 1650
Wire Wire Line
	7700 1600 7700 1650
Wire Wire Line
	7700 1950 7700 2000
Wire Wire Line
	7700 1600 8300 1600
Connection ~ 7700 1600
Wire Wire Line
	7700 2000 8300 2000
Connection ~ 7700 2000
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5BD4A174
P 8300 1600
F 0 "TP1" H 8453 1702 50  0000 L CNN
F 1 " " H 8453 1611 50  0000 L CNN
F 2 "" H 8500 1600 50  0001 C CNN
F 3 "~" H 8500 1600 50  0001 C CNN
	1    8300 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5BD4A273
P 8300 2000
F 0 "TP2" H 8453 2102 50  0000 L CNN
F 1 " " H 8453 2011 50  0000 L CNN
F 2 "" H 8500 2000 50  0001 C CNN
F 3 "~" H 8500 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Text Notes 7050 6750 0    100  ~ 0
Inductive voltage step-upper
$EndSCHEMATC
