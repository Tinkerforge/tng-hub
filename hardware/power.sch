EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "TNG HUB"
Date "2020-09-04"
Rev "1.1"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2020, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L tinkerforge:VCCPWR #PWR0219
U 1 1 5BB11E9F
P 6400 1550
F 0 "#PWR0219" H 6400 1400 50  0001 C CNN
F 1 "VCCPWR" H 6417 1723 50  0000 C CNN
F 2 "" H 6400 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2150 1750 2150
$Comp
L tinkerforge:Earth #PWR0202
U 1 1 5BB125EE
P 1650 2250
F 0 "#PWR0202" H 1650 2250 30  0001 C CNN
F 1 "Earth" H 1650 2180 30  0001 C CNN
F 2 "" H 1650 2250 60  0000 C CNN
F 3 "" H 1650 2250 60  0000 C CNN
	1    1650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2250 1650 2250
$Comp
L tinkerforge:CONN_4 P202
U 1 1 5AFDE3AC
P 1050 2100
F 0 "P202" V 1000 2100 50  0000 C CNN
F 1 "PWR IN" V 1100 2100 50  0000 C CNN
F 2 "OQ_4P" H 1050 2100 60  0001 C CNN
F 3 "" H 1050 2100 60  0000 C CNN
	1    1050 2100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:+5V #PWR0225
U 1 1 5D921A34
P 8600 4750
F 0 "#PWR0225" H 8600 4600 50  0001 C CNN
F 1 "+5V" H 8615 4923 50  0000 C CNN
F 2 "" H 8600 4750 50  0000 C CNN
F 3 "" H 8600 4750 50  0000 C CNN
	1    8600 4750
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:TVS D201
U 1 1 5EF93E96
P 2100 2100
F 0 "D201" V 1950 2100 40  0000 L CNN
F 1 "3.0SMI30CATR" H 2050 2200 40  0000 L CNN
F 2 "kicad-libraries:SMC" H 2100 2100 60  0001 C CNN
F 3 "" H 2100 2100 60  0000 C CNN
	1    2100 2100
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Varistor R204
U 1 1 5EF9407E
P 2350 2100
F 0 "R204" H 2350 2300 50  0000 L CNN
F 1 "VC1206K201R030" V 2450 1550 50  0000 L CNN
F 2 "R1206" H 2350 2100 60  0001 C CNN
F 3 "" H 2350 2100 60  0000 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:CHOKE_CM T201
U 1 1 5EF94123
P 4250 2100
F 0 "T201" H 4250 1300 70  0000 C CNN
F 1 "744272251" H 4250 1450 70  0000 C CNN
F 2 "WE-SL5" H 4250 2100 60  0001 C CNN
F 3 "" H 4250 2100 60  0000 C CNN
	1    4250 2100
	1    0    0    1   
$EndComp
$Comp
L tinkerforge:C C206
U 1 1 5EF941F7
P 2950 1850
F 0 "C206" H 2750 1950 50  0000 L CNN
F 1 "1nF 2kV" V 3000 1900 50  0000 L CNN
F 2 "C1206" H 3080 1759 60  0001 L CNN
F 3 "" H 2950 1850 60  0000 C CNN
	1    2950 1850
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:C C207
U 1 1 5EF942FE
P 2950 2350
F 0 "C207" H 2750 2450 50  0000 L CNN
F 1 "1nF 2kV" V 3000 2000 50  0000 L CNN
F 2 "C1206" H 2950 2350 60  0001 C CNN
F 3 "" H 2950 2350 60  0000 C CNN
	1    2950 2350
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Earth #PWR0210
U 1 1 5EF9432A
P 3550 2100
F 0 "#PWR0210" H 3550 2100 30  0001 C CNN
F 1 "Earth" H 3550 2030 30  0001 C CNN
F 2 "" H 3550 2100 60  0000 C CNN
F 3 "" H 3550 2100 60  0000 C CNN
	1    3550 2100
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:C C204
U 1 1 5EF94353
P 2650 2050
F 0 "C204" H 2650 2200 50  0000 L CNN
F 1 "10nF" V 2800 2000 50  0000 L CNN
F 2 "C1206" H 2650 2050 60  0001 C CNN
F 3 "" H 2650 2050 60  0000 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2050 1750 2050
$Comp
L tinkerforge:Varistor R206
U 1 1 5EF94B5D
P 3250 1800
F 0 "R206" H 3100 2000 50  0000 L CNN
F 1 "VC1206K201R030" V 3350 1650 50  0000 L CNN
F 2 "R1206" H 3250 1800 60  0001 C CNN
F 3 "" H 3250 1800 60  0000 C CNN
	1    3250 1800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Varistor R207
U 1 1 5EF94BD7
P 3250 2400
F 0 "R207" H 3100 2650 50  0000 L CNN
F 1 "VC1206K201R030" V 3350 1850 50  0000 L CNN
F 2 "R1206" H 3250 2400 60  0001 C CNN
F 3 "" H 3250 2400 60  0000 C CNN
	1    3250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2650 2950 2650
Wire Wire Line
	1750 2150 1750 2650
Wire Wire Line
	2100 2350 2100 2650
Connection ~ 2100 2650
Wire Wire Line
	2100 2650 1750 2650
Wire Wire Line
	1750 1550 2100 1550
Wire Wire Line
	1750 1550 1750 2050
Wire Wire Line
	2950 1650 2950 1550
Connection ~ 2950 1550
Wire Wire Line
	2950 1550 3250 1550
Wire Wire Line
	2350 1850 2350 1550
Wire Wire Line
	2350 2350 2350 2650
Wire Wire Line
	2350 2650 2100 2650
Wire Wire Line
	2100 1850 2100 1550
Connection ~ 2100 1550
Wire Wire Line
	2100 1550 2350 1550
Wire Wire Line
	2950 2550 2950 2650
Connection ~ 2950 2650
Wire Wire Line
	2950 2150 2950 2100
Wire Wire Line
	2950 2100 3250 2100
Wire Wire Line
	3250 2100 3250 2050
Connection ~ 2950 2100
Wire Wire Line
	2950 2100 2950 2050
