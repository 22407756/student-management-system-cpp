*duplicate files: jksrn.mod, 74112.mod
*LS JK FLIP FLOP - type:digital pkg:DIP16 [DVCC=5;DGND=13;](A:2,4,1,16,3,14,15)(B:7,9,6,12,8,10,11)
.MODEL A74LS76 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls76 {mntymx})

*LS JK FLIP FLOP - type:digital pkg:DIP16 [DVCC=5;DGND=13;](A:2,4,1,16,3,14,15)(B:7,9,6,12,8,10,11)
.MODEL A74LS76A xsimcode(file="{MODEL_PATH}LS.SCB" func=ls76a {mntymx})

*LS Dual JK FLIP FLOP - type:digital pkg:DIP16 [DVCC=16;DGND=8;](A:4 3 1 2 15 6 5)(B:10 11 13 12 14 7 9)
.MODEL A74LS112 xsimcode(file="{MODEL_PATH}LS.SCB" func=ls112 {mntymx})
