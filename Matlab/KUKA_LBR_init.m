%INIT%

%Initialize parameters

run KUKA_LBR_parameters

%Create Simulink bus objects
Kuka_LBR_param_simu = Kuka_LBR_param;
Simulink.Bus.createObject(Kuka_LBR_param_simu);
Kuka_LBR_param_simu_Type = slBus1;
clear slBus1;
Kuka_LBR_param_simu = Simulink.Parameter(Kuka_LBR_param_simu);
Kuka_LBR_param_simu.DataType  = 'Bus: Kuka_LBR_param_simu_Type';


% endtime trajectory

 T = 3;

%Initial state

x1_0  = 0;
x2_0  = 0;
x3_0  = 0;
x4_0  = 0;
x5_0  = 0;
x6_0  = 0;
x7_0  = 0;
x8_0  = 0;
x9_0  = 0;
x10_0 = 0;
x11_0 = 0;
x12_0 = 0;
x13_0 = 0;
x14_0 = 0;

KUKA_LBR_x0 = [x1_0 x2_0 x3_0 x4_0 x5_0 x6_0 x7_0 x8_0 x9_0 x10_0 x11_0 x12_0 x13_0 x14_0];


%Initialization of the desired endeffector position and orientation

vecPosDes   = [0 0 Kuka_LBR_param.dblLink23Len +  Kuka_LBR_param.dblLink45Len +  Kuka_LBR_param.dblLink67Len];
rpyDes      = [113.31 -34.42 21.31];
rpyDes      = rpyDes * pi/180;



%Global confifuration

vecGlobalConfig = [1 1 1];
elbowAngle = 0;
elbowAngle = elbowAngle * pi/180;

%Init K for analytic Jacobian calculation

k_ind = -1;

KAnaJacNum = [k_ind 0 0 0 0 0 ; ...
               0  k_ind 0 0 0 0 ; ...
                  0 0 k_ind 0 0 0 ; ...
                    0 0 0 k_ind 0 0 ; ...
                      0 0 0 0 k_ind 0 ; ...
                        0 0 0 0 0 k_ind ; ...
                          ];
                         