Wire Wire Line
	3250 2150 3250 2100
Connection ~ 3250 2100
$Comp
L tinkerforge:R R209
U 1 1 5EF955F6
P 3500 2400
F 0 "R209" H 3571 2446 50  0000 L CNN
F 1 "1M" H 3571 2355 50  0000 L CNN
F 2 "R1206" H 3571 2309 60  0001 L CNN
F 3 "" H 3500 2400 60  0000 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2650 3500 2650
Connection ~ 3250 2650
Wire Wire Line
	3500 2150 3500 2100
Wire Wire Line
	3500 2100 3250 2100
Wire Wire Line
	3550 2100 3500 2100
Connection ~ 3500 2100
Wire Wire Line
	2350 1550 2650 1550
Connection ~ 2350 1550
Wire Wire Line
	2350 2650 2650 2650
Connection ~ 2350 2650
Wire Wire Line
	2650 2650 2650 2250
Connection ~ 2650 2650
Wire Wire Line
	2650 2650 2950 2650
Wire Wire Line
	2650 1850 2650 1550
Connection ~ 2650 1550
Wire Wire Line
	2650 1550 2950 1550
Connection ~ 3250 1550
Connection ~ 3500 2650
Text Notes 4000 2900 0    50   ~ 0
z.B.:\n744272251\nmax 2.0A 0.25mH
Wire Wire Line
	4900 1550 4900 1900
Wire Wire Line
	4900 2650 4900 2300
$Comp
L tinkerforge:DIODESCH D205
U 1 1 5EF9E0CC
P 5250 1550
F 0 "D205" H 5250 1743 40  0000 C CNN
F 1 "PMEG6045" H 5250 1667 40  0000 C CNN
F 2 "SOD-128" H 5250 1682 60  0001 C CNN
F 3 "" H 5250 1550 60  0000 C CNN
	1    5250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 4900 1550
Connection ~ 4900 1550
$Comp
L tinkerforge:CP1 C212
U 1 1 5EFA220C
P 5450 2100
F 0 "C212" H 5250 2150 50  0000 L CNN
F 1 "UWT1H221MNL1GS" V 5600 1700 50  0000 L CNN
F 2 "kicad-libraries:ELKO_103" H 5450 2100 60  0001 C CNN
F 3 "" H 5450 2100 60  0000 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2300 5850 2650
$Comp
L tinkerforge:C C211
U 1 1 5EFAB46E
P 4900 2100
F 0 "C211" H 4900 2250 50  0000 L CNN
F 1 "10nF" V 5050 2050 50  0000 L CNN
F 2 "C1206" H 4900 2100 60  0001 C CNN
F 3 "" H 4900 2100 60  0000 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:CP1 C213
U 1 1 5EFADD31
P 5850 2100
F 0 "C213" H 5650 2150 50  0000 L CNN
F 1 "UWT1H221MNL1GS" V 6000 1700 50  0000 L CNN
F 2 "kicad-libraries:ELKO_103" H 5850 2100 60  0001 C CNN
F 3 "" H 5850 2100 60  0000 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2650 5450 2650
Connection ~ 4900 2650
Wire Wire Line
	5450 2300 5450 2650
Connection ~ 5450 2650
Wire Wire Line
	5450 2650 5850 2650
Wire Wire Line
	5450 1900 5450 1550
$Comp
L tinkerforge:INDUCTOR L202
U 1 1 5EFB2476
P 5350 4750
F 0 "L202" H 5350 4997 60  0000 C CNN
F 1 "22uH 74437368220" H 5350 4891 60  0000 C CNN
F 2 "WE-LHMI" H 5350 4750 60  0001 C CNN
F 3 "" H 5350 4750 60  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:BD906XX-C-HRP7 U203
U 1 1 5EFB9454
P 3500 5000
F 0 "U203" H 3500 5515 50  0000 C CNN
F 1 "BD90640HFP" H 3500 5424 50  0000 C CNN
F 2 "BD906XX-C-HRP7" H 3500 5000 50  0001 C CNN
F 3 "" H 3500 5000 50  0001 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:DIODESCH D206
U 1 1 5EFB9649
P 4850 5300
F 0 "D206" V 4888 5221 40  0000 R CNN
F 1 "PMEG6045" V 4812 5221 40  0000 R CNN
F 2 "SOD-128" V 4774 5221 60  0001 R CNN
F 3 "" H 4850 5300 60  0000 C CNN
	1    4850 5300
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:GND #PWR0220
U 1 1 5EFBA788
P 5850 2650
F 0 "#PWR0220" H 5850 2400 50  0001 C CNN
F 1 "GND" H 5855 2477 50  0000 C CNN
F 2 "" H 5850 2650 50  0000 C CNN
F 3 "" H 5850 2650 50  0000 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
Connection ~ 5850 2650
$Comp
L tinkerforge:GND #PWR0212
U 1 1 5EFBA83E
P 3500 5900
F 0 "#PWR0212" H 3500 5650 50  0001 C CNN
F 1 "GND" H 3505 5727 50  0000 C CNN
F 2 "" H 3500 5900 50  0000 C CNN
F 3 "" H 3500 5900 50  0000 C CNN
	1    3500 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0218
U 1 1 5EFBA8F4
P 4850 5900
F 0 "#PWR0218" H 4850 5650 50  0001 C CNN
F 1 "GND" H 4855 5727 50  0000 C CNN
F 2 "" H 4850 5900 50  0000 C CNN
F 3 "" H 4850 5900 50  0000 C CNN
	1    4850 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R R212
U 1 1 5EFBC49A
P 4100 5250
F 0 "R212" V 3892 5250 50  0000 C CNN
F 1 "20k" V 3983 5250 50  0000 C CNN
F 2 "R0603F" H 4171 5159 60  0001 L CNN
F 3 "" H 4100 5250 60  0000 C CNN
	1    4100 5250
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:C C210
U 1 1 5EFBC6B5
P 4400 5450
F 0 "C210" H 4400 5600 50  0000 L CNN
F 1 "4.7nF" V 4550 5400 50  0000 L CNN
F 2 "C0603F" H 4400 5450 60  0001 C CNN
F 3 "" H 4400 5450 60  0000 C CNN
	1    4400 5450
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0217
U 1 1 5EFBC86A
P 4400 5900
F 0 "#PWR0217" H 4400 5650 50  0001 C CNN
F 1 "GND" H 4405 5727 50  0000 C CNN
F 2 "" H 4400 5900 50  0000 C CNN
F 3 "" H 4400 5900 50  0000 C CNN
	1    4400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5250 3850 5250
