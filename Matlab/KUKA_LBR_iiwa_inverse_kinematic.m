function [vecJointPos] = KUKA_LBR_iiwa_inverse_kinematic(vecPosDes_,quatOriDes_,jointsNum_,KUKA_LBR_param_,ellbowAngle_,vecGlobalConfig_)

 
%  * Creation of a new function that calculates the jointAngles of the robot arm
%  * The function works with three variables which are necessary for calculation
%  * vecJointPos describes the current state of the jointAngles
%  * vecPosDes describes the desired state of the jointAngles
%  quatOriDes describes the desired orientation of the tool as a quaternion
%  

% set Global configuration parameters
if vecGlobalConfig_(1,1) > 0 
    lefty = 1;
else 
    lefty = -1;
end

if vecGlobalConfig_(1,2) > 0 
    ellbowUp = 1;
else 
    ellbowUp = -1;
end

if vecGlobalConfig_(1,3) > 0 
    wristIn = 1;
else 
    wristIn = -1;
end


vecJointPos = [1,jointsNum_];
rotMatDes = quat2rotm(quatOriDes_);

limitsUpper = zeros(7,1);
limitsLower = zeros(7,1);

% Setting upper and lower limits for different joints
limitsUpper(1,1) = KUKA_LBR_param_.dblJoint1PosMax;
limitsUpper(2,1) = KUKA_LBR_param_.dblJoint2PosMax;
limitsUpper(3,1) = KUKA_LBR_param_.dblJoint3PosMax;
limitsUpper(4,1) = KUKA_LBR_param_.dblJoint4PosMax;
limitsUpper(5,1) = KUKA_LBR_param_.dblJoint5PosMax;
limitsUpper(6,1) = KUKA_LBR_param_.dblJoint6PosMax;
limitsUpper(7,1) = KUKA_LBR_param_.dblJoint7PosMax;

limitsLower(1,1) = KUKA_LBR_param_.dblJoint1PosMin;
limitsLower(2,1) = KUKA_LBR_param_.dblJoint2PosMin;
limitsLower(3,1) = KUKA_LBR_param_.dblJoint3PosMin;
limitsLower(4,1) = KUKA_LBR_param_.dblJoint4PosMin;
limitsLower(5,1) = KUKA_LBR_param_.dblJoint5PosMin;
limitsLower(6,1) = KUKA_LBR_param_.dblJoint6PosMin;
limitsLower(7,1) = KUKA_LBR_param_.dblJoint7PosMin;

%Vector from Base to shoulder
vecBasetoJoint2 = [0,0,KUKA_LBR_param.dblLinkBase1Len];

%Vector from Wrist to endeffector
vecJoint6to7 = [0,0,KUKA_LBR_param.dblLink67Len];

%vector from shoulder to wrist

vecJoint2to6 = vecPosDes_ - vecBasetoJoint2 - (rotMatDes * vecJoint6to7);

%calculate unit vector from shoulder to wrist

distJoint2To6 = norm(vecJoint2to6);

vecDirectionJoint2To6 = vecJoint2to6/distJoint2To6;

skewMatDirJoint2to6 = zeros(3,3);

skewMatDirJoint2to6(1,1) = 0;
skewMatDirJoint2to6(1,2) = -vecDirectionJoint2To6(3,1);
skewMatDirJoint2to6(1,3) = vecDirectionJoint2To6(2,1);
skewMatDirJoint2to6(2,1) = vecDirectionJoint2To6(3,1);
skewMatDirJoint2to6(2,2) = 0;
skewMatDirJoint2to6(2,3) = -vecDirectionJoint2To6(1,1);
skewMatDirJoint2to6(3,1) = -vecDirectionJoint2To6(2,1);
skewMatDirJoint2to6(3,2) = vecDirectionJoint2To6(1,1);
skewMatDirJoint2to6(3,3) = 0;

argument4 = (KUKA_LBR_param_.distJoint2To6.^2 - KUKA_LBR_param_.dblLink23Len.^2 - KUKA_LBR_param_.dblLink45Len.^2)/(2 * KUKA_LBR_param_.dblLink45Len *  KUKA_LBR_param_.dblLink23Len);

referenceAngle4 = ellbowUp * acos(checkArgument(argument4));

