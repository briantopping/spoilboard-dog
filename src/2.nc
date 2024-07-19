G90; Absolute positioning
G0 Z0

G91 ; relative positioning

; Cut the hole using four sections of circular interpolation (clockwise)
G1 Z-0.5 F10.0 ; Move down to cutting depth at feed rate
; move right
G1 X0.25
; Section 1: Bottom right quadrant
G2 X-0.25 Y-0.25 R0.25
; Section 2: bottom left quadrant
G2 X-0.25 Y0.25 R0.25
; Section 3: Top left quadrant
G2 X0.25 Y0.25 R0.25
; Section 4: top right quadrant
G2 X0.25 Y-0.25 R0.25
; Rapid move to clearance height (depth+ 0.5)
G0 Z1

; move to next (4.75" total with initial translation)
G0 X4.5

; return to caller
M99
