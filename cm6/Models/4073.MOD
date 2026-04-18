*duplicate files: 3inand.mod, 3inputan.mod, 4073.mod
*CMOS 3-input AND gate - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:3,4,5,6)(b:1,2,8,9)(C:11,12,13,10)
.MODEL A4073 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4073 {mntymx})

*LS 3-input AND gate - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,13,12)(B:3,4,5,6)(C:9,10,11,8)
.MODEL A74LS11 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls11 {mntymx})
