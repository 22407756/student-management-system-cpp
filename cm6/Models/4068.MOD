*duplicate files: 8innand.mod, 4068.mod
*CMOS 8-input NAND - type:digital pkg:DIP14 [DVDD=14;DGND=7;](2,3,4,5,9,10,11,12,13)
.MODEL A4068 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4068 {mntymx})

*LS 8-input NAND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](1,2,3,4,5,6,11,12,8)
.MODEL A74LS30 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls30 {mntymx})
