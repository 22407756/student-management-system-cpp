*duplicate files: 4inNand.mod, 4inputNa.mod, 4012.mod, 7413.mod
*CMOS 4-input NAND - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:2,3,4,5,1)(B:9,10,11,12,13)
.MODEL A4012 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4012 {mntymx})

*LS 4-input NAND with hysteresis - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,4,5,6)(B:9,10,12,13,8)
.MODEL A74LS13 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls13 {mntymx})

*LS 4-input NAND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,4,5,6,7)(B:9,10,12,13,8)
.MODEL A74LS20 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls20 {mntymx})

*LS 4-input NAND Buffer - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,4,5,6,7)(B:9,10,12,13,8)
.MODEL A74LS40 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls40 {mntymx})
