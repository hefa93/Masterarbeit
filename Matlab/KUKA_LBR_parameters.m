%Define%

M_PI_180 = pi/180;
M_180_Pi = 180/pi;


%Physical constants%
Kuka_LBR_param.dblGravityAcc = 9.81;

%Link lengths 
Kuka_LBR_param.dblLinkBaseLen = 0.1575;
Kuka_LBR_param.dblLink1Len = 0.2025;
Kuka_LBR_param.dblLink2Len = 0.2045;
Kuka_LBR_param.dblLink3Len = 0.2155;
Kuka_LBR_param.dblLink4Len = 0.2175;
Kuka_LBR_param.dblLink5Len = 0.1825;
Kuka_LBR_param.dblLink6Len = 0.081;
Kuka_LBR_param.dblLink7Len = 0.045;
Kuka_LBR_param.dblToolLenX = 0.0;
Kuka_LBR_param.dblToolLenY = 0.0;
Kuka_LBR_param.dblToolLenZ = 0.160;
Kuka_LBR_param.dblLinkBase1Len = Kuka_LBR_param.dblLinkBaseLen + Kuka_LBR_param.dblLink1Len;
Kuka_LBR_param.dblLink23Len = Kuka_LBR_param.dblLink2Len + Kuka_LBR_param.dblLink3Len;
Kuka_LBR_param.dblLink45Len = Kuka_LBR_param.dblLink4Len + Kuka_LBR_param.dblLink5Len;
Kuka_LBR_param.dblLink67Len = Kuka_LBR_param.dblLink6Len + Kuka_LBR_param.dblLink7Len;

Kuka_LBR_param.dblLink1CogX = -0.00351;
Kuka_LBR_param.dblLink1CogY = 0.00160;
Kuka_LBR_param.dblLink1CogZ = -0.03139;
Kuka_LBR_param.dblLink2CogX = -0.00767;
Kuka_LBR_param.dblLink2CogY = 0.16669;
Kuka_LBR_param.dblLink2CogZ = -0.00355;
Kuka_LBR_param.dblLink3CogX = -0.00225;
Kuka_LBR_param.dblLink3CogY = -0.03492;
Kuka_LBR_param.dblLink3CogZ = -0.02652;
Kuka_LBR_param.dblLink4CogX = 0.00020;
Kuka_LBR_param.dblLink4CogY = -0.05268;
Kuka_LBR_param.dblLink4CogZ = 0.03818;
Kuka_LBR_param.dblLink5CogX = 0.00005;
Kuka_LBR_param.dblLink5CogY = -0.00237;
Kuka_LBR_param.dblLink5CogZ = -0.21134;
Kuka_LBR_param.dblLink6CogX = 0.00049;
Kuka_LBR_param.dblLink6CogY = 0.02019;
Kuka_LBR_param.dblLink6CogZ = -0.02750;
Kuka_LBR_param.dblLink7CogX = -0.03466;
Kuka_LBR_param.dblLink7CogY = -0.02324;
Kuka_LBR_param.dblLink7CogZ = 0.07138;
Kuka_LBR_param.dblToolCogX = 0.0;
Kuka_LBR_param.dblToolCogY = 0.0;
Kuka_LBR_param.dblToolCogZ = 0.1;

%Link mass %
Kuka_LBR_param.dblLink1Mass = 3.94781;
Kuka_LBR_param.dblLink2Mass = 4.50275;
Kuka_LBR_param.dblLink3Mass = 2.45520;
Kuka_LBR_param.dblLink4Mass = 2.61155;
Kuka_LBR_param.dblLink5Mass = 3.41000;
Kuka_LBR_param.dblLink6Mass = 3.38795;
Kuka_LBR_param.dblLink7Mass = 0.35432;

