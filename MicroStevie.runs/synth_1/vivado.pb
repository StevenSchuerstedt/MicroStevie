
p
Command: %s
53*	vivadotcl2?
+synth_design -top Top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
149722default:defaultZ8-7075h px? 
?
)%s is already implicitly declared earlier992*oasys2
dataAluA2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
812default:default8@Z8-992h px? 
?
)%s is already implicitly declared earlier992*oasys2
dataAluB2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
822default:default8@Z8-992h px? 
?
)%s is already implicitly declared earlier992*oasys2#
addressRam_wire2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
952default:default8@Z8-992h px? 
?
)%s is already implicitly declared earlier992*oasys2
neg_flag2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
1202default:default8@Z8-992h px? 
?
)%s is already implicitly declared earlier992*oasys2
ss_out2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
852default:default8@Z8-992h px? 
?
.identifier '%s' is used before its declaration4750*oasys2!
test_register2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
252default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2!
test_register2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
252default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2&
one_second_counter2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
592default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2

counter_ss2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
592default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
LED_BCD2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
592default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2!
test_register2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
602default:default8@Z8-6901h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1018.422 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Top2default:default2
 2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
MicroStevie2default:default2
 2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
32default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter CONTROL_WORD_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2!
control_logic2default:default2
 2default:default2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/control_logic.v2default:default2
32default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter CONTROL_WORD_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter RING_COUNTER_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/control_logic.v2default:default2
512default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
control_flag2default:default2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/control_logic.v2default:default2
502default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
control_logic2default:default2
 2default:default2
12default:default2
12default:default2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/control_logic.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
program_counter2default:default2
 2default:default2c
ME:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/program_counter.v2default:default2
32default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
program_counter2default:default2
 2default:default2
22default:default2
12default:default2c
ME:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/program_counter.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
register2default:default2
 2default:default2\
FE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/register.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register2default:default2
 2default:default2
32default:default2
12default:default2\
FE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/register.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ir_register2default:default2
 2default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ir_register.v2default:default2
42default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ir_register2default:default2
 2default:default2
42default:default2
12default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ir_register.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
flags_register2default:default2
 2default:default2b
LE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/flags_register.v2default:default2
42default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
flags_register2default:default2
 2default:default2
52default:default2
12default:default2b
LE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/flags_register.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
62default:default2
12default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MicroStevie2default:default2
 2default:default2
72default:default2
12default:default2_
IE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/MicroStevie.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ram2default:default2
 2default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ram.v2default:default2
42default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter ADDR_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter OUTPUT_ADDR bound to: 100 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram2default:default2
 2default:default2
82default:default2
12default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/ram.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
sevenSegment2default:default2
 2default:default2`
JE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/sevenSegment.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
sevenSegment2default:default2
 2default:default2
92default:default2
12default:default2`
JE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/sevenSegment.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Top2default:default2
 2default:default2
102default:default2
12default:default2W
AE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/Top.v2default:default2
32default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1018.422 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1018.422 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1018.422 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0872default:default2
1018.4222default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/constrs_1/new/basys_const.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/constrs_1/new/basys_const.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2_
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/constrs_1/new/basys_const.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1090.8982default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0492default:default2
1090.8982default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1090.898 ; gain = 72.477
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1090.898 ; gain = 72.477
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1090.898 ; gain = 72.477
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2(
control_word_reg_reg2default:default2a
KE:/fpga_projects/MicroStevie/MicroStevie.srcs/sources_1/new/control_logic.v2default:default2
532default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1090.898 ; gain = 72.477
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   24 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 265   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   24 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  19 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  19 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 259   
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:52 ; elapsed = 00:00:57 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:59 ; elapsed = 00:01:04 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:59 ; elapsed = 00:01:05 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:01:02 ; elapsed = 00:01:08 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:01:07 ; elapsed = 00:01:12 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:07 ; elapsed = 00:01:12 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   101|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    15|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   246|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |   205|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   150|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   126|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  2143|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   816|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   408|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |  6321|
2default:defaulth px? 
D
%s*synth2,
|12    |LD     |    15|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     1|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    27|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:57 ; elapsed = 00:01:10 . Memory (MB): peak = 1258.273 ; gain = 167.375
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:07 ; elapsed = 00:01:13 . Memory (MB): peak = 1258.273 ; gain = 239.852
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1462default:default2
1258.2732default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
13402default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
Top2default:default2
ram2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1258.2732default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 15 instances were transformed.
  LD => LDCE: 15 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362default:default2
142default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:162default:default2
00:01:242default:default2
1258.2732default:default2
239.8522default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Q
=E:/fpga_projects/MicroStevie/MicroStevie.runs/synth_1/Top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Sep 27 22:27:45 20212default:defaultZ17-206h px? 


End Record