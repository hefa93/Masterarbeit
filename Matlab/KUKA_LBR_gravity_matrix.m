% vecGravityTor %

%initialization of dblGravityTor
dblGravityTor = [1;1;1;1;1;1;1];

%calculation of dblGravityTor
dblGravityTor(1,1) = 0;
dblGravityTor(2,1) = Kuka_LBR_param.dblGravityAcc*(Kuka_LBR_param.dblLink2Mass*(Kuka_LBR_param.dblLink2CogX*cos(q2) - Kuka_LBR_param.dblLink2CogY*sin(q2)) + Kuka_LBR_param.dblLink3Mass*(-((Kuka_LBR_param.dblLink23Len + Kuka_LBR_param.dblLink3CogZ)*sin(q2)) + cos(q2)*(Kuka_LBR_param.dblLink3CogX*cos(q3) - Kuka_LBR_param.dblLink3CogY*sin(q3))) - Kuka_LBR_param.dblLink4Mass*(sin(q2)*(Kuka_LBR_param.dblLink23Len - Kuka_LBR_param.dblLink4CogY*cos(q4) - Kuka_LBR_param.dblLink4CogX*sin(q4)) + cos(q2)*(Kuka_LBR_param.dblLink4CogZ*sin(q3) + cos(q3)*(-(Kuka_LBR_param.dblLink4CogX*cos(q4)) + Kuka_LBR_param.dblLink4CogY*sin(q4)))) - Kuka_LBR_param.dblLink5Mass*(sin(q2)*(Kuka_LBR_param.dblLink23Len + (Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink5CogZ)*cos(q4) - Kuka_LBR_param.dblLink5CogX*cos(q5)*sin(q4) + Kuka_LBR_param.dblLink5CogY*sin(q4)*sin(q5)) + cos(q2)*(sin(q3)*(Kuka_LBR_param.dblLink5CogY*cos(q5) + Kuka_LBR_param.dblLink5CogX*sin(q5)) - cos(q3)*((Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink5CogZ)*sin(q4) + cos(q4)*(Kuka_LBR_param.dblLink5CogX*cos(q5) - Kuka_LBR_param.dblLink5CogY*sin(q5))))) + Kuka_LBR_param.dblLink6Mass*(-(sin(q2)*(Kuka_LBR_param.dblLink23Len - Kuka_LBR_param.dblLink6CogX*cos(q5)*cos(q6)*sin(q4) - Kuka_LBR_param.dblLink6CogZ*sin(q4)*sin(q5) + Kuka_LBR_param.dblLink6CogY*cos(q5)*sin(q4)*sin(q6) + cos(q4)*(Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink6CogY*cos(q6) + Kuka_LBR_param.dblLink6CogX*sin(q6)))) + cos(q2)*(sin(q3)*(Kuka_LBR_param.dblLink6CogZ*cos(q5) + sin(q5)*(-(Kuka_LBR_param.dblLink6CogX*cos(q6)) + Kuka_LBR_param.dblLink6CogY*sin(q6))) + cos(q3)*(sin(q4)*(Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink6CogY*cos(q6) + Kuka_LBR_param.dblLink6CogX*sin(q6)) + cos(q4)*(Kuka_LBR_param.dblLink6CogX*cos(q5)*cos(q6) + Kuka_LBR_param.dblLink6CogZ*sin(q5) - Kuka_LBR_param.dblLink6CogY*cos(q5)*sin(q6))))) + Kuka_LBR_param.dblLink7Mass*(-(sin(q2)*(Kuka_LBR_param.dblLink23Len + Kuka_LBR_param.dblLink7CogY*cos(q7)*sin(q4)*sin(q5) + Kuka_LBR_param.dblLink7CogX*sin(q4)*sin(q5)*sin(q7) + cos(q5)*sin(q4)*(-(Kuka_LBR_param.dblLink7CogX*cos(q6)*cos(q7)) + Kuka_LBR_param.dblLink7CogZ*sin(q6) + Kuka_LBR_param.dblLink7CogY*cos(q6)*sin(q7)) + cos(q4)*(Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink7CogZ*cos(q6) + Kuka_LBR_param.dblLink7CogX*cos(q7)*sin(q6) - Kuka_LBR_param.dblLink7CogY*sin(q6)*sin(q7)))) + cos(q2)*(-(sin(q3)*(cos(q5)*(Kuka_LBR_param.dblLink7CogY*cos(q7) + Kuka_LBR_param.dblLink7CogX*sin(q7)) + sin(q5)*(Kuka_LBR_param.dblLink7CogX*cos(q6)*cos(q7) - Kuka_LBR_param.dblLink7CogZ*sin(q6) - Kuka_LBR_param.dblLink7CogY*cos(q6)*sin(q7)))) + cos(q3)*(sin(q4)*(Kuka_LBR_param.dblLink45Len + Kuka_LBR_param.dblLink7CogZ*cos(q6) + Kuka_LBR_param.dblLink7CogX*cos(q7)*sin(q6) - Kuka_LBR_param.dblLink7CogY*sin(q6)*sin(q7)) - cos(q4)*(sin(q5)*(Kuka_LBR_param.dblLink7CogY*cos(q7) + Kuka_LBR_param.dblLink7CogX*sin(q7)) + cos(q5)*(-(Kuka_LBR_param.dblLink7CogX*cos(q6)*cos(q7)) + Kuka_LBR_param.dblLink7CogZ*sin(q6) + Kuka_LBR_param.dblLink7CogY*cos(q6)*sin(q7)))))));
dblGravityTor(3,1) = -(Kuka_LBR_param.dblGravityAcc*sin(q2)*(cos(q3)*(Kuka_LBR_param.dblLink3CogY*Kuka_LBR_param.dblLink3Mass + Kuka_LBR_param.dblLink4CogZ*Kuka_LBR_param.dblLink4Mass + cos(q5)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + sin(q5)*(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass - (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))) + sin(q3)*(Kuka_LBR_param.dblLink3CogX*Kuka_LBR_param.dblLink3Mass + sin(q4)*(-(Kuka_LBR_param.dblLink4CogY*Kuka_LBR_param.dblLink4Mass) + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink5CogZ*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink7Mass + (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))) + cos(q4)*(Kuka_LBR_param.dblLink4CogX*Kuka_LBR_param.dblLink4Mass - sin(q5)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + cos(q5)*(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass - (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))))));
dblGravityTor(4,1) = Kuka_LBR_param.dblGravityAcc*(cos(q3)*sin(q2)*(cos(q4)*(-(Kuka_LBR_param.dblLink4CogY*Kuka_LBR_param.dblLink4Mass) + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink5CogZ*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink7Mass + (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))) + sin(q4)*(-(Kuka_LBR_param.dblLink4CogX*Kuka_LBR_param.dblLink4Mass) + sin(q5)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + cos(q5)*(-(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass) + Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass*sin(q6) + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass*sin(q6) - cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))))) - cos(q2)*(sin(q4)*(-(Kuka_LBR_param.dblLink4CogY*Kuka_LBR_param.dblLink4Mass) + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink5CogZ*Kuka_LBR_param.dblLink5Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink45Len*Kuka_LBR_param.dblLink7Mass + (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))) + cos(q4)*(Kuka_LBR_param.dblLink4CogX*Kuka_LBR_param.dblLink4Mass - sin(q5)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + cos(q5)*(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass - (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))))));
dblGravityTor(5,1) = Kuka_LBR_param.dblGravityAcc*(cos(q5)*(cos(q2)*sin(q4)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + sin(q2)*sin(q3)*(-(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass) + Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass*sin(q6) + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass*sin(q6) - cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))) + sin(q5)*(sin(q2)*sin(q3)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + cos(q2)*sin(q4)*(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass - (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))) - cos(q3)*cos(q4)*sin(q2)*(cos(q5)*(Kuka_LBR_param.dblLink5CogY*Kuka_LBR_param.dblLink5Mass - Kuka_LBR_param.dblLink6CogZ*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*cos(q7) + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*sin(q7)) + sin(q5)*(Kuka_LBR_param.dblLink5CogX*Kuka_LBR_param.dblLink5Mass - (Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))));
dblGravityTor(6,1) = Kuka_LBR_param.dblGravityAcc*cos(q2)*(cos(q4)*(-((Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6)) + cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))) + cos(q5)*sin(q4)*((Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))) - Kuka_LBR_param.dblGravityAcc*sin(q2)*(-(sin(q3)*sin(q5)*((Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))) + cos(q3)*(sin(q4)*((Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*sin(q6) - cos(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7))) + cos(q4)*cos(q5)*((Kuka_LBR_param.dblLink6CogY*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogZ*Kuka_LBR_param.dblLink7Mass)*cos(q6) + sin(q6)*(Kuka_LBR_param.dblLink6CogX*Kuka_LBR_param.dblLink6Mass + Kuka_LBR_param.dblLink7CogX*Kuka_LBR_param.dblLink7Mass*cos(q7) - Kuka_LBR_param.dblLink7CogY*Kuka_LBR_param.dblLink7Mass*sin(q7)))));
dblGravityTor(7,1) = Kuka_LBR_param.dblGravityAcc*Kuka_LBR_param.dblLink7Mass*(Kuka_LBR_param.dblLink7CogY*cos(q6)*cos(q7)*sin(q2)*sin(q3)*sin(q5) + Kuka_LBR_param.dblLink7CogX*cos(q2)*cos(q7)*sin(q4)*sin(q5) - Kuka_LBR_param.dblLink7CogY*cos(q2)*cos(q4)*cos(q7)*sin(q6) + Kuka_LBR_param.dblLink7CogX*cos(q6)*sin(q2)*sin(q3)*sin(q5)*sin(q7) - Kuka_LBR_param.dblLink7CogY*cos(q2)*sin(q4)*sin(q5)*sin(q7) - Kuka_LBR_param.dblLink7CogX*cos(q2)*cos(q4)*sin(q6)*sin(q7) + cos(q5)*(-(Kuka_LBR_param.dblLink7CogX*cos(q7)*sin(q2)*sin(q3)) + Kuka_LBR_param.dblLink7CogY*cos(q2)*cos(q6)*cos(q7)*sin(q4) + Kuka_LBR_param.dblLink7CogY*sin(q2)*sin(q3)*sin(q7) + Kuka_LBR_param.dblLink7CogX*cos(q2)*cos(q6)*sin(q4)*sin(q7)) - cos(q3)*sin(q2)*(sin(q4)*sin(q6)*(Kuka_LBR_param.dblLink7CogY*cos(q7) + Kuka_LBR_param.dblLink7CogX*sin(q7)) + cos(q4)*(cos(q5)*cos(q6)*(Kuka_LBR_param.dblLink7CogY*cos(q7) + Kuka_LBR_param.dblLink7CogX*sin(q7)) + sin(q5)*(Kuka_LBR_param.dblLink7CogX*cos(q7) - Kuka_LBR_param.dblLink7CogY*sin(q7)))));