% Link inertia %
Kuka_LBR_param.dblLink1InertXX = 0.00455;
Kuka_LBR_param.dblLink1InertXY = 0.00000;
Kuka_LBR_param.dblLink1InertXZ = -0.00000;
Kuka_LBR_param.dblLink1InertYY = 0.00454;
Kuka_LBR_param.dblLink1InertYZ = 0.00001;
Kuka_LBR_param.dblLink1InertZZ = 0.00029;
Kuka_LBR_param.dblLink2InertXX = 0.00032;
Kuka_LBR_param.dblLink2InertXY = 0.00000;
Kuka_LBR_param.dblLink2InertXZ = 0.00000;
Kuka_LBR_param.dblLink2InertYY = 0.00010;
Kuka_LBR_param.dblLink2InertYZ = -0.00000;
Kuka_LBR_param.dblLink2InertZZ = 0.00042;
Kuka_LBR_param.dblLink3InertXX = 0.00223;
Kuka_LBR_param.dblLink3InertXY = -0.00005;
Kuka_LBR_param.dblLink3InertXZ = 0.00007;
Kuka_LBR_param.dblLink3InertYY = 0.00219;
Kuka_LBR_param.dblLink3InertYZ = 0.00007;
Kuka_LBR_param.dblLink3InertZZ = 0.00073;
Kuka_LBR_param.dblLink4InertXX = 0.03844;
Kuka_LBR_param.dblLink4InertXY = 0.00088;
Kuka_LBR_param.dblLink4InertXZ = -0.00112;
Kuka_LBR_param.dblLink4InertYY = 0.01144;
Kuka_LBR_param.dblLink4InertYZ = -0.00111;
Kuka_LBR_param.dblLink4InertZZ = 0.04988;
Kuka_LBR_param.dblLink5InertXX = 0.00277;
Kuka_LBR_param.dblLink5InertXY = -0.00001;
Kuka_LBR_param.dblLink5InertXZ = 0.00001;
Kuka_LBR_param.dblLink5InertYY = 0.00284;
Kuka_LBR_param.dblLink5InertYZ = -0.00000;
Kuka_LBR_param.dblLink5InertZZ = 0.00012;
Kuka_LBR_param.dblLink6InertXX = 0.00050;
Kuka_LBR_param.dblLink6InertXY = -0.00005;
Kuka_LBR_param.dblLink6InertXZ = -0.00003;
Kuka_LBR_param.dblLink6InertYY = 0.00281;
Kuka_LBR_param.dblLink6InertYZ = -0.00004;
Kuka_LBR_param.dblLink6InertZZ = 0.00232;
Kuka_LBR_param.dblLink7InertXX = 0.00795;
Kuka_LBR_param.dblLink7InertXY = 0.00022;
Kuka_LBR_param.dblLink7InertXZ = -0.00029;
Kuka_LBR_param.dblLink7InertYY = 0.01089;
Kuka_LBR_param.dblLink7InertYZ = -0.00029;
Kuka_LBR_param.dblLink7InertZZ = 0.00294;