Wire Wire Line
	4400 5250 4350 5250
Wire Wire Line
	3450 5600 3450 5650
Wire Wire Line
	3450 5650 3500 5650
Wire Wire Line
	3550 5650 3550 5600
Connection ~ 3500 5650
Wire Wire Line
	3500 5650 3550 5650
$Comp
L tinkerforge:C C214
U 1 1 5EFC400B
P 5650 5300
F 0 "C214" H 5650 5450 50  0000 L CNN
F 1 "100nF" V 5800 5250 50  0000 L CNN
F 2 "C0402F" H 5650 5300 60  0001 C CNN
F 3 "" H 5650 5300 60  0000 C CNN
	1    5650 5300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R R215
U 1 1 5EFC4261
P 7450 5550
F 0 "R215" H 7379 5504 50  0000 R CNN
F 1 "8.2k" H 7379 5595 50  0000 R CNN
F 2 "R0603F" H 7521 5459 60  0001 L CNN
F 3 "" H 7450 5550 60  0000 C CNN
	1    7450 5550
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:GND #PWR0224
U 1 1 5EFC435C
P 7450 5900
F 0 "#PWR0224" H 7450 5650 50  0001 C CNN
F 1 "GND" H 7455 5727 50  0000 C CNN
F 2 "" H 7450 5900 50  0000 C CNN
F 3 "" H 7450 5900 50  0000 C CNN
	1    7450 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R R214
U 1 1 5EFC45F3
P 7450 5000
F 0 "R214" H 7379 4954 50  0000 R CNN
F 1 "47k" H 7379 5045 50  0000 R CNN
F 2 "R0603F" H 7521 4909 60  0001 L CNN
F 3 "" H 7450 5000 60  0000 C CNN
	1    7450 5000
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:C C217
U 1 1 5EFC604D
P 7200 5000
F 0 "C217" H 7200 5150 50  0000 L CNN
F 1 "DNP" V 7350 4950 50  0000 L CNN
F 2 "C0603F" H 7200 5000 60  0001 C CNN
F 3 "" H 7200 5000 60  0000 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4750 7200 4800
Connection ~ 7200 4750
Wire Wire Line
	7200 4750 7450 4750
Wire Wire Line
	7450 5250 7200 5250
Wire Wire Line
	7200 5250 7200 5200
Wire Wire Line
	7450 5250 7450 5300
Connection ~ 7450 5250
Wire Wire Line
	7450 5900 7450 5800
Wire Wire Line
	4400 5650 4400 5900
Wire Wire Line
	3500 5650 3500 5900
Wire Wire Line
	4850 5900 4850 5500
Wire Wire Line
	3800 4750 4850 4750
Wire Wire Line
	4850 5100 4850 4750
Connection ~ 4850 4750
Wire Wire Line
	4850 4750 5050 4750
$Comp
L tinkerforge:R R208
U 1 1 5EFD14F8
P 2900 5500
F 0 "R208" H 2829 5454 50  0000 R CNN
F 1 "27k" H 2829 5545 50  0000 R CNN
F 2 "R0603F" H 2971 5409 60  0001 L CNN
F 3 "" H 2900 5500 60  0000 C CNN
	1    2900 5500
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:C C208
U 1 1 5EFD160A
P 2600 5500
F 0 "C208" H 2600 5650 50  0000 L CNN
F 1 "100pF" V 2750 5450 50  0000 L CNN
F 2 "kicad-libraries:C0402F" H 2600 5500 60  0001 C CNN
F 3 "" H 2600 5500 60  0000 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0209
U 1 1 5EFD16A8
P 2900 5900
F 0 "#PWR0209" H 2900 5650 50  0001 C CNN
F 1 "GND" H 2905 5727 50  0000 C CNN
F 2 "" H 2900 5900 50  0000 C CNN
F 3 "" H 2900 5900 50  0000 C CNN
	1    2900 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0208
U 1 1 5EFD16E7
P 2600 5900
F 0 "#PWR0208" H 2600 5650 50  0001 C CNN
F 1 "GND" H 2605 5727 50  0000 C CNN
F 2 "" H 2600 5900 50  0000 C CNN
F 3 "" H 2600 5900 50  0000 C CNN
	1    2600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5300 2600 5000
Wire Wire Line
	2600 5000 2900 5000
Wire Wire Line
	2900 5250 2900 5000
Wire Wire Line
	2600 5900 2600 5700
Wire Wire Line
	2900 5900 2900 5750
Wire Wire Line
	3200 5000 2900 5000
Connection ~ 2900 5000
Wire Wire Line
	3200 4750 3050 4750
Wire Wire Line
	3200 5100 3050 5100
Wire Wire Line
	3050 5100 3050 4750
Connection ~ 3050 4750
$Comp
L tinkerforge:GND #PWR0223
U 1 1 5EFDD925
P 6400 5900
F 0 "#PWR0223" H 6400 5650 50  0001 C CNN
F 1 "GND" H 6405 5727 50  0000 C CNN
F 2 "" H 6400 5900 50  0000 C CNN
F 3 "" H 6400 5900 50  0000 C CNN
	1    6400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5900 6400 5500
Wire Wire Line
	6400 5100 6400 4750
$Comp
L tinkerforge:C C215
U 1 1 5EFE1DE3
P 6000 5300
F 0 "C215" H 6000 5450 50  0000 L CNN
F 1 "10uF" V 6150 5250 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 6000 5300 60  0001 C CNN
F 3 "" H 6000 5300 60  0000 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0221
U 1 1 5EFE1EEC
P 5650 5900
F 0 "#PWR0221" H 5650 5650 50  0001 C CNN
F 1 "GND" H 5655 5727 50  0000 C CNN
F 2 "" H 5650 5900 50  0000 C CNN
F 3 "" H 5650 5900 50  0000 C CNN
	1    5650 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0222
