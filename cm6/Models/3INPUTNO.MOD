*duplicate files: 3inNor.mod, 3inputNo.mod, 4025.mod
*CMOS 3-input NOR - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:3,4,5,6)(B:1,2,8,9)(C:11,12,13,10)
.MODEL A4025 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4025 {mntymx})

*LS 3-in NOR - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,13,12)(B:3,4,5,6)(C:11,10,9,8)
.MODEL A74LS27 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls27 {mntymx})