Kuka_LBR_param.dblJoint1InertXX = Kuka_LBR_param.dblLink1InertXX;
Kuka_LBR_param.dblJoint1InertXY = Kuka_LBR_param.dblLink1InertXY;
Kuka_LBR_param.dblJoint1InertXZ = Kuka_LBR_param.dblLink1InertXZ;
Kuka_LBR_param.dblJoint1InertYY = Kuka_LBR_param.dblLink1InertYY;
Kuka_LBR_param.dblJoint1InertYZ = Kuka_LBR_param.dblLink1InertYZ;
Kuka_LBR_param.dblJoint1InertZZ = Kuka_LBR_param.dblLink1InertZZ;
Kuka_LBR_param.dblJoint2InertXX = Kuka_LBR_param.dblLink2InertXX;
Kuka_LBR_param.dblJoint2InertXY = Kuka_LBR_param.dblLink2InertXY;
Kuka_LBR_param.dblJoint2InertXZ = Kuka_LBR_param.dblLink2InertXZ;
Kuka_LBR_param.dblJoint2InertYY = Kuka_LBR_param.dblLink2InertYY;
Kuka_LBR_param.dblJoint2InertYZ = Kuka_LBR_param.dblLink2InertYZ;
Kuka_LBR_param.dblJoint2InertZZ = Kuka_LBR_param.dblLink2InertZZ;
Kuka_LBR_param.dblJoint3InertXX = Kuka_LBR_param.dblLink3InertXX;
Kuka_LBR_param.dblJoint3InertXY = Kuka_LBR_param.dblLink3InertXY;
Kuka_LBR_param.dblJoint3InertXZ = Kuka_LBR_param.dblLink3InertXZ;
Kuka_LBR_param.dblJoint3InertYY = Kuka_LBR_param.dblLink3InertYY;
Kuka_LBR_param.dblJoint3InertYZ = Kuka_LBR_param.dblLink3InertYZ;
Kuka_LBR_param.dblJoint3InertZZ = Kuka_LBR_param.dblLink3InertZZ;
Kuka_LBR_param.dblJoint4InertXX = Kuka_LBR_param.dblLink4InertXX;
Kuka_LBR_param.dblJoint4InertXY = Kuka_LBR_param.dblLink4InertXY;
Kuka_LBR_param.dblJoint4InertXZ = Kuka_LBR_param.dblLink4InertXZ;
Kuka_LBR_param.dblJoint4InertYY = Kuka_LBR_param.dblLink4InertYY;
Kuka_LBR_param.dblJoint4InertYZ = Kuka_LBR_param.dblLink4InertYZ;
Kuka_LBR_param.dblJoint4InertZZ = Kuka_LBR_param.dblLink4InertZZ;
Kuka_LBR_param.dblJoint5InertXX = Kuka_LBR_param.dblLink5InertXX;
Kuka_LBR_param.dblJoint5InertXY = Kuka_LBR_param.dblLink5InertXY;
Kuka_LBR_param.dblJoint5InertXZ = Kuka_LBR_param.dblLink5InertXZ;
Kuka_LBR_param.dblJoint5InertYY = Kuka_LBR_param.dblLink5InertYY;
Kuka_LBR_param.dblJoint5InertYZ = Kuka_LBR_param.dblLink5InertYZ;
Kuka_LBR_param.dblJoint5InertZZ = Kuka_LBR_param.dblLink5InertZZ;
Kuka_LBR_param.dblJoint6InertXX = Kuka_LBR_param.dblLink6InertXX;
Kuka_LBR_param.dblJoint6InertXY = Kuka_LBR_param.dblLink6InertXY;
Kuka_LBR_param.dblJoint6InertXZ = Kuka_LBR_param.dblLink6InertXZ;
Kuka_LBR_param.dblJoint6InertYY = Kuka_LBR_param.dblLink6InertYY;
Kuka_LBR_param.dblJoint6InertYZ = Kuka_LBR_param.dblLink6InertYZ;
Kuka_LBR_param.dblJoint6InertZZ = Kuka_LBR_param.dblLink6InertZZ;
Kuka_LBR_param.dblJoint7InertXX = Kuka_LBR_param.dblLink7InertXX;
Kuka_LBR_param.dblJoint7InertXY = Kuka_LBR_param.dblLink7InertXY;
Kuka_LBR_param.dblJoint7InertXZ = Kuka_LBR_param.dblLink7InertXZ;
Kuka_LBR_param.dblJoint7InertYY = Kuka_LBR_param.dblLink7InertYY;
Kuka_LBR_param.dblJoint7InertYZ = Kuka_LBR_param.dblLink7InertYZ;
Kuka_LBR_param.dblJoint7InertZZ = Kuka_LBR_param.dblLink7InertZZ;


% Joint position limits %
Kuka_LBR_param.dblJoint1PosMax =  170.0 * M_PI_180;
Kuka_LBR_param.dblJoint1PosMin = -170.0 * M_PI_180;
Kuka_LBR_param.dblJoint2PosMax =  120.0 * M_PI_180;
Kuka_LBR_param.dblJoint2PosMin = -120.0 * M_PI_180;
Kuka_LBR_param.dblJoint3PosMax =  170.0 * M_PI_180;
Kuka_LBR_param.dblJoint3PosMin = -170.0 * M_PI_180;
Kuka_LBR_param.dblJoint4PosMax =  120.0 * M_PI_180;
Kuka_LBR_param.dblJoint4PosMin = -120.0 * M_PI_180;
Kuka_LBR_param.dblJoint5PosMax =  170.0 * M_PI_180;
Kuka_LBR_param.dblJoint5PosMin = -170.0 * M_PI_180;
Kuka_LBR_param.dblJoint6PosMax =  120.0 * M_PI_180;
Kuka_LBR_param.dblJoint6PosMin = -120.0 * M_PI_180;
Kuka_LBR_param.dblJoint7PosMax =  175.0 * M_PI_180;
Kuka_LBR_param.dblJoint7PosMin = -175.0 * M_PI_180;

