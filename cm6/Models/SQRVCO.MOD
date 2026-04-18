*ASQRVCO:Voltage Controlled Sine Wave Oscillator
*ASQRVCO:LOW:|Peak output low value|0
*ASQRVCO:HIGH:|Peak output high value|5
*ASQRVCO:CYCLE:|Duty cycle [0,1]|0.5
*ASQRVCO:RISE:|Rise time [0,]|1u
*ASQRVCO:FALL:|Fall time [0,]|1u
*ASQRVCO:C1:|Input control voltage point 1|0
*ASQRVCO:C2:|Input control voltage point 2|1
*ASQRVCO:C3:|Input control voltage point 3|2
*ASQRVCO:C4:|Input control voltage point 4|3
*ASQRVCO:C5:|Input control voltage point 5|4
*ASQRVCO:F1:|Output frequency point 1 [0,]|0
*ASQRVCO:F2:|Output frequency point 2 [0,]|1k
*ASQRVCO:F3:|Output frequency point 3 [0,]|2k
*ASQRVCO:F4:|Output frequency point 4 [0,]|3k
*ASQRVCO:F5:|Output frequency point 5 [0,]|4k
*{C1=0 C2=1 C3=2 C4=3 C5=4 F1=0 F2=1k F3=2k F4=3k F5=4k LOW=0 HIGH=5 CYCLE=0.5 RISE=1u FALL=1u}
*Voltage controlled square wave oscillator - alias:ASQRVCO
.MODEL ASQRVCO square(cntl_array=[{C1} {C2} {C3} {C4} {C5}]
+ freq_array=[{F1} {F2} {F3} {F4} {F5}] out_low={LOW}
+ out_high={HIGH} duty_cycle={CYCLE} rise_time={RISE} fall_time={FALL})

*Voltage controlled sine wave oscillator - alias:ASINEVCO
.MODEL ASINEVCO sine(cntl_array=[0 1 2 3 4]
+ freq_array=[0 1k 2k 3k 4k] out_low=-1 out_high=1)

*Voltage controlled triangle wave oscillator - alias:ATRIVCO
.MODEL ATRIVCO triangle(cntl_array=[0 1 2 3 4]
+ freq_array=[0 1k 2k 3k 4k] out_low=0
+ out_high=5 duty_cycle=0.5)