U 1 1 5EFE1F2D
P 6000 5900
F 0 "#PWR0222" H 6000 5650 50  0001 C CNN
F 1 "GND" H 6005 5727 50  0000 C CNN
F 2 "" H 6000 5900 50  0000 C CNN
F 3 "" H 6000 5900 50  0000 C CNN
	1    6000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5900 5650 5500
Wire Wire Line
	5650 5100 5650 4750
Wire Wire Line
	5650 4750 6000 4750
Connection ~ 5650 4750
Wire Wire Line
	6000 5100 6000 4750
Connection ~ 6000 4750
Wire Wire Line
	6000 4750 6400 4750
Wire Wire Line
	6000 5900 6000 5500
$Comp
L tinkerforge:C C202
U 1 1 5EFEA254
P 1900 5500
F 0 "C202" H 1900 5650 50  0000 L CNN
F 1 "10uF/35V" V 1850 5100 50  0000 L CNN
F 2 "C1206" H 1900 5500 60  0001 C CNN
F 3 "" H 1900 5500 60  0000 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0205
U 1 1 5EFEA5CF
P 1900 5900
F 0 "#PWR0205" H 1900 5650 50  0001 C CNN
F 1 "GND" H 1905 5727 50  0000 C CNN
F 2 "" H 1900 5900 50  0000 C CNN
F 3 "" H 1900 5900 50  0000 C CNN
	1    1900 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0203
U 1 1 5EFEA616
P 1600 5900
F 0 "#PWR0203" H 1600 5650 50  0001 C CNN
F 1 "GND" H 1605 5727 50  0000 C CNN
F 2 "" H 1600 5900 50  0000 C CNN
F 3 "" H 1600 5900 50  0000 C CNN
	1    1600 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:C C205
U 1 1 5EFEC15E
P 2250 5500
F 0 "C205" H 2250 5650 50  0000 L CNN
F 1 "100nF/35V" V 2200 5100 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 2250 5500 60  0001 C CNN
F 3 "" H 2250 5500 60  0000 C CNN
	1    2250 5500
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0207
U 1 1 5EFEC29C
P 2250 5900
F 0 "#PWR0207" H 2250 5650 50  0001 C CNN
F 1 "GND" H 2255 5727 50  0000 C CNN
F 2 "" H 2250 5900 50  0000 C CNN
F 3 "" H 2250 5900 50  0000 C CNN
	1    2250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5900 1600 5700
Wire Wire Line
	1600 5300 1600 4750
Wire Wire Line
	1600 4750 1900 4750
Wire Wire Line
	1900 5300 1900 4750
Connection ~ 1900 4750
Wire Wire Line
	1900 4750 2250 4750
Wire Wire Line
	2250 5300 2250 4750
Connection ~ 2250 4750
Wire Wire Line
	2250 4750 3050 4750
Wire Wire Line
	2250 5900 2250 5700
Wire Wire Line
	1900 5900 1900 5700
Wire Wire Line
	1400 4750 1600 4750
Connection ~ 1600 4750
Wire Wire Line
	7200 5250 7050 5250
Wire Wire Line
	7050 5250 7050 5000
Connection ~ 7200 5250
$Comp
L tinkerforge:INDUCTOR L203
U 1 1 5F7CF736
P 8000 4750
F 0 "L203" H 8000 4900 60  0000 C CNN
F 1 "10uH" H 7950 4650 60  0000 C CNN
F 2 "SRP7030" H 8000 4750 60  0001 C CNN
F 3 "" H 8000 4750 60  0001 C CNN
	1    8000 4750
	1    0    0    -1  
$EndComp
Connection ~ 7450 4750
$Comp
L tinkerforge:GND #PWR0226
U 1 1 5F7E3B19
P 8600 5900
F 0 "#PWR0226" H 8600 5650 50  0001 C CNN
F 1 "GND" H 8605 5727 50  0000 C CNN
F 2 "" H 8600 5900 50  0000 C CNN
F 3 "" H 8600 5900 50  0000 C CNN
	1    8600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5900 8600 5450
Wire Wire Line
	8600 5050 8600 4750
Wire Wire Line
	8600 4750 8300 4750
Connection ~ 8600 4750
Wire Wire Line
	7450 4750 7700 4750
$Comp
L tinkerforge:PAC1932-4 U204
U 1 1 6045D305
P 9550 2450
F 0 "U204" H 8725 2365 50  0000 C CNN
F 1 "PAC1933" H 8725 2274 50  0000 C CNN
F 2 "kicad-libraries:QFN-16" H 9550 2450 50  0001 C CNN
F 3 "" H 9550 2450 50  0001 C CNN
	1    9550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2500 4450 2650
Wire Wire Line
	4450 2650 4900 2650
Wire Wire Line
	4050 2500 4050 2650
Wire Wire Line
	3500 2650 4050 2650
Wire Wire Line
	4050 1700 4050 1550
Wire Wire Line
	3250 1550 4050 1550
Wire Wire Line
	4450 1700 4450 1550
Wire Wire Line
	4450 1550 4900 1550
$Comp
L tinkerforge:GND #PWR0171
U 1 1 5C8ED483
P 9950 5900
F 0 "#PWR0171" H 9950 5650 50  0001 C CNN
F 1 "GND" H 9955 5727 50  0000 C CNN
F 2 "" H 9950 5900 50  0000 C CNN
F 3 "" H 9950 5900 50  0000 C CNN
	1    9950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5900 9950 5450
Wire Wire Line
	9950 4750 9950 5050
$Comp
L tinkerforge:CP1 C216
U 1 1 5C9075DE
P 6400 5300
F 0 "C216" H 6200 5350 50  0000 L CNN
F 1 "100uF" V 6500 5000 50  0000 L CNN
F 2 "kicad-libraries:ELKO_63" H 6400 5300 60  0001 C CNN
F 3 "" H 6400 5300 60  0000 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:CP1 C220
U 1 1 5C9076E9
P 6700 5300
F 0 "C220" H 6500 5350 50  0000 L CNN
F 1 "100uF" V 6750 5000 50  0000 L CNN
F 2 "kicad-libraries:ELKO_63" H 6700 5300 60  0001 C CNN
F 3 "" H 6700 5300 60  0000 C CNN
	1    6700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4750 6700 4750