% Joint velocity limits %
Kuka_LBR_param.dblJoint1VelMax =   85.0 * M_PI_180;
Kuka_LBR_param.dblJoint1VelMin =  -85.0 * M_PI_180;
Kuka_LBR_param.dblJoint2VelMax =   85.0 * M_PI_180;
Kuka_LBR_param.dblJoint2VelMin =  -85.0 * M_PI_180;
Kuka_LBR_param.dblJoint3VelMax =  100.0 * M_PI_180;
Kuka_LBR_param.dblJoint3VelMin = -100.0 * M_PI_180;
Kuka_LBR_param.dblJoint4VelMax =   75.0 * M_PI_180;
Kuka_LBR_param.dblJoint4VelMin =  -75.0 * M_PI_180;
Kuka_LBR_param.dblJoint5VelMax =  130.0 * M_PI_180;
Kuka_LBR_param.dblJoint5VelMin = -130.0 * M_PI_180;
Kuka_LBR_param.dblJoint6VelMax =  130.0 * M_PI_180;
Kuka_LBR_param.dblJoint6VelMin = -130.0 * M_PI_180;
Kuka_LBR_param.dblJoint7VelMax =  130.0 * M_PI_180;
Kuka_LBR_param.dblJoint7VelMin = -130.0 * M_PI_180;

% Joint friction constants %
Kuka_LBR_param.dblJoint1FricVis  = 0.24150;
Kuka_LBR_param.dblJoint1FricStat = 0.31909;
Kuka_LBR_param.dblJoint2FricVis  = 0.37328;
Kuka_LBR_param.dblJoint2FricStat = 0.18130;
Kuka_LBR_param.dblJoint3FricVis  = 0.11025;
Kuka_LBR_param.dblJoint3FricStat = 0.07302;
Kuka_LBR_param.dblJoint4FricVis  = 0.10000;
Kuka_LBR_param.dblJoint4FricStat = 0.17671;
Kuka_LBR_param.dblJoint5FricVis  = 0.10000;
Kuka_LBR_param.dblJoint5FricStat = 0.03463;
Kuka_LBR_param.dblJoint6FricVis  = 0.12484;
Kuka_LBR_param.dblJoint6FricStat = 0.13391;
Kuka_LBR_param.dblJoint7FricVis  = 0.10000;
Kuka_LBR_param.dblJoint7FricStat = 0.08710;

% Simplified parameters %
Kuka_LBR_param.dblLink1MassCogX = Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogX;
Kuka_LBR_param.dblLink1MassCogY = Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogY;
Kuka_LBR_param.dblLink1MassCogZ = Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogZ;
Kuka_LBR_param.dblJoint1InertFrameXX = Kuka_LBR_param.dblJoint1InertXX + Kuka_LBR_param.dblLink1Mass * (power(Kuka_LBR_param.dblLink1CogY, 2) + power(Kuka_LBR_param.dblLink1CogZ, 2));
Kuka_LBR_param.dblJoint1InertFrameXY = Kuka_LBR_param.dblJoint1InertXY - Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogX * Kuka_LBR_param.dblLink1CogY;
Kuka_LBR_param.dblJoint1InertFrameXZ = Kuka_LBR_param.dblJoint1InertXZ - Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogX * Kuka_LBR_param.dblLink1CogZ;
Kuka_LBR_param.dblJoint1InertFrameYY = Kuka_LBR_param.dblJoint1InertYY + Kuka_LBR_param.dblLink1Mass * (power(Kuka_LBR_param.dblLink1CogX, 2) + power(Kuka_LBR_param.dblLink1CogZ, 2));
Kuka_LBR_param.dblJoint1InertFrameYZ = Kuka_LBR_param.dblJoint1InertYZ - Kuka_LBR_param.dblLink1Mass * Kuka_LBR_param.dblLink1CogY * Kuka_LBR_param.dblLink1CogZ;
Kuka_LBR_param.dblJoint1InertFrameZZ = Kuka_LBR_param.dblJoint1InertZZ + Kuka_LBR_param.dblLink1Mass * (power(Kuka_LBR_param.dblLink1CogX, 2) + power(Kuka_LBR_param.dblLink1CogY, 2));

