# Programmable RLC impedance

The main objective of this project is to implement a programmable RLC impedance. This circuit must cover the entire inductive-resistive-capacitive range (voltage/current phase shift between -90° and +90°). The RLC load must be able to dissipate up to 5 W. Two different implementations are suggested: the analog and digital RLC impedance. A programmable RLC impedance with adjustable R, L and C can be useful to simulate the load of a generator like a motor for example. 

## Analog impedance

The first step is to design an analog impedance. A gyrator is used in order to simulate an non ideal inductor with parallel redundant resistor. The main property of the gyrator is to invert the current-voltage characteristic of an electrical component. This way, a capacitor can be used to get a non-ideal variable inductor. The inductance can be adjusted with simple potentiometers. The second step consists in removing the parallel resistors in order to simulate an ideal inductor and reach the 90° phase-shift. This objective can be achieved by connecting the Negative Impedance Converter (N.I.C) in parallel to the gyrator. After that, a more detailed study of the output current and output voltage across the op amps allows to highlight the main limitations of such circuit : see technical report .pdf

The gyrated capacitor and inductor can be connected in parallel with a potentiometer to simulate a programmable RLC impedance as shown here under : 

**<center>Figure 1 : Kicad schematics</center>**
![](https://i.imgur.com/DbZYgD8.png)


**<center>Figure 2 : Kicad PCB footprint </center>**

![](https://i.imgur.com/HE5GcLt.jpg)

As can be seen from Figure 2, three potentiometers are placed at the top of the PCB to adjust the resistive impedance (R_var), and the inductive impedance (R5_indu and R2_indu). On the other hand, R4_capa is a potentiometer used to adjust the capacitive impedance.

The size of the printed circuit track related to the generator and the opamp power supply is chosen larger to decrease as much as possible the voltage drop (and parasitic resistance).

The red track and the green track correspond respectively to the top layer bottom layer of the PCB.

The four power opamps are placed along the same row to make easy the connection of a radiator in case of high power dissipation.

More details about the choice of the components are explained in the following article (or see ): 

https://www.researchgate.net/publication/342452048_Simulation_of_a_programmable_RLC_impedance_Analog_and_digital_implementation



**<center>Figure 3 : 3D Kicad PCB top layer </center>**
![](https://i.imgur.com/4cfNkyJ.png)

**<center>Figure 4 : 3D Kicad PCB bottom layer </center>**

![](https://i.imgur.com/0ZAeTpo.png)

**<center>Figure 5 : 3D Kicad PCB oblique view </center>**

![](https://i.imgur.com/XcMsIQz.png)

# List of components used

1. Opamps : https://www.mouser.be/ProductDetail/Texas-Instruments/OPA548T?qs=wgAEGBTxy7kyuDG8paPgyg%3D%3D
2. Potentiometers : 
    - Adjustable Gyrated capacitor : https://www.mouser.be/ProductDetail/Bourns/PTV09A-4015U-B503?qs=pxDZlBjcsChjgaXxrSM7Lg==
    - Adjustable Gyrated inductor : https://www.mouser.be/ProductDetail/Bourns/93R1A-R22-A12L?qs=%2Fha2pyFadujN8NjAXMmLjGFZb2gaUmOwtYIhbzFhkfaZK5uBbZHutQ%3D%3D
    - Adjustable Resistor : https://www.mouser.be/ProductDetail/Bourns/96R1A-R16-A15L?qs=iuQ%252BhjgTeig0Okk2%252Boma3A==
3. Switches : https://www.mouser.be/ProductDetail/CK/FP12SPC1B1TP00?qs=%2Fha2pyFadujdL%2FKUzrOTABrsLBJn1GvGCS2%252BuxUnWEOCBKVtXu80Ug%3D%3D
## Digital impedance

The second step consists in designing a digital RLC impedance. By contrast to the analog impedance, the filtering process is done digitally using a microcontroller. A software feedback control approach is employed to adjust the current amplitude and the power factor regarding the input voltage.

The objective is to maintain the impedance value constant regardless of the variation of the source voltage amplitude. Many paramaters such as the sampling frequency and the resolution of the ADC/DAC may affect the quality of the output current. The voltage can be converted to current using the Howland current source. Several simulations have been performed to visualise the performance of the digital RLC filter. See technical report .pdf.

However, another circuit made of only one opamp with negative feedback called transconductance amplifier can be used to convert the input voltage into current and inject it in the generator. It acts like a current source. The transconductance ratio is fixed by the value of the resistor R1. The Current I = Vin/R. The transconductance amplifier will be used here thanks to its simplicity (only makes use of one resistor to fix the output current). For more details, get a look at : 
 https://www.allaboutcircuits.com/textbook/semiconductors/chpt-8/voltage-to-current-signal-conversion/

**<center>Figure 1 : Transconductance amplifier simplified</center>**
![](https://i.imgur.com/vQnmUyR.png)


Choosing R = 1 Ohm insures that Vin is a "perfect" image of the output current delivered by the generator. Let's assume that we want to simulate a 1 mF capacitor (C = 1 mF). The amplitude of the output current I should be equal to : I = Vgenerator.w.C (w=2*pi*f). Thus, the microcontroller should be able to measure at each time step the sample Vgenerator (through a ADC) and cpmpute Vin = I to simulate a constant 1 mF capacitor. A digital RLC filter must be implemented in the microcontroller. Thus a DAC is necessary to convert the digital voltage to analog voltage through the positive input of the transconductance unity gain amplifier.

More details about the implementation of the digital RLC filter can be found in technical report.pdf. The choice of the sampling frequency is crucial if one desires to maintain a phase-shift of +/- 90 degrees between input voltage and output current for ideal components (inductor/capacitor). The Z-transform allows to highlight the behaviour of the phase and magnitude depending on the sampling frequency.

Warning : One of the pins of the generator mustn't be connected to GND. Otherwise, the output if the transconductance opamp can be shorted. However, the howland current source allows to deal with grounded generators.

A special care has to be taken regarding the input voltage. A unity gain instrumentation amplifier with its high input impedance is used in order to "capture" Vgenerator at the output. The INA103 is used for this purpose. Before, connecting the output of the INA103 (Vgenerator) to input pin of the 12 bits ADC, we have to make sure that it is between 0 and 5 V. To reach the objective, a voltage divider made up with 2 equal resistors are used (5,11k Ohms). It is supplied between Vgenerator and V++ (positive supply voltage of the opamp). This will add (Vgenerator + V++)/2 to Vgenerator and make sure that the input is positive. Another voltage divider (1/4) allows to rescale Vgenerator between 0 and 5 V and feed it into the ADC. 

**<center>Figure 2 : Digital RLC impedance global overview</center>**

Important note regarding the 1 Ohm resistor that fixes the transconductance ratio : since the OPA548 output is internally buffered (can reach 5A peak), the resistor shall be able to dissipate up to 25 W. Thus the choice of the resistor is important here. Furthermore, the tolerance value shall also be low in order to keep the ratio as close as possible to 1. 

The LTO100 (F1R000FTE3) thick film power resistor can be a good candidate with its 1% tolerance.

![](https://i.imgur.com/gPJt6xP.png)


**<center>Figure 3 : Kicad Schematics </center>**
Here's the Kicad schematics with the components used for building the digital programmable RLC impedance:

![](https://i.imgur.com/P2BE9cV.png)


**<center>Figure 4 : Kicad PCB footprint</center>**

Here is the PCB footprint of the digital RLC impedance. The red/green circuit track corresponds respectively to the top/bottom side of the PCB. A special care has been taken to deal with high current (5 A). Thicker circuit tracks have been chosen to supply the op amps. Since the 1 Ohm resistor can afford 5 Amps, it's also important to make sure that the copper circuit track doesn't add parasitic resistance (and thus dissipation of power).

2x4 pins headers have been added to connect both the ADC and the DAC to the microcontroller. The serial communication protocole used is the I2C using SDA/SCL signals. 

![](https://i.imgur.com/EZXbq7X.png)


**<center>Figure 5 : 3D Kicad PCB top layer </center>**
Only footprints            |  With components
:-------------------------:|:-------------------------:
![](https://i.imgur.com/z82rd2y.png)|![](https://i.imgur.com/fguExNY.png)



**<center>Figure 6 : 3D Kicad PCB bottom layer </center>**
Only footprints             |  With components
:-------------------------:|:-------------------------:
![](https://i.imgur.com/7gWbhGG.png) |![](https://i.imgur.com/KQjG4WP.png)




**<center>Figure 7 : 3D Kicad PCB oblique view </center>**

![](https://i.imgur.com/WMEEMiW.png)

# List of components used

1. Opamp OPA 548: https://www.mouser.be/ProductDetail/Texas-Instruments/OPA548T?qs=wgAEGBTxy7kyuDG8paPgyg%3D%3D
3. Data converters : 
    - DAC : https://www.ti.com/product/DAC60502#design-development##cad-cae-symbols
    - ADC : https://www.ti.com/lit/ds/symlink/adc121c021.pdf?ts=1626049868732
3. Power resistoir : https://www.mouser.be/ProductDetail/Vishay-Sfernice/LTO100F1R000FTE3?qs=%2Fha2pyFadugIVD2ktmO4cgaopqaUXUdcjnQSGuVaM89tHJq5NFeucw%3D%3D
4. Voltage regulator : https://www.mouser.be/ProductDetail/Texas-Instruments/TPS7B8450QDCYRQ1?qs=%2Fha2pyFaduj2%252B%252BpD6KOjDCj45zFJpH97QDune9sg%2F3aik8Y5MlUrEg%3D%3D
5. Instrumentation op amp INA103 : https://www.ti.com/product/INA103#design-development
