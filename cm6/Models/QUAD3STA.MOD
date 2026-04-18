*Generic Quad 3-State Buffer - type:digital pkg:DIP16 [DVCC=16;DGND=8;](4,5,12,13,2,7,10,15,9)
.MODEL AQUAD3STA xsimcode(file="{MODEL_PATH}LS.SCB" func=quad3sta {mntymx})

*74LS244 1/2 - type:digital pkg:DIP16 [DVCC=20;DGND=10;](A:2,4,6,8,18,16,14,12,1)(B:17,15,13,11,3,5,7,9,19)
.MODEL A74LS244 xsimcode(file="{MODEL_PATH}LS.SCB" func=lsqdff {mntymx})