Kuka_LBR_param.dblLink2MassCogX = Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogX;
Kuka_LBR_param.dblLink2MassCogY = Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogY;
Kuka_LBR_param.dblLink2MassCogZ = Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogZ;
Kuka_LBR_param.dblJoint2InertFrameXX = Kuka_LBR_param.dblJoint2InertXX + Kuka_LBR_param.dblLink2Mass * (power(Kuka_LBR_param.dblLink2CogY, 2) + power(Kuka_LBR_param.dblLink2CogZ, 2));
Kuka_LBR_param.dblJoint2InertFrameXY = Kuka_LBR_param.dblJoint2InertXY - Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogX * Kuka_LBR_param.dblLink2CogY;
Kuka_LBR_param.dblJoint2InertFrameXZ = Kuka_LBR_param.dblJoint2InertXZ - Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogX * Kuka_LBR_param.dblLink2CogZ;
Kuka_LBR_param.dblJoint2InertFrameYY = Kuka_LBR_param.dblJoint2InertYY + Kuka_LBR_param.dblLink2Mass * (power(Kuka_LBR_param.dblLink2CogX, 2) + power(Kuka_LBR_param.dblLink2CogZ, 2));
Kuka_LBR_param.dblJoint2InertFrameYZ = Kuka_LBR_param.dblJoint2InertYZ - Kuka_LBR_param.dblLink2Mass * Kuka_LBR_param.dblLink2CogY * Kuka_LBR_param.dblLink2CogZ;
Kuka_LBR_param.dblJoint2InertFrameZZ = Kuka_LBR_param.dblJoint2InertZZ + Kuka_LBR_param.dblLink2Mass * (power(Kuka_LBR_param.dblLink2CogX, 2) + power(Kuka_LBR_param.dblLink2CogY, 2));

Kuka_LBR_param.dblLink3MassCogX = Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogX;
Kuka_LBR_param.dblLink3MassCogY = Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogY;
Kuka_LBR_param.dblLink3MassCogZ = Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogZ;
Kuka_LBR_param.dblJoint3InertFrameXX = Kuka_LBR_param.dblJoint3InertXX + Kuka_LBR_param.dblLink3Mass * (power(Kuka_LBR_param.dblLink3CogY, 2) + power(Kuka_LBR_param.dblLink3CogZ, 2));
Kuka_LBR_param.dblJoint3InertFrameXY = Kuka_LBR_param.dblJoint3InertXY - Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogX * Kuka_LBR_param.dblLink3CogY;
Kuka_LBR_param.dblJoint3InertFrameXZ = Kuka_LBR_param.dblJoint3InertXZ - Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogX * Kuka_LBR_param.dblLink3CogZ;
Kuka_LBR_param.dblJoint3InertFrameYY = Kuka_LBR_param.dblJoint3InertYY + Kuka_LBR_param.dblLink3Mass * (power(Kuka_LBR_param.dblLink3CogX, 2) + power(Kuka_LBR_param.dblLink3CogZ, 2));
Kuka_LBR_param.dblJoint3InertFrameYZ = Kuka_LBR_param.dblJoint3InertYZ - Kuka_LBR_param.dblLink3Mass * Kuka_LBR_param.dblLink3CogY * Kuka_LBR_param.dblLink3CogZ;
Kuka_LBR_param.dblJoint3InertFrameZZ = Kuka_LBR_param.dblJoint3InertZZ + Kuka_LBR_param.dblLink3Mass * (power(Kuka_LBR_param.dblLink3CogX, 2) + power(Kuka_LBR_param.dblLink3CogY, 2));

