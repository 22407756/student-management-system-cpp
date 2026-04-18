*Default voltage-controlled switch
.MODEL SSW~ SW()

*Threshold voltage= 0.5V
.MODEL SSW05 SW(VT=500.0m )

*Threshold voltage= 2.5V
.MODEL SSTTL SW(VT=2.5 VH=0.1 )

*TTL switch (vih=2.0v, vil=0.8v)
.MODEL STTL SW(VT=2 VH=1.2 ROFF=100E+6 )

*Threshold voltage= 4V
.MODEL SXTTL SW(VT=4 )

*Threshold voltage= -10mV
.MODEL SSWM10 SW(VT=-0.01 )

*Threshold voltage= 10mV
.MODEL SSWP10 SW(VT=0.01 )

*Threshold voltage= 1V
.MODEL STRIAC SW(VT=0.99 RON=0.1 ROFF=1E+7 )
