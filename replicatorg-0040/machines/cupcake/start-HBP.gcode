(**** beginning of start.gcode ****)
(This file is for a MakerBot Cupcake CNC)
M106 S255
M104 S180 T0 (Temperature to 220 celsius)
G21 (Metric FTW)
(G92 X0 Y0 Z0 (You are now at 0,0,0))
(You have failed me for the last time, MakerBot)
(***Homing****)
G91
G1 Z10
G90 (Absolute Positioning)
G161 Y X F5000 (Home X and Y axis maximum; go until reaching the end stop.)
G161 Z F140
G92 Y-50.0 X-65.0 Z2.212
G1 Z10.0 F160
G1 Y0 X0 F5000
(****end Homing****)
(***Start Test Extrusion)
G1 Z15 F160 (Move up for test extrusion)
M108 S255 (Extruder speed = max)
M104 S180 T0
M6 T0 (Wait for tool to heat up)
G04 P5000 (Wait 5 seconds)
M101 (Extruder on, forward)
G04 P5000 (Wait 5 seconds)
M103 (Extruder off)
M01 (The heater is warming up and will do a test extrusion.  Click yes after you have cleared the nozzle of the extrusion.)
G1 Z0 F160	(Go back to zero.)
(**** end of start.gcode ****)