Connection ~ 6400 4750
$Comp
L tinkerforge:GND #PWR0172
U 1 1 5C90E6AA
P 6700 5900
F 0 "#PWR0172" H 6700 5650 50  0001 C CNN
F 1 "GND" H 6705 5727 50  0000 C CNN
F 2 "" H 6700 5900 50  0000 C CNN
F 3 "" H 6700 5900 50  0000 C CNN
	1    6700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5900 6700 5500
Wire Wire Line
	6700 5100 6700 4750
Connection ~ 6700 4750
Wire Wire Line
	6700 4750 7200 4750
$Comp
L tinkerforge:VCCPWR #PWR0201
U 1 1 5EFF9738
P 1400 4750
F 0 "#PWR0201" H 1400 4600 50  0001 C CNN
F 1 "VCCPWR" H 1417 4923 50  0000 C CNN
F 2 "" H 1400 4750 50  0001 C CNN
F 3 "" H 1400 4750 50  0001 C CNN
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:C C201
U 1 1 5C93E008
P 1600 5500
F 0 "C201" H 1600 5650 50  0000 L CNN
F 1 "10uF/35V" V 1550 5050 50  0000 L CNN
F 2 "C1206" H 1600 5500 60  0001 C CNN
F 3 "" H 1600 5500 60  0000 C CNN
	1    1600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5000 7050 5000
$Comp
L tinkerforge:R R219
U 1 1 5CA8AB55
P 10050 2400
F 0 "R219" H 9800 2450 50  0000 L CNN
F 1 "0.02" H 9800 2350 50  0000 L CNN
F 2 "R1206" H 10121 2309 60  0001 L CNN
F 3 "" H 10050 2400 60  0000 C CNN
	1    10050 2400
	-1   0    0    1   
$EndComp
NoConn ~ 9300 3400
NoConn ~ 9300 3500
$Comp
L tinkerforge:GND #PWR0111
U 1 1 5CA9B933
P 8150 3800
F 0 "#PWR0111" H 8150 3550 50  0001 C CNN
F 1 "GND" H 8155 3627 50  0000 C CNN
F 2 "" H 8150 3800 50  0000 C CNN
F 3 "" H 8150 3800 50  0000 C CNN
	1    8150 3800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R R220
U 1 1 5CAA4B08
P 10050 3000
F 0 "R220" H 10121 3046 50  0000 L CNN
F 1 "0.02" H 10121 2955 50  0000 L CNN
F 2 "R1206" H 10121 2909 60  0001 L CNN
F 3 "" H 10050 3000 60  0000 C CNN
	1    10050 3000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R R221
U 1 1 5CAA4D40
P 10050 3600
F 0 "R221" H 10121 3646 50  0000 L CNN
F 1 "0.02" H 10121 3555 50  0000 L CNN
F 2 "R1206" H 10121 3509 60  0001 L CNN
F 3 "" H 10050 3600 60  0000 C CNN
	1    10050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3300 9850 3300
Wire Wire Line
	9850 3300 9850 3850
Wire Wire Line
	9850 3850 10050 3850
Wire Wire Line
	10050 3350 9900 3350
Wire Wire Line
	9900 3350 9900 3200
Wire Wire Line
	9900 3200 9300 3200
Wire Wire Line
	9950 3250 9950 3100
Wire Wire Line
	9950 3100 9300 3100
Wire Wire Line
	9950 3250 10050 3250
Wire Wire Line
	9300 3000 9950 3000
Wire Wire Line
	9950 3000 9950 2750
Wire Wire Line
	9950 2750 10050 2750
Wire Wire Line
	9300 2900 9900 2900
Wire Wire Line
	9900 2900 9900 2650
Wire Wire Line
	9900 2650 10050 2650
Wire Wire Line
	9300 2800 9850 2800
Wire Wire Line
	9850 2800 9850 2550
Wire Wire Line
	9850 2550 9950 2550
Wire Wire Line
	9950 2550 9950 2150
Wire Wire Line
	9950 2150 10050 2150
Text GLabel 10300 2650 2    50   Input ~ 0
CUR1+
Text GLabel 10300 2150 2    50   Input ~ 0
CUR1-
Text GLabel 10300 2750 2    50   Input ~ 0
CUR2+
Text GLabel 10300 3250 2    50   Input ~ 0
CUR2-
Text GLabel 10300 3350 2    50   Input ~ 0
CUR3+
Text GLabel 10300 3850 2    50   Input ~ 0
CUR3-
Wire Wire Line
	10300 2150 10050 2150
Connection ~ 10050 2150
Wire Wire Line
	10300 2650 10050 2650
Connection ~ 10050 2650
Wire Wire Line
	10300 2750 10050 2750
Connection ~ 10050 2750
Wire Wire Line
	10300 3250 10050 3250
Connection ~ 10050 3250
Wire Wire Line
	10300 3350 10050 3350
Connection ~ 10050 3350
Wire Wire Line
	10300 3850 10050 3850
Connection ~ 10050 3850
$Comp
L tinkerforge:GND #PWR0173
U 1 1 5CB30134
P 7850 3800
F 0 "#PWR0173" H 7850 3550 50  0001 C CNN
F 1 "GND" H 7855 3627 50  0000 C CNN
F 2 "" H 7850 3800 50  0000 C CNN
F 3 "" H 7850 3800 50  0000 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C222
U 1 1 5CB31383
P 7850 3650
F 0 "C222" H 7950 3681 31  0000 L CNN
F 1 "100nF" H 7950 3619 31  0000 L CNN
F 2 "C0402F" H 7950 3588 60  0001 L CNN
F 3 "" H 7850 3650 60  0000 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3400 7850 3400
Wire Wire Line
	7850 3400 7850 3550
