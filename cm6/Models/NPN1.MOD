*==============================================
*NPN Trans Pinout: C,B,E
*Copyright (c) 1996 MicroCode Engineering, Inc.
*All Rights Reserved
*
*See other copyright notices at end of file.
*==============================================

*NPN
*Default NPN Bipolar transistor parameters pkg:TO-92 1,2,3
.MODEL QNPN~ NPN()

*QNPN
*pkg:TO-92 1,2,3
.MODEL QQNPN NPN(IS=3.2E-16 BF=141 VAF=35 ISE=2.6 NE=1.46 CJE=1E-13 
+ MJE=0.333 TF=6E-11 CJC=1E-13 CJS=2.2E-13 MJS=0.5 FC=0.67 )

*2N2219A MCE 5/13/95
*Si 800mW  40V 800mA 350MHz pkg:TO-5 3,2,1
.MODEL Q2N2219A NPN(IKR=0.285 RB=1.53 RE=0.383 RC=0.153 CJE=2.41E-11 
+ VJE=1.1 MJE=0.5 TF=4.54E-10 CJC=2.02E-11 VJC=0.3 MJC=0.3 TR=3.15E-7 
+ XTB=1.5 )

*2N2222A
*Si 500mW  40V 800mA 300MHz pkg:TO-18 3,2,1
.MODEL Q2N2222A NPN(IS=8.11E-14 BF=205 VAF=113 IKF=0.5 ISE=1.06E-11 
+ NE=2 BR=4 VAR=24 IKR=0.225 RB=1.37 RE=0.343 RC=0.137 CJE=2.95E-11 
+ TF=3.97E-10 CJC=1.52E-11 TR=8.5E-8 XTB=1.5 )

*2N2369A MCE 5/15/95
*Si 360mW  15V 500mA 600MHz pkg:TO-18 3,2,1
.MODEL Q2N2369A NPN (IS=11.2F NF=1 BF=130 VAF=69.7 IKF=57M ISE=8.01P NE=2
+ BR=4 NR=1 VAR=18 IKR=85.5M RE=2.06 RB=8.26 RC=.826 XTB=1.5
+ CJE=3.17P VJE=1.1 MJE=.5 CJC=5.91P VJC=.3 MJC=.3 TF=265P TR=10.2N)

*2N2484 MCE 5/13/95
*Si 360mW  60V  50mA 100MHz pkg:TO-18 3,2,1
.MODEL Q2N2484 NPN (IS=5.07F NF=1 BF=455 VAF=139 IKF=30M ISE=1.11P NE=2
+ BR=4 NR=1 VAR=24 IKR=45M RE=1.03 RB=4.12 RC=.412 XTB=1.5
+ CJE=4.82P VJE=1.1 MJE=.5 CJC=7.1P VJC=.3 MJC=.3 TF=1.59N TR=1.1U)

*2N3019 MCE 5/13/95
*Si 800mW  80V    1A 190MHz pkg:TO-5 3,2,1
.MODEL Q2N3019 NPN (IS=2.02F NF=1 BF=260 VAF=161 IKF=.75 ISE=6.16P NE=2
+ BR=4 NR=1 VAR=28 IKR=1.12 RE=.331 RB=1.32 RC=.132 XTB=1.5
+ CJE=76P VJE=1.1 MJE=.5 CJC=18.7P VJC=.3 MJC=.3 TF=837P TR=581N)

*2N3053 MCE 1/26/96
*Si 5W     40V 700mA 185MHz pkg:TO-5 3,2,1
.MODEL Q2N3053 NPN (IS=71.1F NF=1 BF=260 VAF=113 IKF=.42 ISE=27.3P NE=2
+ BR=4 NR=1 VAR=20 IKR=.63 RE=73.6M RB=.294 RC=29.4M XTB=1.5
+ CJE=79.2P VJE=1.1 MJE=.5 CJC=25.5P VJC=.3 MJC=.3 TF=858P TR=596N)

*2N3055
*Si  115W  70V   15A  20kHz pkg:TO-3 3,2,1
.MODEL Q2N3055 NPN(IS=4.66E-12 BF=360 VAF=100 IKF=0.25 ISE=3.339E-11 
+ BR=2 ISC=5E-9 RB=3 IRB=0.001 RBM=0.4 RC=0.04 CJE=5.802E-10 VJE=1.2 
+ MJE=0.45 TF=8E-8 XTF=1 ITF=3 PTF=120 CJC=2.121E-10 MJC=0.4 TR=2.55E-6 
+ XTB=1 )

