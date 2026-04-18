* Default Chebyshev lowpass filter with 3kHz corner frequency - type:sxfer
.MODEL ASXFER s_xfer(in_offset=0 gain=1
+ num_coeff=[1]
+ den_coeff=[1 1.42562 1.5162]
+ int_ic=[0 0 0] )
