*duplicate files: 7401.mod, 7403.mod
*2-in O/C NAND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:2,3,1)(B:5,6,4)(C:8,9,10)(D:11,12,13)
.MODEL A74LS01 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls01 {mntymx})

*2-in H.V. O/C NAND - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A74LS26 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls26 {mntymx})

*2-in O/C NAND with buffered outputs - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:1,2,3(B:4,5,6)(C:9,10,8)(D:12,13,11)
.MODEL A74LS38 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls38 {mntymx})

*2-in O/C NAND with buffered outputs - type:digital pkg:DIP14 [DVCC=14;DGND=7;](A:2,3,1)(B:5,6,4)(C:8,9,10)(D:11,12,13)
.MODEL A7439 xsimcode(file="{MODEL_PATH}STD.SCB" func=39 {mntymx})

