*duplicate files: 2innor.mod, 2inputno.mod, 4001.mod
*CMOS 2-in NOR Buffer - type:digital pkg:DIP14 [DVDD=14;DGND=7;](A:1,2,3)(B:5,6,4)(C:8,9,10)(D:12,13,11)
.MODEL A4001 xsimcode(file="{MODEL_PATH}CMOS.SCB" func=4001 {mntymx})

*LS 2-in NOR - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3)(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A74LS02 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls02 {mntymx})

*STD 2-in NOR Buffer - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3)(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A7428 xsimcode(file="{MODEL_PATH}STD.SCB" func=28 {mntymx})