*2N3501 MCE 5/13/95
*Si    1W 150V 300mA 283MHz pkg:TO-5 3,2,1
.MODEL Q2N3501 NPN (IS=30.4F NF=1 BF=136 VAF=220 IKF=.12 ISE=18.2P NE=2
+ BR=4 NR=1 VAR=24 IKR=.18 RE=.171 RB=.687 RC=68.7M XTB=1.5
+ CJE=63.5P VJE=1.1 MJE=.5 CJC=14.6P VJC=.3 MJC=.3 TF=562P TR=390N)

*2N3507
*Si    1W  50V    3A  60MHz pkg:TO-5 3,2,1
.MODEL Q2N3507 NPN(IS=1.5E-8 BF=75 NF=1.67 VAF=100 IKF=1.2 BR=4 RC=0.2 
+ CJE=5E-10 TF=1.8E-9 CJC=7E-11 TR=2.5E-8 XTB=1.5 )

*2N3700 MCE 5/13/95
*Si 500mW  80V    1A 190MHz pkg:TO-18 3,2,1
.MODEL Q2N3700 NPN (IS=2.02F NF=1 BF=260 VAF=161 IKF=.75 ISE=6.16P NE=2
+ BR=4 NR=1 VAR=28 IKR=1.12 RE=.331 RB=1.32 RC=.132 XTB=1.5
+ CJE=76P VJE=1.1 MJE=.5 CJC=18.7P VJC=.3 MJC=.3 TF=837P TR=581N)

*2N3904
*Si 310mW  40V 200mA 300MHz pkg:TO-92 1,2,3
.MODEL Q2N3904 NPN(IS=1.4E-14 BF=300 VAF=100 IKF=0.025 ISE=3E-13 
+ BR=7.5 RC=2.4 CJE=4.5E-12 TF=4E-10 CJC=3.5E-12 TR=2.1E-8 XTB=1.5 KF=9E-16 )

*2N3947 MCE 5/13/95
*Si 360mW  40V 200mA 346MHz pkg:TO-18 3,2,1
.MODEL Q2N3947 NPN (IS=.258F NF=1 BF=286 VAF=113 IKF=32M ISE=413F NE=2
+ BR=4 NR=1 VAR=24 IKR=48M RE=1.03 RB=4.12 RC=.412 XTB=1.5
+ CJE=7.18P VJE=1.1 MJE=.5 CJC=6.15P VJC=.3 MJC=.3 TF=458P TR=425N)

*2N4401
*Si 310mW  40V 600mA 250MHz pkg:TO-92 1,2,3
.MODEL Q2N4401 NPN(IS=9.09E-15 BF=300 VAF=113 IKF=0.36 ISE=1.06E-11 
+ NE=2 BR=4 VAR=24 IKR=0.54 RB=1.27 RE=0.319 RC=0.127 CJE=2.34E-11 TF=5.12E-10 
+ CJC=1.02E-11 TR=1.51E-7 XTB=1.5 )

*2N5551 MCE 5/11/95
*Si 625mW 160V 600mA 300MHz pkg:TO-92 1,2,3
.MODEL Q2N5551 NPN (IS=2.67E-20 NF=1 BF=195 VAF=227 IKF=15M ISE=4.22F NE=2
+ BR=4 NR=1 VAR=24 IKR=22.5M RE=1.63 RB=6.52 RC=.652 XTB=1.5
+ CJE=17.9P VJE=1.1 MJE=.5 CJC=7.76P VJC=.3 MJC=.3 TF=530P TR=595N)

*2N6431 MCE 5/13/95
*Si 500mW 300V  50mA 300MHz pkg:TO-18 3,2,1
.MODEL Q2N6431 NPN (IS=5.07F NF=1 BF=130 VAF=311 IKF=30M ISE=3.9P NE=2
+ BR=4 NR=1 VAR=24 IKR=45M RE=1.03 RB=4.12 RC=.412 XTB=1.5
+ CJE=12.4P VJE=1.1 MJE=.5 CJC=4.02P VJC=.3 MJC=.3 TF=530P TR=368N)

*2N6517 MCE 5/11/95
*Si 625mW 350V 500mA 200MHz pkg:TO-92 1,2,3
.MODEL Q2N6517 NPN (IS=67.3F NF=1 BF=320 VAF=336 IKF=90M ISE=97.3P NE=2
+ BR=4 NR=1 VAR=24 IKR=.135 RE=9.63 RB=38.5 RC=3.85 XTB=1.5
+ CJE=58P VJE=1.1 MJE=.5 CJC=13.3P VJC=.3 MJC=.3 TF=795P TR=5.1U)

