*duplicate files: 2inand.mod, 2inputan.mod, 4081.mod
*CMOS Quad 2-input AND - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:1,2,3)(B:5,6,4)(C:8,9,10)(D:12,13,11)
.MODEL A4081 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4081 {mntymx})

*LS Quad 2-input AND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3)(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A74LS08 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls08 {mntymx})