Kuka_LBR_param.dblLink4MassCogX = Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogX;
Kuka_LBR_param.dblLink4MassCogY = Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogY;
Kuka_LBR_param.dblLink4MassCogZ = Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogZ;
Kuka_LBR_param.dblJoint4InertFrameXX = Kuka_LBR_param.dblJoint4InertXX + Kuka_LBR_param.dblLink4Mass * (power(Kuka_LBR_param.dblLink4CogY, 2) + power(Kuka_LBR_param.dblLink4CogZ, 2));
Kuka_LBR_param.dblJoint4InertFrameXY = Kuka_LBR_param.dblJoint4InertXY - Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogX * Kuka_LBR_param.dblLink4CogY;
Kuka_LBR_param.dblJoint4InertFrameXZ = Kuka_LBR_param.dblJoint4InertXZ - Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogX * Kuka_LBR_param.dblLink4CogZ;
Kuka_LBR_param.dblJoint4InertFrameYY = Kuka_LBR_param.dblJoint4InertYY + Kuka_LBR_param.dblLink4Mass * (power(Kuka_LBR_param.dblLink4CogX, 2) + power(Kuka_LBR_param.dblLink4CogZ, 2));
Kuka_LBR_param.dblJoint4InertFrameYZ = Kuka_LBR_param.dblJoint4InertYZ - Kuka_LBR_param.dblLink4Mass * Kuka_LBR_param.dblLink4CogY * Kuka_LBR_param.dblLink4CogZ;
Kuka_LBR_param.dblJoint4InertFrameZZ = Kuka_LBR_param.dblJoint4InertZZ + Kuka_LBR_param.dblLink4Mass * (power(Kuka_LBR_param.dblLink4CogX, 2) + power(Kuka_LBR_param.dblLink4CogY, 2));

Kuka_LBR_param.dblLink5MassCogX = Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogX;
Kuka_LBR_param.dblLink5MassCogY = Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogY;
Kuka_LBR_param.dblLink5MassCogZ = Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogZ;
Kuka_LBR_param.dblJoint5InertFrameXX = Kuka_LBR_param.dblJoint5InertXX + Kuka_LBR_param.dblLink5Mass * (power(Kuka_LBR_param.dblLink5CogY, 2) + power(Kuka_LBR_param.dblLink5CogZ, 2));
Kuka_LBR_param.dblJoint5InertFrameXY = Kuka_LBR_param.dblJoint5InertXY - Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogX * Kuka_LBR_param.dblLink5CogY;
Kuka_LBR_param.dblJoint5InertFrameXZ = Kuka_LBR_param.dblJoint5InertXZ - Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogX * Kuka_LBR_param.dblLink5CogZ;
Kuka_LBR_param.dblJoint5InertFrameYY = Kuka_LBR_param.dblJoint5InertYY + Kuka_LBR_param.dblLink5Mass * (power(Kuka_LBR_param.dblLink5CogX, 2) + power(Kuka_LBR_param.dblLink5CogZ, 2));
Kuka_LBR_param.dblJoint5InertFrameYZ = Kuka_LBR_param.dblJoint5InertYZ - Kuka_LBR_param.dblLink5Mass * Kuka_LBR_param.dblLink5CogY * Kuka_LBR_param.dblLink5CogZ;
Kuka_LBR_param.dblJoint5InertFrameZZ = Kuka_LBR_param.dblJoint5InertZZ + Kuka_LBR_param.dblLink5Mass * (power(Kuka_LBR_param.dblLink5CogX, 2) + power(Kuka_LBR_param.dblLink5CogY, 2));

