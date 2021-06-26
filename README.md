# Programmable RLC impedance

The main objective of this project is to implement a programmable RLC impedance. This circuit must cover the entire inductive-resistive-capacitive range (voltage/current phase shift between -90° and +90°). The RLC load must be able to dissipate up to 5 W. Two different implementations are suggested: the analog and digital RLC impedance. A programmable RLC impedance with adjustable R, L and C can be useful to simulate the load of a generator like a motor for example. 

## Analog impedance

The first step is to design an analog impedance. A gyrator is used in order to simulate an non ideal inductor with parallel redundant resistor. The main property of the gyrator is to invert the current-voltage characteristic of an electrical component. This way, a capacitor can be used to get a non-ideal variable inductor. The inductance can be adjusted with simple potentiometers. The second step consists in removing the parallel resistors in order to simulate an ideal inductor and reach the 90° phase-shift. This objective can be achieved by connecting the Negative Impedance Converter (N.I.C) in parallel to the gyrator. After that, a more detailed study of the output current and output voltage across the op amps allows to highlight the main limitations of such circuit : see technical report .pdf

The gyrated capacitor and inductor can be connected in parallel with a potentiometer to simulate a programmable RLC impedance as shown here under : 

**<center>Figure 1 : Kicad schematics</center>**

![](https://i.imgur.com/GZ9SwLi.png)

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

### List of components used

1. Opamps : https://www.mouser.be/ProductDetail/Texas-Instruments/OPA548T?qs=wgAEGBTxy7kyuDG8paPgyg%3D%3D
2. Potentiometers : 
    - Adjustable Gyrated capacitor : https://www.mouser.be/ProductDetail/Bourns/PTV09A-4015U-B503?qs=pxDZlBjcsChjgaXxrSM7Lg==
    - Adjustable Gyrated inductor : https://www.mouser.be/ProductDetail/Bourns/93R1A-R22-A12L?qs=%2Fha2pyFadujN8NjAXMmLjGFZb2gaUmOwtYIhbzFhkfaZK5uBbZHutQ%3D%3D
    - Adjustable Resistor : https://www.mouser.be/ProductDetail/Bourns/96R1A-R16-A15L?qs=iuQ%252BhjgTeig0Okk2%252Boma3A==
3. Switches : https://www.mouser.be/ProductDetail/CK/FP12SPC1B1TP00?qs=%2Fha2pyFadujdL%2FKUzrOTABrsLBJn1GvGCS2%252BuxUnWEOCBKVtXu80Ug%3D%3D
## Digital impedance

The second step consists in designing a digital RLC impedance. By contrast to the analog impedance, the filtering process is done digitally using the microcontroller ATMEGA2560. A software feedback control approach is employed to adjust the current amplitude and the power factor. 

The objective is to maintain the impedance value constant regardless of the variation of the source voltage amplitude. Many paramaters such as the sampling frequency and the resolution of the ADC/DAC may affect the quality of the output current. The voltage is converted to current using a Howland current source. Several simulations have been performed to visualise the performance of the digital RLC filter. See technical report .pdf


