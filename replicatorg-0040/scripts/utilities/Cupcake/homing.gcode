(***Homing****)
G91
G1 Z10
G90 (Absolute Positioning)
G161 Y X F5000 (Home X and Y axis maximum; go until reaching the end stop.)
G161 Z F140
G92 Y-50.0 X-65.0 Z2.212
G1 Z10.0 F160
G1 Y0 X0 F5000
G1 Z0
(****end Homing****)
