
t
Command: %s
53*	vivadotcl2C
/synth_design -top vga_top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
117842default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1024.680 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
vga_top2default:default2
 2default:default2e
OC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/vga_top.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2e
OC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter div_value bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
12default:default2
12default:default2e
OC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	h_counter2default:default2
 2default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/h_counter.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	h_counter2default:default2
 2default:default2
22default:default2
12default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/h_counter.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	v_counter2default:default2
 2default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/v_counter.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	v_counter2default:default2
 2default:default2
32default:default2
12default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/v_counter.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2f
PC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter HD bound to: 640 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HF bound to: 16 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HB bound to: 48 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HR bound to: 96 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter VD bound to: 480 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VF bound to: 10 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VB bound to: 33 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter VR bound to: 2 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter VA_END bound to: 480 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter LINE bound to: 640 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
42default:default2
12default:default2f
PC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	pixel_gen2default:default2
 2default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/pixel_gen.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	pixel_gen2default:default2
 2default:default2
52default:default2
12default:default2g
QC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/pixel_gen.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_top2default:default2
 2default:default2
62default:default2
12default:default2e
OC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/sources_1/new/vga_top.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1024.680 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1024.680 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1024.680 ; gain = 0.000
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
00:00:00.0132default:default2
1024.6802default:default2
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
179*designutils2k
UC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2k
UC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
UC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.srcs/constrs_1/new/Constraints.xdc2default:default2-
.Xil/vga_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1035.7462default:default2
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
00:00:00.0042default:default2
1035.7462default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1035.746 ; gain = 11.066
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1035.746 ; gain = 11.066
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1035.746 ; gain = 11.066
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1035.746 ; gain = 11.066
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
,	   3 Input   32 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   12 Bit       Adders := 21    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 33    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 10    
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
,	   2 Input    1 Bit       Adders := 1     
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
.	               10 Bit    Registers := 10    
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
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	              32x32  Multipliers := 5     
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
,	   2 Input    4 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
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
e
%s
*synth2M
9DSP Report: Generating DSP red4, operation Mode is: A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
p
%s
*synth2X
DDSP Report: Generating DSP red4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: Generating DSP red4, operation Mode is: A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
p
%s
*synth2X
DDSP Report: Generating DSP red4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: Generating DSP red4, operation Mode is: A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
p
%s
*synth2X
DDSP Report: Generating DSP red4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: Generating DSP red4, operation Mode is: A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
p
%s
*synth2X
DDSP Report: Generating DSP red4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
a
%s
*synth2I
5DSP Report: operator red4 is absorbed into DSP red4.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green3, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green3, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green5, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green5, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green5, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green5, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green5 is absorbed into DSP green5.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green4, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green4, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green4, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green4 is absorbed into DSP green4.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green3, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP green3, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP green3, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator green3 is absorbed into DSP green3.
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1035.746 ; gain = 11.066
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
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 15     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 15     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|pixel_gen   | (PCIN>>17)+A*B | 18     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1063.090 ; gain = 38.410
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
|Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:27 . Memory (MB): peak = 1064.441 ; gain = 39.762
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
{Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1098.895 ; gain = 74.215
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
uFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |BUFG    |     2|
2default:defaulth px? 
E
%s*synth2-
|2     |CARRY4  |   251|
2default:defaulth px? 
E
%s*synth2-
|3     |DSP48E1 |    18|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |    41|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |   482|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |   179|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |   450|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |   324|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |   341|
2default:defaulth px? 
E
%s*synth2-
|10    |FDRE    |   104|
2default:defaulth px? 
E
%s*synth2-
|11    |FDSE    |     3|
2default:defaulth px? 
E
%s*synth2-
|12    |IBUF    |     7|
2default:defaulth px? 
E
%s*synth2-
|13    |OBUF    |    14|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:24 ; elapsed = 00:00:29 . Memory (MB): peak = 1104.188 ; gain = 68.441
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1104.188 ; gain = 79.508
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
00:00:00.0292default:default2
1104.1882default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2692default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
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
00:00:00.0012default:default2
1104.1882default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272default:default2
02default:default2
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
00:00:352default:default2
00:00:362default:default2
1104.1882default:default2
79.5082default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KC:/Users/mh07599/Desktop/vga_screen_og0/vga_screen.runs/synth_1/vga_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file vga_top_utilization_synth.rpt -pb vga_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Dec 13 17:00:13 20222default:defaultZ17-206h px? 


End Record