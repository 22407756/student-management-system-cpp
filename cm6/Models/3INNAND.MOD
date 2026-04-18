*duplicate files: 3inNand.mod, 3inputna.mod, 4023.mod
*CMOS 3-input NAND - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:3,4,5,6)(B:1,2,8,9)(C:11,12,13,10)
.MODEL A4023 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4023 {mntymx})

*LS 3-input NAND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,13,12)(B:3,4,5,6)(C:9,10,11,8)
.MODEL A74LS10 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls10 {mntymx})