*MPSA06 MCE 5/12/95
*Si 625mW  80V 500mA 219MHz pkg:TO-92 1,2,3
.MODEL QMPSA06 NPN (IS=50.7F NF=1 BF=286 VAF=161 IKF=.3 ISE=17.7P NE=2
+ BR=4 NR=1 VAR=16 IKR=.45 RE=.103 RB=.412 RC=41.2M XTB=1.5
+ CJE=58.7P VJE=1.1 MJE=.5 CJC=18.9P VJC=.3 MJC=.3 TF=725P TR=504N)

*MPSA17 MCE 5/12/95
*Si 350mW  40V 100mA 125MHz pkg:TO-92 1,2,3
.MODEL QMPSA17 NPN (IS=28.7F NF=1 BF=630 VAF=113 IKF=40M ISE=4.71P NE=2
+ BR=4 NR=1 VAR=60 IKR=60M RE=4.81 RB=19.2 RC=1.92 XTB=1.5
+ CJE=17.6P VJE=1.1 MJE=.5 CJC=5.68P VJC=.3 MJC=.3 TF=1.27N TR=884N)

*MPSA18 MCE 5/12/95
*Si 625mW  45V 200mA 450MHz pkg:TO-92 1,2,3
.MODEL QMPSA18 NPN (IS=20.3F NF=1 BF=1.43K VAF=120 IKF=.12 ISE=1.41P NE=2
+ BR=4 NR=1 VAR=26 IKR=.18 RE=.465 RB=1.86 RC=.186 XTB=1.5
+ CJE=7.87P VJE=1.1 MJE=.5 CJC=5.2P VJC=.3 MJC=.3 TF=353P TR=245N)

*MPSA44 MCE 5/12/95
*Si 625mW 400V 300mA 200MHz pkg:TO-92 1,2,3
.MODEL QMPSA44 NPN (IS=141F NF=1 BF=130 VAF=360 IKF=.18 ISE=50.4P NE=2
+ BR=4 NR=1 VAR=2.4 IKR=.27 RE=1.77 RB=7.09 RC=.709 XTB=1.5
+ CJE=111P VJE=1.1 MJE=.5 CJC=17.9P VJC=.3 MJC=.3 TF=795P TR=552N)

*=========================================================================
* Copyright notice for all models labeled "Motorola":
*
* Copyright (c) Motorola, Inc. 1996
*
* The values contained in these parameter sets may not be modified in any 
* way.
*
* No additional parameters may be added to these parameter sets without 
* prior written permission from Motorola.
*
* Macromodels, simulation models, or other models provided by Motorola, 
* directly or indirectly, are not warranted by Motorola as fully 
* representing all of the specifications and operating characteristics of 
* the semiconductor product to which the model relates. Moreover, these 
* models are furnished on an "as is" basis without support or warranty of 
* any kind, either expressed or implied, regarding the use thereof and 
* Motorola specifically disclaims all implied warranties of 
* merchantability and fitness of the models for any purpose.  Motorola 
* does not assume any liability arising out of the application or use of 
* the models including infringement of patents and copyrights nor does 
* Motorola convey any license under its patents and copyrights or the 
* rights of others. Motorola reserves the right to make changes without 
* notice to any model. Although macromodels can be a useful tool in 
* evaluating device performance in various applications, they cannot model 
* exact device performance under all conditions, nor are they intended to 
* replace breadboarding for final verification. 
*
* Motorola SPICE parameter sets are also available on the Motorola SPS 
* World Wide Web server <URL:http://motserv.indirect.com/>

*=========================================================================

*   Copyright notice for all models labeled "ZETEX":
*
*                          (C)  1992 ZETEX PLC
*
*   The copyright in these models  and  the designs embodied belong
*   to Zetex PLC ("Zetex").  They  are  supplied  free of charge by
*   Zetex for the purpose of research and design and may be used or
*   copied intact  (including this notice)  for  that purpose only.
*   All other rights are reserved. The models are believed accurate
*   but  no condition  or warranty  as to their  merchantability or
*   fitness for purpose is given and no liability in respect of any
*   use is accepted by Zetex PLC, its distributors or agents.
*
*
*   Zetex PLC, Fields New Road, Chadderton, Oldham  OL9 8NP  U.K.
