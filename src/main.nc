; G-code for 8x10 grid of 0.75" diameter holes at 1" depth

; Set units to inches
G20


G90; Absolute positioning

; Set feed rate
F20.0

; Tool change to 0.25" end mill (T1 is typically used for Tool 1)
T4 M6

; Rapid move to clearance height
G0 Z0.5

M3; spindle rotate CW

; speed
S12000

; pause 4 seconds
G4 p4000


; Assume starting point (0, 0) is the center of the hole
; cut ten rows of eight holes
M98 P1 L10

G90; Absolute positioning

; go home
G0 X0 Y0


; stop spindle
S0

M30 ; End of program

