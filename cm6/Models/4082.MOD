*duplicate files: 4inAnd.mod, 4inputAn.mod 4082.mod
*4-input AND - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:2,3,4,5,1)(B:9,10,11,12,13)
.MODEL A4082 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4082 {mntymx})

*4-input AND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,4,5,6)(B:9,10,12,13,8)
.MODEL A74LS21 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls21 {mntymx})
