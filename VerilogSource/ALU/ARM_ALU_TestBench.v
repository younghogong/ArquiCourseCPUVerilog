module ARM_ALU_TestBench;

parameter sim_time = 750*2; // Num of Cycles * 2 
reg  [31:0] A,B;
reg [4:0] OP;
reg [3:0] FLAGS;
reg S,ALU_OUT;
wire [31:0] Out;
wire [3:0] FLAGS_OUT;

//ARM_ALU(input wire [31:0] A,B,input wire[4:0] OP,input wire [3:0] FLAGS,output wire [31:0] Out,output wire [3:0] FLAGS_OUT, input wire S,ALU_OUT,);
ARM_ALU alu(A,B, OP, FLAGS, Out,FLAGS_OUT,S,ALU_OUT);


initial fork
	A=0;B=0; OP=0; FLAGS=0; S=1;ALU_OUT=1;
	#1 A=1; #1 B=0; #1 OP=0; #1 FLAGS=FLAGS_OUT;#1 S=1; #1 ALU_OUT=1;
	#2 A=1; #2 B=1; #2 OP=0; #2 FLAGS=FLAGS_OUT;#2 S=1; #2 ALU_OUT=1;
	#3 A=32'hF; #3 B=32'hF; #3 OP=0; #3 FLAGS=FLAGS_OUT;#3 S=1; #3 ALU_OUT=1;
	#4 A=32'h0F; #4 B=32'hF0; #4 OP=0; #4 FLAGS=FLAGS_OUT;#4 S=1; #4 ALU_OUT=1;
	#5 A=32'hF3; #5 B=32'hF1; #5 OP=0; #5 FLAGS=FLAGS_OUT;#5 S=1; #5 ALU_OUT=1;
	#6 A=32'h1111; #6 B=32'h1111; #6 OP=0; #6 FLAGS=FLAGS_OUT;#6 S=1; #6 ALU_OUT=1;
	#7 A=32'hFB; #7 B=32'hB; #7 OP=0; #7 FLAGS=FLAGS_OUT;#7 S=1; #7 ALU_OUT=1;
	#8 $display("*** Testing XOR ***");
	#9 A=32'hFB; #9 B=32'hB; #9 OP=1; #9 FLAGS=FLAGS_OUT;#9 S=1; #9 ALU_OUT=1;
	#10 A=1; #10 B=1; #10 OP=1; #10 FLAGS=FLAGS_OUT;#10 S=1; #10 ALU_OUT=1;
	#11 A=32'hF; #11 B=32'hF; #11 OP=1; #11 FLAGS=FLAGS_OUT;#11 S=1; #11 ALU_OUT=1;
	#12 A=32'h0F; #12 B=32'hF0; #12 OP=1; #12 FLAGS=FLAGS_OUT;#12 S=1; #12 ALU_OUT=1;
	#13 A=32'hF3; #13 B=32'hF1; #13 OP=1; #13 FLAGS=FLAGS_OUT;#13 S=1; #13 ALU_OUT=1;
	#14 A=32'h1111; #14 B=32'h1111; #14 OP=1; #14 FLAGS=FLAGS_OUT;#14 S=1; #14 ALU_OUT=1;
	#15 $display("*** Testin SUB ***");	
	#16 A=32'hFB; #16 B=32'hB; #16 OP=2; #16 FLAGS=FLAGS_OUT;#16 S=1; #16 ALU_OUT=1;
	#17 A=1; #17 B=1; #17 OP=2; #17 FLAGS=FLAGS_OUT;#17 S=1; #17 ALU_OUT=1;
	#18 A=32'hF; #18 B=32'hF; #18 OP=2; #18 FLAGS=FLAGS_OUT;#18 S=1; #18 ALU_OUT=1;
	#19 A=32'h0F; #19 B=32'hF0; #19 OP=2; #19 FLAGS=FLAGS_OUT;#19 S=1; #19 ALU_OUT=1;
	#20 A=32'hF3; #20 B=32'hF1; #20 OP=2; #20 FLAGS=FLAGS_OUT;#20 S=1; #20 ALU_OUT=1;
	#21 A=32'h1111; #21 B=32'h1111; #21 OP=2; #21 FLAGS=FLAGS_OUT;#21 S=1; #21 ALU_OUT=1;
	#22 $display("*** Testin RSB ***");	
	#23 A=32'hFB; #23 B=32'hB; #23 OP=3; #23 FLAGS=FLAGS_OUT; #23 S=1; #23 ALU_OUT=1;
	#24 A=1; #24 B=1; #24 OP=3; #24 FLAGS=FLAGS_OUT;#24 S=1; #24 ALU_OUT=1;
	#25 A=32'hF; #25 B=32'hF; #25 OP=3; #25 FLAGS=FLAGS_OUT; #25 S=1; #25 ALU_OUT=1;
	#26 A=32'h0F; #26 B=32'hF0; #26 OP=3; #26 FLAGS=FLAGS_OUT;#26 S=1; #26 ALU_OUT=1;
	#27 A=32'hF3; #27 B=32'hF1; #27 OP=3; #27 FLAGS=FLAGS_OUT;#27 S=1; #27 ALU_OUT=1;
	#28 A=32'h1111; #28 B=32'h1111; #28 OP=3; #28 FLAGS=FLAGS_OUT;#28 S=1; #28 ALU_OUT=1;
	#29 $display("*** Testin ADD ***");	
	#30 A=32'hFB; #30 B=32'hB; #30 OP=4; #30 FLAGS=FLAGS_OUT; #30 S=1; #30 ALU_OUT=1;
	#31 A=1; #31 B=1; #31 OP=4; #31 FLAGS=FLAGS_OUT;#31 S=1; #31 ALU_OUT=1;
	#32 A=32'hF; #32 B=32'hF; #32 OP=4; #32 FLAGS=FLAGS_OUT; #32 S=1; #32 ALU_OUT=1;
	#33 A=32'h0F; #33 B=32'hF0; #33 OP=4; #33 FLAGS=FLAGS_OUT;#33 S=1; #33 ALU_OUT=1;
	#34 A=32'hF3; #34 B=32'hF1; #34 OP=4; #34 FLAGS=FLAGS_OUT;#34 S=1; #34 ALU_OUT=1;
	#35 A=32'h1111; #35 B=32'h1111; #35 OP=4; #35 FLAGS=FLAGS_OUT;#35 S=1; #35 ALU_OUT=1;
	#36 $display("*** Testin ADC ***");	
	#37 A=32'hFB; #37 B=32'hB; #37 OP=5; #37 FLAGS=2; #37 S=1; #37 ALU_OUT=1;
	#38 A=1; #38 B=1; #38 OP=5; #38 FLAGS=2;#38 S=1; #38 ALU_OUT=1;
	#39 A=32'hF; #39 B=32'hF; #39 OP=5; #39 FLAGS=2; #39 S=1; #39 ALU_OUT=1;
	#40 A=32'h0F; #40 B=32'hF0; #40 OP=5; #40 FLAGS=2;#40 S=1; #40 ALU_OUT=1;
	#41 A=32'hF3; #41 B=32'hF1; #41 OP=5; #41 FLAGS=2;#41 S=1; #41 ALU_OUT=1;
	#42 A=32'h1111; #42 B=32'h1111; #42 OP=5; #42 FLAGS=2;#42 S=1; #42 ALU_OUT=1;
	#43 $display("*** Testin SBC ***");	
	#44 A=32'hFB; #44 B=32'hB; #44 OP=6; #44 FLAGS=0; #44 S=1; #44 ALU_OUT=1;
	#45 A=1; #45 B=1; #45 OP=6; #45 FLAGS=0;#45 S=1; #45 ALU_OUT=1;
	#46 A=32'hF; #46 B=32'hF; #46 OP=6; #46 FLAGS=0; #46 S=1; #46 ALU_OUT=1;
	#47 A=32'h0F; #47 B=32'hF0; #47 OP=6; #47 FLAGS=0;#47 S=1; #47 ALU_OUT=1;
	#48 A=32'hF3; #48 B=32'hF1; #48 OP=6; #48 FLAGS=0;#48 S=1; #48 ALU_OUT=1;
	#49 A=32'h1111; #49 B=32'h1111; #49 OP=6; #49 FLAGS=0;#49 S=1; #49 ALU_OUT=1;
	#50 $display("*** Testin RSC ***");	
	#51 A=32'hFB; #51 B=32'hB; #51 OP=7; #51 FLAGS=0; #51 S=1; #51 ALU_OUT=1;
	#52 A=1; #52 B=1; #52 OP=7; #52 FLAGS=0;#52 S=1; #52 ALU_OUT=1;
	#53 A=32'hF; #53 B=32'hF; #53 OP=7; #53 FLAGS=0; #53 S=1; #53 ALU_OUT=1;
	#54 A=32'h0F; #54 B=32'hF0; #54 OP=7; #54 FLAGS=0;#54 S=1; #54 ALU_OUT=1;
	#55 A=32'hF3; #55 B=32'hF1; #55 OP=7; #55 FLAGS=0;#55 S=1; #55 ALU_OUT=1;
	#56 A=32'h1111; #56 B=32'h1111; #56 OP=7; #56 FLAGS=0;#56 S=1; #56 ALU_OUT=1;
	#57 $display("*** Testin TST ***");	
	#58 A=32'hFB; #58 B=32'hB; #58 OP=8; #58 FLAGS=FLAGS_OUT; #58 S=1; #58 ALU_OUT=0;
	#59 A=1; #59 B=1; #59 OP=8; #59 FLAGS=FLAGS_OUT;#59 S=1; #59 ALU_OUT=0;
	#60 A=32'hF; #60 B=32'hF; #60 OP=8; #60 FLAGS=FLAGS_OUT; #60 S=1; #60 ALU_OUT=0;
	#61 A=32'h0F; #61 B=32'hF0; #61 OP=8; #61 FLAGS=FLAGS_OUT;#61 S=1; #61 ALU_OUT=0;
	#62 A=32'hF3; #62 B=32'hF1; #62 OP=8; #62 FLAGS=FLAGS_OUT;#62 S=1; #62 ALU_OUT=0;
	#63 A=32'h1111; #63 B=32'h1111; #63 OP=8; #63 FLAGS=FLAGS_OUT;#63 S=1; #63 ALU_OUT=0;
	#64 $display("*** Testin TEQ ***");	
	#65 A=32'hFB; #65 B=32'hB; #65 OP=9; #65 FLAGS=FLAGS_OUT; #65 S=1; #65 ALU_OUT=0;
	#66 A=1; #66 B=1; #66 OP=9; #66 FLAGS=FLAGS_OUT;#66 S=1; #66 ALU_OUT=0;
	#67 A=32'hF; #67 B=32'hF; #67 OP=9; #67 FLAGS=FLAGS_OUT; #67 S=1; #67 ALU_OUT=0;
	#68 A=32'h0F; #68 B=32'hF0; #68 OP=9; #68 FLAGS=FLAGS_OUT;#68 S=1; #68 ALU_OUT=0;
	#69 A=32'hF3; #69 B=32'hF1; #69 OP=9; #69 FLAGS=FLAGS_OUT;#69 S=1; #69 ALU_OUT=0;
	#70 A=32'h1111; #70 B=32'h1111; #70 OP=9; #70 FLAGS=FLAGS_OUT;#70 S=1; #70 ALU_OUT=0;
	#71 $display("*** Testin CMP ***");	
	#72 A=32'hFB; #72 B=32'hB; #72 OP=10; #72 FLAGS=FLAGS_OUT; #72 S=1; #72 ALU_OUT=0;
	#73 A=1; #73 B=1; #73 OP=10; #73 FLAGS=FLAGS_OUT;#73 S=1; #73 ALU_OUT=0;
	#74 A=32'hF; #74 B=32'hF; #74 OP=10; #74 FLAGS=FLAGS_OUT; #74 S=1; #74 ALU_OUT=0;
	#75 A=32'h0F; #75 B=32'hF0; #75 OP=10; #75 FLAGS=FLAGS_OUT;#75 S=1; #75 ALU_OUT=0;
	#76 A=32'hF3; #76 B=32'hF1; #76 OP=10; #76 FLAGS=FLAGS_OUT;#76 S=1; #76 ALU_OUT=0;
	#77 A=32'h1111; #77 B=32'h1111; #77 OP=10; #77 FLAGS=FLAGS_OUT;#77 S=1; #77 ALU_OUT=0;
	#78 $display("*** Testin CMN ***");	
	#79 A=32'hFB; #79 B=32'hB; #79 OP=11; #79 FLAGS=FLAGS_OUT; #79 S=1; #79 ALU_OUT=0;
	#80 A=1; #80 B=1; #80 OP=11; #80 FLAGS=FLAGS_OUT;#80 S=1; #80 ALU_OUT=0;
	#81 A=32'hF; #81 B=32'hF; #81 OP=11; #81 FLAGS=FLAGS_OUT; #81 S=1; #81 ALU_OUT=0;
	#82 A=32'h0F; #82 B=32'hF0; #82 OP=11; #82 FLAGS=FLAGS_OUT;#82 S=1; #82 ALU_OUT=0;
	#83 A=32'hF3; #83 B=32'hF1; #83 OP=11; #83 FLAGS=FLAGS_OUT;#83 S=1; #83 ALU_OUT=0;
	#84 A=32'h1111; #84 B=32'h1111; #84 OP=11; #84 FLAGS=FLAGS_OUT;#84 S=1; #84 ALU_OUT=0;
	#85 $display("*** Testin ORR ***");	
	#86 A=32'hFB; #86 B=32'hB; #86 OP=12; #86 FLAGS=FLAGS_OUT; #86 S=1; #86 ALU_OUT=1;
	#87 A=1; #87 B=1; #87 OP=12; #87 FLAGS=FLAGS_OUT;#87 S=1; #87 ALU_OUT=1;
	#88 A=32'hF; #88 B=32'hF; #88 OP=12; #88 FLAGS=FLAGS_OUT; #88 S=1; #88 ALU_OUT=1;
	#89 A=32'h0F; #89 B=32'hF0; #89 OP=12; #89 FLAGS=FLAGS_OUT;#89 S=1; #89 ALU_OUT=1;
	#90 A=32'hF3; #90 B=32'hF1; #90 OP=12; #90 FLAGS=FLAGS_OUT;#90 S=1; #90 ALU_OUT=1;
	#91 A=32'h1111; #91 B=32'h1111; #91 OP=12; #91 FLAGS=FLAGS_OUT;#91 S=1; #91 ALU_OUT=1;
	#92 $display("*** Testin BIC ***");	
	#93 A=32'hFB; #93 B=32'hB; #93 OP=14; #93 FLAGS=FLAGS_OUT; #93 S=1; #93 ALU_OUT=1;
	#94 A=1; #94 B=1; #94 OP=14; #94 FLAGS=FLAGS_OUT;#94 S=1; #94 ALU_OUT=1;
	#95 A=32'hF; #95 B=32'hF; #95 OP=14; #95 FLAGS=FLAGS_OUT; #95 S=1; #95 ALU_OUT=1;
	#96 A=32'h0F; #96 B=32'hF0; #96 OP=14; #96 FLAGS=FLAGS_OUT;#96 S=1; #96 ALU_OUT=1;
	#97 A=32'hF3; #97 B=32'hF1; #97 OP=14; #97 FLAGS=FLAGS_OUT;#97 S=1; #97 ALU_OUT=1;
	#98 A=32'h1111; #98 B=32'h1111; #98 OP=14; #98 FLAGS=FLAGS_OUT;#98 S=1; #98 ALU_OUT=1;
	#99 $display("*** Testin MVN ***");	
	#100 A=32'hFB; #100 B=32'hB; #100 OP=15; #100 FLAGS=FLAGS_OUT; #100 S=1; #100 ALU_OUT=1;
	#101 A=1; #101 B=1; #101 OP=15; #101 FLAGS=FLAGS_OUT;#101 S=1; #101 ALU_OUT=1;
	#102 A=32'hF; #102 B=32'hF; #102 OP=15; #102 FLAGS=FLAGS_OUT; #102 S=1; #102 ALU_OUT=1;
	#103 A=32'h0F; #103 B=32'hF0; #103 OP=15; #103 FLAGS=FLAGS_OUT;#103 S=1; #103 ALU_OUT=1;
	#104 A=32'hF3; #104 B=32'hF1; #104 OP=15; #104 FLAGS=FLAGS_OUT;#104 S=1; #104 ALU_OUT=1;
	#105 A=32'h1111; #105 B=32'h1111; #105 OP=15; #105 FLAGS=FLAGS_OUT;#105 S=1; #105 ALU_OUT=1;
	#106 $display("*** Testin BYPASS ***");	
	#107 A=32'hFB; #107 B=32'hB; #107 OP=16; #107 FLAGS=FLAGS_OUT; #107 S=1; #107 ALU_OUT=1;
	#108 A=1; #108 B=1; #108 OP=16; #108 FLAGS=FLAGS_OUT;#108 S=1; #108 ALU_OUT=1;
	#109 A=32'hF; #109 B=32'hF; #109 OP=16; #109 FLAGS=FLAGS_OUT; #109 S=1; #109 ALU_OUT=1;
	#110 A=32'h0F; #110 B=32'hF0; #110 OP=16; #110 FLAGS=FLAGS_OUT;#110 S=1; #110 ALU_OUT=1;
	#111 A=32'hF3; #111 B=32'hF1; #111 OP=16; #111 FLAGS=FLAGS_OUT;#111 S=1; #111 ALU_OUT=1;
	#112 A=32'h1111; #112 B=32'h1111; #112 OP=16; #112 FLAGS=FLAGS_OUT;#112 S=1; #112 ALU_OUT=1;
	#113 $display("*** Testin INC ***");	
	#114 A=32'hFB; #114 B=32'hB; #114 OP=17; #114 FLAGS=FLAGS_OUT; #114 S=1; #114 ALU_OUT=1;
	#115 A=1; #115 B=1; #115 OP=17; #115 FLAGS=FLAGS_OUT;#115 S=1; #115 ALU_OUT=1;
	#116 A=32'hF; #116 B=32'hF; #116 OP=17; #116 FLAGS=FLAGS_OUT; #116 S=1; #116 ALU_OUT=1;
	#117 A=32'h0F; #117 B=32'hF0; #117 OP=17; #117 FLAGS=FLAGS_OUT;#117 S=1; #117 ALU_OUT=1;
	#118 A=32'hF3; #118 B=32'hF1; #118 OP=17; #118 FLAGS=FLAGS_OUT;#118 S=1; #118 ALU_OUT=1;
	#119 A=32'h1111; #119 B=32'h1111; #119 OP=17; #119 FLAGS=FLAGS_OUT;#119 S=1; #119 ALU_OUT=1;
join
	
initial #sim_time $finish; 

initial begin
	$dumpfile("ARM_ALU_TestBench.vcd");
	$dumpvars(0,ARM_ALU_TestBench);
	$display(" Test Results" );
	$display("*** Testing And ***");
	$monitor("A=%4h,B=%4h,OP=%3d,Out=%3h,FLAGS_OUT=%3d,FLAGS=%3d,S=%3d,ALU_OUT=%3d",A,B,OP,Out,FLAGS_OUT,FLAGS,S,ALU_OUT);
end

endmodule
//iverilog ARM_ALU.v ARM_ALU_TestBench.v