Kuka_LBR_param.dblLink6MassCogX = Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogX;
Kuka_LBR_param.dblLink6MassCogY = Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogY;
Kuka_LBR_param.dblLink6MassCogZ = Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogZ;
Kuka_LBR_param.dblJoint6InertFrameXX = Kuka_LBR_param.dblJoint6InertXX + Kuka_LBR_param.dblLink6Mass * (power(Kuka_LBR_param.dblLink6CogY, 2) + power(Kuka_LBR_param.dblLink6CogZ, 2));
Kuka_LBR_param.dblJoint6InertFrameXY = Kuka_LBR_param.dblJoint6InertXY - Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogX * Kuka_LBR_param.dblLink6CogY;
Kuka_LBR_param.dblJoint6InertFrameXZ = Kuka_LBR_param.dblJoint6InertXZ - Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogX * Kuka_LBR_param.dblLink6CogZ;
Kuka_LBR_param.dblJoint6InertFrameYY = Kuka_LBR_param.dblJoint6InertYY + Kuka_LBR_param.dblLink6Mass * (power(Kuka_LBR_param.dblLink6CogX, 2) + power(Kuka_LBR_param.dblLink6CogZ, 2));
Kuka_LBR_param.dblJoint6InertFrameYZ = Kuka_LBR_param.dblJoint6InertYZ - Kuka_LBR_param.dblLink6Mass * Kuka_LBR_param.dblLink6CogY * Kuka_LBR_param.dblLink6CogZ;
Kuka_LBR_param.dblJoint6InertFrameZZ = Kuka_LBR_param.dblJoint6InertZZ + Kuka_LBR_param.dblLink6Mass * (power(Kuka_LBR_param.dblLink6CogX, 2) + power(Kuka_LBR_param.dblLink6CogY, 2));

Kuka_LBR_param.dblLink7MassCogX = Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogX;
Kuka_LBR_param.dblLink7MassCogY = Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogY;
Kuka_LBR_param.dblLink7MassCogZ = Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogZ;
Kuka_LBR_param.dblJoint7InertFrameXX = Kuka_LBR_param.dblJoint7InertXX + Kuka_LBR_param.dblLink7Mass * (power(Kuka_LBR_param.dblLink7CogY, 2) + power(Kuka_LBR_param.dblLink7CogZ, 2));
Kuka_LBR_param.dblJoint7InertFrameXY = Kuka_LBR_param.dblJoint7InertXY - Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogX * Kuka_LBR_param.dblLink7CogY;
Kuka_LBR_param.dblJoint7InertFrameXZ = Kuka_LBR_param.dblJoint7InertXZ - Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogX * Kuka_LBR_param.dblLink7CogZ;
Kuka_LBR_param.dblJoint7InertFrameYY = Kuka_LBR_param.dblJoint7InertYY + Kuka_LBR_param.dblLink7Mass * (power(Kuka_LBR_param.dblLink7CogX, 2) + power(Kuka_LBR_param.dblLink7CogZ, 2));
Kuka_LBR_param.dblJoint7InertFrameYZ = Kuka_LBR_param.dblJoint7InertYZ - Kuka_LBR_param.dblLink7Mass * Kuka_LBR_param.dblLink7CogY * Kuka_LBR_param.dblLink7CogZ;
Kuka_LBR_param.dblJoint7InertFrameZZ = Kuka_LBR_param.dblJoint7InertZZ + Kuka_LBR_param.dblLink7Mass * (power(Kuka_LBR_param.dblLink7CogX, 2) + power(Kuka_LBR_param.dblLink7CogY, 2));

% Reduced parameters %
Kuka_LBR_param.dblJoint7InertFrameXXRed = Kuka_LBR_param.dblJoint7InertFrameXX - Kuka_LBR_param.dblJoint7InertFrameYY;
Kuka_LBR_param.dblJoint7InertFrameZZRed = Kuka_LBR_param.dblJoint7InertFrameZZ;

Kuka_LBR_param.dblLink6MassRed = Kuka_LBR_param.dblLink7Mass + Kuka_LBR_param.dblLink7Mass;
Kuka_LBR_param.dblLink6MassCogYRed = Kuka_LBR_param.dblLink6MassCogY + Kuka_LBR_param.dblLink7MassCogZ;
Kuka_LBR_param.dblJoint6InertFrameXXRed = Kuka_LBR_param.dblJoint6InertFrameXX - Kuka_LBR_param.dblJoint6InertFrameYY + Kuka_LBR_param.dblJoint7InertFrameYY;
Kuka_LBR_param.dblJoint6InertFrameZZRed = Kuka_LBR_param.dblJoint6InertFrameZZ + Kuka_LBR_param.dblJoint6InertFrameYY;