$Comp
L tinkerforge:Cs C221
U 1 1 5CB3AE29
P 7500 3650
F 0 "C221" H 7600 3681 31  0000 L CNN
F 1 "100nF" H 7600 3619 31  0000 L CNN
F 2 "C0402F" H 7600 3588 60  0001 L CNN
F 3 "" H 7500 3650 60  0000 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0174
U 1 1 5CB3AEBB
P 7500 3800
F 0 "#PWR0174" H 7500 3550 50  0001 C CNN
F 1 "GND" H 7505 3627 50  0000 C CNN
F 2 "" H 7500 3800 50  0000 C CNN
F 3 "" H 7500 3800 50  0000 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3400
Wire Wire Line
	7500 3750 7500 3800
Wire Wire Line
	7850 3750 7850 3800
Wire Wire Line
	8150 3500 8150 3800
Wire Wire Line
	7500 2600 7500 2800
Connection ~ 7500 3300
Wire Wire Line
	7850 3400 7500 3400
Connection ~ 7850 3400
Connection ~ 7500 3400
Wire Wire Line
	7500 3400 7500 3550
Text Notes 8350 3800 0    50   ~ 0
ADDRSEL\nVDD=0011_111(r/w)
Wire Wire Line
	8150 3200 7500 3200
Connection ~ 7500 3200
Wire Wire Line
	7500 3200 7500 3300
Wire Wire Line
	8150 2800 7500 2800
Connection ~ 7500 2800
Wire Wire Line
	7500 2800 7500 3200
$Comp
L tinkerforge:Rs R218
U 1 1 5CB8AEB6
P 8000 2900
F 0 "R218" V 8050 2900 31  0000 C CNN
F 1 "10k" V 8000 2900 31  0000 C CNN
F 2 "R0402F" H 8000 2900 60  0001 C CNN
F 3 "" H 8000 2900 60  0000 C CNN
	1    8000 2900
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:GND #PWR0175
U 1 1 5CB8B3B4
P 7850 2900
F 0 "#PWR0175" H 7850 2650 50  0001 C CNN
F 1 "GND" H 7855 2727 50  0000 C CNN
F 2 "" H 7850 2900 50  0000 C CNN
F 3 "" H 7850 2900 50  0000 C CNN
	1    7850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2900 8100 2900
Wire Wire Line
	7900 2900 7850 2900
Text GLabel 8050 3100 0    50   Input ~ 0
PAC_SDA
Text GLabel 8050 3000 0    50   Input ~ 0
PAC_SCL
Wire Wire Line
	8050 3000 8150 3000
Wire Wire Line
	8150 3100 8050 3100
Wire Wire Line
	5850 1550 5850 1900
Connection ~ 5450 1550
Wire Wire Line
	5450 1550 5850 1550
$Comp
L tinkerforge:C C218
U 1 1 5DC90FF6
P 8600 5250
F 0 "C218" H 8600 5400 50  0000 L CNN
F 1 "10uF" V 8750 5200 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 8600 5250 60  0001 C CNN
F 3 "" H 8600 5250 60  0000 C CNN
	1    8600 5250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0180
U 1 1 5DC9E1E0
P 9550 5900
F 0 "#PWR0180" H 9550 5650 50  0001 C CNN
F 1 "GND" H 9555 5727 50  0000 C CNN
F 2 "" H 9550 5900 50  0000 C CNN
F 3 "" H 9550 5900 50  0000 C CNN
	1    9550 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:C C223
U 1 1 5DC9ED68
P 9550 5250
F 0 "C223" H 9550 5400 50  0000 L CNN
F 1 "10uF" V 9700 5200 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 9550 5250 60  0001 C CNN
F 3 "" H 9550 5250 60  0000 C CNN
	1    9550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5050 9550 4750
Connection ~ 9550 4750
Wire Wire Line
	9550 4750 9950 4750
Wire Wire Line
	9550 5900 9550 5450
$Comp
L tinkerforge:C C224
U 1 1 5DCD66CA
P 8900 5250
F 0 "C224" H 8900 5400 50  0000 L CNN
F 1 "10uF" V 9050 5200 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 8900 5250 60  0001 C CNN
F 3 "" H 8900 5250 60  0000 C CNN
	1    8900 5250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:C C225
U 1 1 5DCD69E4
P 9250 5250
F 0 "C225" H 9250 5400 50  0000 L CNN
F 1 "10uF" V 9400 5200 50  0000 L CNN
F 2 "kicad-libraries:C0805E" H 9250 5250 60  0001 C CNN
F 3 "" H 9250 5250 60  0000 C CNN
	1    9250 5250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0181
U 1 1 5DCE8D02
P 9250 5900
F 0 "#PWR0181" H 9250 5650 50  0001 C CNN
F 1 "GND" H 9255 5727 50  0000 C CNN
F 2 "" H 9250 5900 50  0000 C CNN
F 3 "" H 9250 5900 50  0000 C CNN
	1    9250 5900
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0182
U 1 1 5DCE90B2
P 8900 5900
F 0 "#PWR0182" H 8900 5650 50  0001 C CNN
F 1 "GND" H 8905 5727 50  0000 C CNN
F 2 "" H 8900 5900 50  0000 C CNN
F 3 "" H 8900 5900 50  0000 C CNN
	1    8900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4750 8900 4750
Wire Wire Line
	8900 5050 8900 4750
Connection ~ 8900 4750
Wire Wire Line
	8900 4750 9250 4750
Wire Wire Line
	9250 5050 9250 4750
Connection ~ 9250 4750
Wire Wire Line
	9250 4750 9550 4750
Wire Wire Line
	8900 5900 8900 5450
Wire Wire Line
	9250 5900 9250 5450
NoConn ~ 1400 1950
$Comp
L tinkerforge:3V3 #PWR0162
U 1 1 654C07E5
P 7500 2600
F 0 "#PWR0162" H 7500 2450 50  0001 C CNN
F 1 "3V3" H 7515 2773 50  0000 C CNN
F 2 "" H 7500 2600 50  0000 C CNN
F 3 "" H 7500 2600 50  0000 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
Text GLabel 6000 1450 1    50   Input ~ 0
CUR1+
Text GLabel 6150 1450 1    50   Input ~ 0
CUR1-
Wire Wire Line
	6150 1450 6150 1550
