%% Constants for SERGIO Arm %%
%% Max Baeten			 	%%
%% Dec 2016					%%

% To Do
% Make class such as TUe_Constants Class
% Was the wrist not controlled?
% Get rid of degrees and convert to radians

%% General
Fs = 1000;
Ts = 1/Fs;

%% Encoder Counts per turn
CPT_m1 = 500*4;
CPT_m2 = 500*4;
CPT_m3 = 500*4;
CPT_m4 = 500;
CPT_m5 = 500;
CPT_m6 = 512;
CPT_m7 = 512;


%% Gearbox Ratio's				% To do add GB numbers of maxon
GR_maxon_m1 = 204687/2057; 
GR_maxon_m2 = 204687/2057; 
GR_maxon_m3 = 226233/3179; 
GR_maxon_m4 = 3249/121;
GR_maxon_m5 = 3249/121;
GR_maxon_m6 = 15/4;
GR_maxon_m7 = 15/4;

GR_custom_m1 = 60/20;
GR_custom_m2 = 60/20;
GR_custom_m3 = 90/24;
GR_custom_m4 = 60/1;
GR_custom_m5 = 60/1;

GR_m1 = GR_maxon_m1*GR_custom_m1;
GR_m2 = GR_maxon_m2*GR_custom_m2;
GR_m3 = GR_maxon_m3*GR_custom_m3;
GR_m4 = GR_maxon_m4*GR_custom_m4;
GR_m5 = GR_maxon_m5*GR_custom_m5;
GR_m6 = GR_maxon_m6;
GR_m7 = GR_maxon_m7;

%% Controller Parameters
Kc 				= [2000, 	2000, 	500, 	80, 	800,	0.0,	0.0];
Kd 				= [4, 		4, 		2, 		0.005, 	0.5,	0.0,	0.0];
Ki 				= [10, 		10, 	10, 	0.01, 	10,		0.0,	0.0];
iLim 			= [10, 		10, 	10, 	2, 		10,		1.0, 	0.0];

JointLimitMin 	= [-129,   -5.7, 	0, 		0, 		-12.35,	-129,	-5.7];
JointLimitMax 	= [ 195,	178.3, 	182, 	129, 	278.5,  195,	178.3];
absLimMin		= [ 1217,	161,	4084,	135,	33,		1217,	395];
absLimMax		= [ 2374,	1666,	441,	2020,	3741,	2374,	3420];		
abs2deg = (JointLimitMax - JointLimitMin)/(absLimMax-absLimMax);