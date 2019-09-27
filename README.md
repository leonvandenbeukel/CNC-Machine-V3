# CNC Machine V3
 
This is a modified version of my previous designed CNC machine. This version uses (GT2) belts and has a larger working area of 50x70 cm or 20x27 inch. I'm also using microstepping now (all three jumpers) on the Arduino CNC shield. The STL files for 3D printing can be found in the STL folder. I mostly print on .2 or .3 mm with infill between 10 and 30%.

The metal tubes are 20x20mm and approx. 1 meter long (X axis is a little shorter). 

### Design

I've designed the 3D printed parts with Fusion 360 and used Inkscape for the Y axis drilling template. To control the machine I'm using an Arduino UNO with GRBL firmware and an Arduino CNC Shield. There are plenty of tutorials to find on how to connect and use it so I did not show it in the video. Here are some useful links:

* [GRBL](https://github.com/gnea/grbl)
* [Arduino CNC Shield](https://blog.protoneer.co.nz/arduino-cnc-shield/)

### 3D Printing

The 3D printer I use is an Anet A8. The parts are printed with PLA, mostly 20% infill and 0.2 or 0.4 setting. Use higher infill for parts that must be stronger, for example the stepper motor mounts.

| 3D Printed components         | x Print |
| -------------                 | ----- |
|Bearing Belt Guidener          | 6x    |
|Router Mount                   | 1x    |
|Universal Mount                | 4x    |
|X Axis Belt Holder             | 4x    |
|X Axis Motor Mount             | 1x    |
|X Axis Sidepanel Mount Inside  | 2x    |
|X Axis Sidepanel Mount Outside | 2x    |
|X Axis Spacer                  | 2x |
|Y Axis Motor Mount and Slider  | 2x |
|Y Mount                        | 4x |
|Z Axis Bottom Front            | 1x |
|Z Axis Top Front               | 1x |
|Z Carriage Back                | 1x |
|Z Carriage Top                 | 1x |
|Z Motor Mount                  | 1x |
|Z Slider Bottom                | 1x |
|Z Slider Top                   | 1x |
|Z Spacer                       | 1x |


### Dimensions

The tubes are 20mm x 20mm (0.78") square steel tubes. The length of the Y Axis tubes is 1000mm (40") and the length for the X Axis is approx. 820mm (32"). As an alternative you could also use other dimensions than 20mm x 20mm (maybe even rounded tubes) as long as they are approximately that size. The Z axis tubes are 15mm x 15mm (0.59") aluminium square tubes, approx. 215mm long (8.5"). You should measure this for yourself, check the video build. For the belts I'm using GT2 6mm and pulleys.

### Power and motors

To power the NEMA 17 stepper motors I've converted an old ATX PC power supply and used the 12V output. The type of stepper motors I use for the Y- and Z axis are: 17HS19-2004S1, the type for the X axis is: 42BYGHW811. For the wiring I've used CAT5 network cable.




### Software that I mostly use to generate and send GCode:

* bCNC (https://github.com/vlachoudis/bCNC)
* Universal Gcode Sender (https://github.com/winder/Universal-G-Code-Sender)
* Easel by Inventables (http://easel.inventables.com)
* Fusion 360 with CAM (https://www.autodesk.com/products/fusion-360/students-teachers-educators)