Wire Wire Line
	6150 1550 6400 1550
Wire Wire Line
	6000 1450 6000 1550
Wire Wire Line
	6000 1550 5850 1550
Connection ~ 5850 1550
Text Notes 10400 3050 0    50   ~ 0
24V Stack
Text Notes 10400 2450 0    50   ~ 0
24V Input\nReversed!
Text Notes 10400 3650 0    50   ~ 0
5V Stack
Text GLabel 7900 2000 0    50   Input ~ 0
PAC_SCL
Text GLabel 7900 2150 0    50   Input ~ 0
PAC_SDA
$Comp
L tinkerforge:3V3 #PWR0170
U 1 1 6559F584
P 8150 1400
F 0 "#PWR0170" H 8150 1250 50  0001 C CNN
F 1 "3V3" H 8165 1573 50  0000 C CNN
F 2 "" H 8150 1400 50  0000 C CNN
F 3 "" H 8150 1400 50  0000 C CNN
	1    8150 1400
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R_PACK4 RP201
U 1 1 655A0F44
P 8350 1700
F 0 "RP201" V 8304 1672 50  0000 R CNN
F 1 "10k" V 8395 1672 50  0000 R CNN
F 2 "kicad-libraries:4X0402" H 8350 1700 50  0001 C CNN
F 3 "" H 8350 1700 50  0001 C CNN
	1    8350 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	8000 1500 8000 1450
Wire Wire Line
	8000 1450 8100 1450
Wire Wire Line
	8300 1450 8300 1500
Wire Wire Line
	8200 1500 8200 1450
Connection ~ 8200 1450
Wire Wire Line
	8200 1450 8300 1450
Wire Wire Line
	8100 1500 8100 1450
Connection ~ 8100 1450
Wire Wire Line
	8100 1450 8150 1450
Wire Wire Line
	8150 1400 8150 1450
Connection ~ 8150 1450
Wire Wire Line
	8150 1450 8200 1450
Wire Wire Line
	7900 2000 8000 2000
Wire Wire Line
	8000 2000 8000 1900
Wire Wire Line
	7900 2150 8300 2150
Wire Wire Line
	8300 2150 8300 1900
NoConn ~ 8100 1900
NoConn ~ 8200 1900
$Comp
L tinkerforge:+5V #PWR?
U 1 1 660CFC1F
P 4200 6950
AR Path="/5DF4E89A/660CFC1F" Ref="#PWR?"  Part="1" 
AR Path="/660CFC1F" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC1F" Ref="#PWR0177"  Part="1" 
F 0 "#PWR0177" H 4200 6800 50  0001 C CNN
F 1 "+5V" H 4200 7090 50  0000 C CNN
F 2 "" H 4200 6950 50  0001 C CNN
F 3 "" H 4200 6950 50  0001 C CNN
	1    4200 6950
	0    -1   1    0   
$EndComp
$Comp
L tinkerforge:CPs C?
U 1 1 660CFC25
P 4900 7100
AR Path="/5DF4E89A/660CFC25" Ref="C?"  Part="1" 
AR Path="/660CFC25" Ref="C?"  Part="1" 
AR Path="/5AFDB425/660CFC25" Ref="C203"  Part="1" 
F 0 "C203" H 4925 7175 31  0000 L CNN
F 1 "100uF" H 4925 7025 31  0000 L CNN
F 2 "kicad-libraries:ELKO_63" H 4900 7100 60  0001 C CNN
F 3 "" H 4900 7100 60  0000 C CNN
	1    4900 7100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR?
U 1 1 660CFC2B
P 4900 7400
AR Path="/5DF4E89A/660CFC2B" Ref="#PWR?"  Part="1" 
AR Path="/660CFC2B" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC2B" Ref="#PWR0179"  Part="1" 
F 0 "#PWR0179" H 4900 7400 30  0001 C CNN
F 1 "GND" H 4900 7330 30  0001 C CNN
F 2 "" H 4900 7400 60  0000 C CNN
F 3 "" H 4900 7400 60  0000 C CNN
	1    4900 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6950 4900 6950
Wire Wire Line
	4900 7200 4900 7400
Wire Wire Line
	4900 6950 4900 7000
Connection ~ 4900 6950
$Comp
L tinkerforge:INDUCTs L?
U 1 1 660CFC35
P 5100 6950
AR Path="/5DF4E89A/660CFC35" Ref="L?"  Part="1" 
AR Path="/660CFC35" Ref="L?"  Part="1" 
AR Path="/5AFDB425/660CFC35" Ref="L201"  Part="1" 
F 0 "L201" V 5150 6950 31  0000 C CNN
F 1 "INDUCTs" V 5050 6950 31  0000 C CNN
F 2 "R0603F" H 5100 6950 60  0001 C CNN
F 3 "" H 5100 6950 60  0000 C CNN
	1    5100 6950
	0    -1   1    0   
$EndComp
Wire Wire Line
	5450 6950 5350 6950
$Comp
L tinkerforge:GND #PWR?
U 1 1 660CFC3C
P 5850 7400
AR Path="/5DF4E89A/660CFC3C" Ref="#PWR?"  Part="1" 
AR Path="/660CFC3C" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC3C" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0183" H 5850 7400 30  0001 C CNN
F 1 "GND" H 5850 7330 30  0001 C CNN
F 2 "" H 5850 7400 60  0000 C CNN
F 3 "" H 5850 7400 60  0000 C CNN
	1    5850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7400 5850 7350
$Comp
L tinkerforge:Cs C?
U 1 1 660CFC43
P 6350 7100
AR Path="/5DF4E89A/660CFC43" Ref="C?"  Part="1" 
AR Path="/660CFC43" Ref="C?"  Part="1" 
AR Path="/5AFDB425/660CFC43" Ref="C226"  Part="1" 
F 0 "C226" H 6150 7150 50  0000 L CNN
F 1 "1uF" H 6100 7050 50  0000 L CNN
F 2 "C0402F" H 6350 7100 60  0001 C CNN
F 3 "" H 6350 7100 60  0000 C CNN
	1    6350 7100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR?
