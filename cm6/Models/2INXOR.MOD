*duplicate files: 2inxor.mod, 2inputxo.mod, 4030.mod, 4070.mod
*CMOS Qaud 2-input XOR - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:1,2,3)(B:5,6,4)(C:8,9,10)(D:12,13,11)
.MODEL A4030 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4030 {mntymx})

*CMOS Qaud 2-input XOR - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:1,2,3)(B:5,6,4)(C:8,9,10)(D:12,13,11)
.MODEL A4070 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4070 {mntymx})

*LS Qaud 2-input XOR - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3)(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A74LS86 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls86 {mntymx})