Kuka_LBR_param.dblLink5MassRed = Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink6MassRed;
Kuka_LBR_param.dblLink5MassCogYRed = Kuka_LBR_param.dblLink5MassCogY - Kuka_LBR_param.dblLink6MassCogZ;
Kuka_LBR_param.dblJoint5InertFrameXXRed = Kuka_LBR_param.dblJoint5InertFrameXX - Kuka_LBR_param.dblJoint5InertFrameYY + Kuka_LBR_param.dblJoint6InertFrameYY;
Kuka_LBR_param.dblJoint5InertFrameZZRed = Kuka_LBR_param.dblJoint5InertFrameZZ + Kuka_LBR_param.dblJoint6InertFrameYY;

Kuka_LBR_param.dblLink4MassRed = Kuka_LBR_param.dblLink4Mass + Kuka_LBR_param.dblLink5MassRed;
Kuka_LBR_param.dblLink4MassCogYRed = Kuka_LBR_param.dblLink4MassCogY - Kuka_LBR_param.dblLink5MassCogZ - Kuka_LBR_param.dblLink45Len * Kuka_LBR_param.dblLink5Mass;
Kuka_LBR_param.dblJoint4InertFrameXXRed = Kuka_LBR_param.dblJoint4InertFrameXX - Kuka_LBR_param.dblJoint4InertFrameYY + Kuka_LBR_param.dblJoint5InertFrameYY + 2.0 * Kuka_LBR_param.dblLink45Len * Kuka_LBR_param.dblLink5MassCogZ + power(Kuka_LBR_param.dblLink45Len, 2) * Kuka_LBR_param.dblLink5MassRed;
Kuka_LBR_param.dblJoint4InertFrameZZRed = Kuka_LBR_param.dblJoint4InertFrameZZ + Kuka_LBR_param.dblJoint5InertFrameYY + 2.0 * Kuka_LBR_param.dblLink45Len * Kuka_LBR_param.dblLink5MassCogZ + power(Kuka_LBR_param.dblLink45Len, 2) * Kuka_LBR_param.dblLink5MassRed;

Kuka_LBR_param.dblLink3MassRed = Kuka_LBR_param.dblLink3Mass + Kuka_LBR_param.dblLink4MassRed;
Kuka_LBR_param.dblLink3MassCogYRed = Kuka_LBR_param.dblLink3MassCogY + Kuka_LBR_param.dblLink4MassCogZ;
Kuka_LBR_param.dblJoint3InertFrameXXRed = Kuka_LBR_param.dblJoint3InertFrameXX - Kuka_LBR_param.dblJoint3InertFrameYY + Kuka_LBR_param.dblJoint4InertFrameYY;
Kuka_LBR_param.dblJoint3InertFrameZZRed = Kuka_LBR_param.dblJoint3InertFrameZZ + Kuka_LBR_param.dblJoint4InertFrameYY;

Kuka_LBR_param.dblLink2MassCogYRed = Kuka_LBR_param.dblLink2MassCogY + Kuka_LBR_param.dblLink3MassCogZ + Kuka_LBR_param.dblLink23Len * Kuka_LBR_param.dblLink3Mass;
Kuka_LBR_param.dblJoint2InertFrameXXRed = Kuka_LBR_param.dblJoint2InertFrameXX - Kuka_LBR_param.dblJoint2InertFrameYY + Kuka_LBR_param.dblJoint3InertFrameYY + 2.0 * Kuka_LBR_param.dblLink23Len * Kuka_LBR_param.dblLink3MassCogZ + power(Kuka_LBR_param.dblLink23Len, 2) * Kuka_LBR_param.dblLink3MassRed;
Kuka_LBR_param.dblJoint2InertFrameZZRed = Kuka_LBR_param.dblJoint2InertFrameZZ + Kuka_LBR_param.dblJoint3InertFrameYY + 2.0 * Kuka_LBR_param.dblLink23Len * Kuka_LBR_param.dblLink3MassCogZ + power(Kuka_LBR_param.dblLink23Len, 2) * Kuka_LBR_param.dblLink3MassRed;

Kuka_LBR_param.dblJoint1InertFrameZZRed = Kuka_LBR_param.dblJoint1InertFrameZZ + Kuka_LBR_param.dblJoint2InertFrameYY;