U 1 1 660CFC49
P 6350 7400
AR Path="/5DF4E89A/660CFC49" Ref="#PWR?"  Part="1" 
AR Path="/660CFC49" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC49" Ref="#PWR0184"  Part="1" 
F 0 "#PWR0184" H 6350 7400 30  0001 C CNN
F 1 "GND" H 6350 7330 30  0001 C CNN
F 2 "" H 6350 7400 60  0000 C CNN
F 3 "" H 6350 7400 60  0000 C CNN
	1    6350 7400
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C?
U 1 1 660CFC4F
P 5350 7100
AR Path="/5DF4E89A/660CFC4F" Ref="C?"  Part="1" 
AR Path="/660CFC4F" Ref="C?"  Part="1" 
AR Path="/5AFDB425/660CFC4F" Ref="C209"  Part="1" 
F 0 "C209" H 5450 7146 50  0000 L CNN
F 1 "1uF" H 5450 7055 50  0000 L CNN
F 2 "C0402F" H 5350 7100 60  0001 C CNN
F 3 "" H 5350 7100 60  0000 C CNN
	1    5350 7100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR?
U 1 1 660CFC55
P 5350 7400
AR Path="/5DF4E89A/660CFC55" Ref="#PWR?"  Part="1" 
AR Path="/660CFC55" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC55" Ref="#PWR0185"  Part="1" 
F 0 "#PWR0185" H 5350 7400 30  0001 C CNN
F 1 "GND" H 5350 7330 30  0001 C CNN
F 2 "" H 5350 7400 60  0000 C CNN
F 3 "" H 5350 7400 60  0000 C CNN
	1    5350 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 7000 5350 6950
Connection ~ 5350 6950
Wire Wire Line
	5350 6950 5200 6950
Wire Wire Line
	5350 7400 5350 7200
Wire Wire Line
	6350 7400 6350 7200
Wire Wire Line
	6350 7000 6350 6950
Connection ~ 6350 6950
Wire Wire Line
	6350 6950 6250 6950
$Comp
L tinkerforge:LD1117 U?
U 1 1 660CFC63
P 5850 7150
AR Path="/5DF4E89A/660CFC63" Ref="U?"  Part="1" 
AR Path="/660CFC63" Ref="U?"  Part="1" 
AR Path="/5AFDB425/660CFC63" Ref="U201"  Part="1" 
F 0 "U201" H 5850 7787 60  0000 C CNN
F 1 "AZ1117EH" H 5850 7681 60  0000 C CNN
F 2 "kicad-libraries:SOT-223" H 5850 7681 60  0001 C CNN
F 3 "" H 5850 7150 60  0001 C CNN
	1    5850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6950 6750 6850
$Comp
L tinkerforge:3V3 #PWR?
U 1 1 660CFC6B
P 6750 6850
AR Path="/660CFC6B" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/660CFC6B" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 6750 6700 50  0001 C CNN
F 1 "3V3" H 6750 7000 50  0000 C CNN
F 2 "" H 6750 6850 50  0000 C CNN
F 3 "" H 6750 6850 50  0000 C CNN
	1    6750 6850
	-1   0    0    -1  
$EndComp
Text GLabel 4200 6650 0    39   Input ~ 0
5V_STACK_UP
$Comp
L tinkerforge:DIODESCH D202
U 1 1 668049AC
P 4550 6650
F 0 "D202" H 4550 6550 40  0000 R CNN
F 1 "B0520LW-7-F" H 4700 6750 40  0000 R CNN
F 2 "kicad-libraries:SOD-123" V 4474 6571 60  0001 R CNN
F 3 "" H 4550 6650 60  0000 C CNN
	1    4550 6650
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:DIODESCH D203
U 1 1 668065CD
P 4550 6950
F 0 "D203" H 4550 6850 40  0000 R CNN
F 1 "B0520LW-7-F" H 4700 7050 40  0000 R CNN
F 2 "kicad-libraries:SOD-123" V 4474 6871 60  0001 R CNN
F 3 "" H 4550 6950 60  0000 C CNN
	1    4550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6950 4750 6950
Wire Wire Line
	4200 6950 4350 6950
Wire Wire Line
	4200 6650 4350 6650
Wire Wire Line
	4750 6650 4900 6650
Wire Wire Line
	4900 6650 4900 6950
Text Notes 3550 6500 0    50   ~ 0
Processor can be powered by upstream \nstack without external 24V connection
$Comp
L tinkerforge:CP1 C219
U 1 1 5C8ED3FD
P 9950 5250
F 0 "C219" H 9750 5300 50  0000 L CNN
F 1 "100uF" V 10100 4850 50  0000 L CNN
F 2 "kicad-libraries:ELKO_63" H 9950 5250 60  0001 C CNN
F 3 "" H 9950 5250 60  0000 C CNN
	1    9950 5250
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C227
U 1 1 67BCB546
P 6700 7100
F 0 "C227" H 6750 7200 50  0000 L CNN
F 1 "10uF" V 6850 6900 50  0000 L CNN
F 2 "C1206" H 6700 7100 60  0001 C CNN
F 3 "" H 6700 7100 60  0000 C CNN
	1    6700 7100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR?
U 1 1 67BCCA37
P 6700 7400
AR Path="/5DF4E89A/67BCCA37" Ref="#PWR?"  Part="1" 
AR Path="/67BCCA37" Ref="#PWR?"  Part="1" 
AR Path="/5AFDB425/67BCCA37" Ref="#PWR0187"  Part="1" 
F 0 "#PWR0187" H 6700 7400 30  0001 C CNN
F 1 "GND" H 6700 7330 30  0001 C CNN
F 2 "" H 6700 7400 60  0000 C CNN
F 3 "" H 6700 7400 60  0000 C CNN
	1    6700 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6950 6700 6950
Wire Wire Line
	6700 7000 6700 6950
Connection ~ 6700 6950
Wire Wire Line
	6700 6950 6750 6950
Wire Wire Line
	6700 7200 6700 7400
$EndSCHEMATC
