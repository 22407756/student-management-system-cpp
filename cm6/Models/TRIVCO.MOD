*ATRIVCO:Voltage Controlled Sine Wave Oscillator
*ATRIVCO:LOW:|Peak output low value|-1
*ATRIVCO:HIGH:|Peak output high value|1
*ATRIVCO:CYCLE:|Duty cycle [0,1]|0.5
*ATRIVCO:C1:|Input control voltage point 1|0
*ATRIVCO:C2:|Input control voltage point 2|1
*ATRIVCO:C3:|Input control voltage point 3|2
*ATRIVCO:C4:|Input control voltage point 4|3
*ATRIVCO:C5:|Input control voltage point 5|4
*ATRIVCO:F1:|Output frequency point 1 [0,]|0
*ATRIVCO:F2:|Output frequency point 2 [0,]|1k
*ATRIVCO:F3:|Output frequency point 3 [0,]|2k
*ATRIVCO:F4:|Output frequency point 4 [0,]|3k
*ATRIVCO:F5:|Output frequency point 5 [0,]|4k
*{C1=0 C2=1 C3=2 C4=3 C5=4 F1=0 F2=1k F3=2k F4=3k F5=4k LOW=-1 HIGH=1 CYCLE=0.5}
*Voltage controlled triangle wave oscillator - alias:ATRIVCO
.MODEL ATRIVCO triangle(cntl_array=[{C1} {C2} {C3} {C4} {C5}]
+ freq_array=[{F1} {F2} {F3} {F4} {F5}] out_low={LOW}
+ out_high={HIGH} duty_cycle={CYCLE})

*Voltage controlled sine wave oscillator - alias:ASINEVCO
.MODEL ASINEVCO sine(cntl_array=[0 1 2 3 4]
+ freq_array=[0 1k 2k 3k 4k] out_low=-1 out_high=1)

*Voltage controlled square wave oscillator - alias:ASQRVCO
.MODEL ASQRVCO square(cntl_array=[0 1 2 3 4]
+ freq_array=[0 1k 2k 3k 4k] out_low=0
+ out_high=5 duty_cycle=0.5 rise_time=1e-6 fall_time=1e-6)