if (referenceAngle4 > limitsUpper(4,1) || referenceAngle4 < limitsLower(4,1) || isnan(referenceAngle4))
    ME =  MException(2,'limits of joint Angle 4 exceeded');
        throw(ME)

end

%calculation of help angles alpha and beta

argument_alpha = vecJoint2to6(3,1) / distJoint2To6;

alpha = asin(checkArgument(argument_alpha));

argument_beta = (KUKA_LBR_param_.dblLink23Len.^2 + distJoint2To6.^2 - KUKA_LBR_param_.dblLink45Len.^2)/( 2 * KUKA_LBR_param_.dblLink23Len * distJoint2To6);

beta = acos(checkArgument(argument_beta));

%calculation of reference Angle 1 wih alpha and beta

referenceAngle1 = atan2(vecJoint2to6(2,1),vecJoint2to6(1,1));

referenceAngle2 = pi/2 - alpha - ellbowUp * beta;

referenceAngle3 = 0;

%vecReferenceAngles = [referenceAngle1 , referenceAngle2, referenceAngle3, referenceAngle4];

IMat3x3 = eye(3);

rotMatEllbowAngle = IMat3x3 + sin(ellbowAngle_) * skewMatDirJoint2to6 + (1-cos(ellbowAngle_)) * skewMatDirJoint2to6.^2;

veclinklengths = [KUKA_LBR_param_.dblLinkBase1Len; 0; KUKA_LBR_param_.dblLink23Len; 0; KUKA_LBR_param_.dblLink45Len; 0; KUKA_LBR_param_.dblLink67Len];

vecRotbetweenJoints = [-pi/2, pi/2,pi/2,-pi/2,-pi/2,pi/2,0];

refTransMat0to1 = denavitHardenbergTransformation(0, vecRotbetweenJoints(1,1), veclinklengths(1), referenceAngle1);

refTransMat1to2 = denavitHardenbergTransformation(0, vecRotbetweenJoints(1,2), veclinklengths(2), referenceAngle2);

refTransMat2to3 = denavitHardenbergTransformation(0, vecRotbetweenJoints(1,3), veclinklengths(3), referenceAngle3);

refTransMat3to4 = denavitHardenbergTransformation(0, vecRotbetweenJoints(1,4), veclinklengths(4), referenceAngle4);

refTransMat0to3 = refTransMat0to1 + refTransMat1to2 + refTransMat2to3;

refTransMat0to4 = refTransMat0to3 + refTransMat3to4;


%Identification of the rotation matrices of the refernce syste%

refRotMat0to3 = refTransMat0to3(1:3,1:3);

refRotMat0to4 = refTransMat0to4(1:3,1:3);

coeffMatAs = skewMatDirJoint2to6 * refRotMat0to3;

coeffMatBs = - (skewMatDirJoint2to6 * skewMatDirJoint2to6) * refRotMat0to3;

coeffMatCs = (IMat3x3 + skewMatDirJoint2to6) * refRotMat0to3;

jointAngle1 = atan2(lefty * (-coeffMatAs(2,2) * sin(ellbowAngle_) ...
         - coeffMatBs(2,2) * cos(ellbowAngle_) - coeffMatCs(2,2)), ...
          lefty * (coeffMatAs(1,2) * sin(ellbowAngle) ... 
          - coeffMatBs(1,2) * cos(ellbowAngle_) - coeffMatCs(1,2)));
      
if (jointAngle1 > limitsUpper(1,1) || jointAngle1 < limitsLower(1,1)) 
 ME1 = MException(2,'Limits of joinAngle1 exceeded!');
        throw(ME1)
end

argument2 = -coeffMatAs(3,2) * sin(ellbowAngle) ...
            - coeffMatBs(3,2) * cos(ellbowAngle) ...
            - coeffMatCs(3,2);
        
jointAngle2 = lefty * acos(checkArgument(argument2));

if (jointAngle2 > limitsUpper(2,1) || jointAngle2 < limitsLower(2,1))
    ME2 = MException(3,'Limits of joinAngle2 exceeded!');
        throw(ME2)
end

