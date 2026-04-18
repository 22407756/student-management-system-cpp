*duplicate files: inverter.mod, 4049.mod, 4069.mod
*CMOS Hex Inverter - type:digital pkg:DIP16 [DVDD=1;DGND=8;](A:3,2)(B:5,4)(C:7,6)(D:9,10)(E:11,12)(F:14,15)
.MODEL A4049 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4049 {mntymx})

*CMOS Hex Inverter - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:1,2)(B:3,4)(C:5,6)(D:9,8)(E:11,10)(F:13,12)
.MODEL A4069 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4069 {mntymx})

*LS Hex Inverter - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2)(B:3,4)(C:5,6)(D:9,8)(E:11,10)(F:13,12)
.MODEL A74LS04 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls04 {mntymx})