jointAngle3 = atan2(lefty * coeffMatAs(3,3) * sin(ellbowAngle) ...
                    + coeffMatBs(3,3) * cos(ellbowAngle) ...
                    + coeffMatCs(2,2), ... 
                    lefty * (-coeffMatAs(3,1) * sin(ellbowAngle)...
                    - coeffMatBs(3,1) * cos(ellbowAngle) ...
                    - coeffMatCs(3,1)));

if (jointAngle3 > limitsUpper(3,1) || jointAngle3 < limitsLower(3,1))
    ME3 = MException(4,'Limits of joinAngle3 exceeded!');
        throw(ME3)   
end

jointAngle4 = referenceAngle4;

if (jointAngle4 > limitsUpper(4,1) || jointAngle4 < limitsLower(4,1))
    ME4 = MException(5,'Limits of joinAngle4 exceeded!');
        throw(ME4)   
end

rotMat0to3 = rotMatEllbowAngle * refRotMat0to3;
rotMat0to4 = rotMatEllbowAngle * refRotMat0to4;
rotMat3to4 = transpose(rotMat0to3) * rotMat0to4;

coeffMatAw = transpose(rotMat3to4) * transpose(coeffMatAs) * rotMatDes;
coeffMatBw = transpose(rotMat3to4) * transpose(coeffMatBs) * rotMatDes;
coeffMatCw = transpose(rotMat3to4) * transpose(coeffMatCs) * rotmatDes;

%Calculation of jointAngle5 with the coefficient matrices

jointAngle5 = atan2(wristIn * coeffMatAw(2,3) * sin(ellbowAngle) ...
              + coeefMatBw(2,3) * cos(ellbowAngle) ... 
              + coeffMatCw(2,3), ...
              wristIn *(coeffMatAw(1,3) * sin(ellbowAngle) ...
              + coeffMatBw(1,3) * cos(ellbowAngle) ...
              + coeffMatCw(1,3)));


if (jointAngle5 > limitsUpper(5,1) || jointAngle5 < limitsLower(5,1))
      ME5 = MException(6,'Limits of joinAngle5 exceeded!');
        throw(ME5)   
end 
    
argument6 = coeffMatAw(3,3) * sin(ellbowAngle) ...
            + coeffMatBw(3,3) * cos(ellbowAngle) ...
                  + coeffMatCw(3,3);

jointAngle6 = wristIn * acos(checkArgument(argument6));

if (jointAngle6 > limitsUpper(6,1) || jointAngle6 < limitsLower(6,1))
      ME6 = MException(7,'Limits of joinAngle6 exceeded!');
        throw(ME6)   
end 

jointAngle7 = atan2(wristIn * (coeffmatAw(3,2) * sin(ellbowAngle) ...
            + coeffMatBw(3,2) * cos(ellbowAngle) ...
            + coeffMatCw(3,2)), ...
            wristIn * (-coeffMatAw(3,1) * sin(ellbowAngle) ...
            - coeffMatBw(3,1) * cos(ellbowAngle)...
            -coeffMatCw(3,1)));

if (jointAngle7 > limitsUpper(7,1) || jointAngle7 < limitsLower(7,1))
      ME7 = MException(8,'Limits of joinAngle7 exceeded!');
        throw(ME7)   
end

    vecJointPos(1,1) = jointAngle1;
    vecJointPos(1,2) = jointAngle2;
    vecJointPos(1,3) = jointAngle3;
    vecJointPos(1,4) = -jointAngle4;
    vecJointPos(1,5) = jointAngle5;
    vecJointPos(1,6) = jointAngle6;
    vecJointPos(1,7) = jointAngle7;
end



function [rotmat] = denavitHardenbergTransformation(alpha_,theta_,d_)


matRot = rotx(theta_) * rotz(alpha_);

vecTrans = [0;0;d_];

matTrans = [matRot vecTrans];

rotmat = [matTrans; 0 0 0 1];

end

function [argument_] = checkArgument(argument_)

if argument_ < -1.0
    if argument_ < -1.001
        ME = MException(1,'invalid argument');
        throw(ME)
    else
        argument_ = -1.0;
    end
elseif argument_ > 1.0
        if argument_ > 1.001
            ME = MException(1,'invalid argument');
        throw(ME)
        end
    else
        argument_ = 1.0;

end
end




