q1  = VecJoinPos.Data(:,1,:);
q2  = VecJoinPos.Data(:,2,:);
q3  = VecJoinPos.Data(:,3,:);
q4  = VecJoinPos.Data(:,4,:);
q5  = VecJoinPos.Data(:,5,:);
q6  = VecJoinPos.Data(:,6,:);
q7  = VecJoinPos.Data(:,7,:);

d07LenVec=[sin(q1).*((Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6)).*sin(q3).*sin(q4)+(-1).* ...
  Kuka_LBR_param.dblLink67Len.*(cos(q4).*cos(q5).*sin(q3)+cos(q3).*sin(q5)).*sin(q6))+ ...
  cos(q1).*(sin(q2).*(Kuka_LBR_param.dblLink23Len+cos(q4).*(Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.* ...
  cos(q6))+Kuka_LBR_param.dblLink67Len.*cos(q5).*sin(q4).*sin(q6))+cos(q2).*((-1).*cos( ...
  q3).*(Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6)).*sin(q4)+Kuka_LBR_param.dblLink67Len.*(cos( ...
  q3).*cos(q4).*cos(q5)+(-1).*sin(q3).*sin(q5)).*sin(q6))),cos(q1).*((-1) ...
  .*(Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6)).*sin(q3).*sin(q4)+Kuka_LBR_param.dblLink67Len.*( ...
  cos(q4).*cos(q5).*sin(q3)+cos(q3).*sin(q5)).*sin(q6))+sin(q1).*(sin(q2) ...
  .*(Kuka_LBR_param.dblLink23Len+cos(q4).*(Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6))+ ...
  Kuka_LBR_param.dblLink67Len.*cos(q5).*sin(q4).*sin(q6))+cos(q2).*((-1).*cos(q3).*( ...
  Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6)).*sin(q4)+Kuka_LBR_param.dblLink67Len.*(cos(q3).* ...
  cos(q4).*cos(q5)+(-1).*sin(q3).*sin(q5)).*sin(q6))),Kuka_LBR_param.dblLinkBase1Len+cos( ...
  q2).*(Kuka_LBR_param.dblLink23Len+cos(q4).*(Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6))+ ...
  Kuka_LBR_param.dblLink67Len.*cos(q5).*sin(q4).*sin(q6))+sin(q2).*(cos(q3).*( ...
  Kuka_LBR_param.dblLink45Len+Kuka_LBR_param.dblLink67Len.*cos(q6)).*sin(q4)+Kuka_LBR_param.dblLink67Len.*((-1).*cos( ...
  q3).*cos(q4).*cos(q5)+sin(q3).*sin(q5)).*sin(q6))];
d06LenVec=[cos(q1).*(Kuka_LBR_param.dblLink23Len+Kuka_LBR_param.dblLink45Len.*cos(q4)).*sin(q2)+Kuka_LBR_param.dblLink45Len.*(( ...
  -1).*cos(q1).*cos(q2).*cos(q3)+sin(q1).*sin(q3)).*sin(q4),(Kuka_LBR_param.dblLink23Len+ ...
  Kuka_LBR_param.dblLink45Len.*cos(q4)).*sin(q1).*sin(q2)+(-1).*Kuka_LBR_param.dblLink45Len.*(cos(q2).* ...
  cos(q3).*sin(q1)+cos(q1).*sin(q3)).*sin(q4),Kuka_LBR_param.dblLinkBase1Len+cos(q2).*( ...
  Kuka_LBR_param.dblLink23Len+Kuka_LBR_param.dblLink45Len.*cos(q4))+Kuka_LBR_param.dblLink45Len.*cos(q3).*sin(q2).*sin( ...
  q4)];
d05LenVec=[cos(q1).*(Kuka_LBR_param.dblLink23Len+Kuka_LBR_param.dblLink45Len.*cos(q4)).*sin(q2)+Kuka_LBR_param.dblLink45Len.*(( ...
  -1).*cos(q1).*cos(q2).*cos(q3)+sin(q1).*sin(q3)).*sin(q4),(Kuka_LBR_param.dblLink23Len+ ...
  Kuka_LBR_param.dblLink45Len.*cos(q4)).*sin(q1).*sin(q2)+(-1).*Kuka_LBR_param.dblLink45Len.*(cos(q2).* ...
  cos(q3).*sin(q1)+cos(q1).*sin(q3)).*sin(q4),Kuka_LBR_param.dblLinkBase1Len+cos(q2).*( ...
  Kuka_LBR_param.dblLink23Len+Kuka_LBR_param.dblLink45Len.*cos(q4))+Kuka_LBR_param.dblLink45Len.*cos(q3).*sin(q2).*sin( ...
  q4)];
d04LenVec=[Kuka_LBR_param.dblLink23Len.*cos(q1).*sin(q2),Kuka_LBR_param.dblLink23Len.*sin(q1).*sin(q2), ...
  Kuka_LBR_param.dblLinkBase1Len+Kuka_LBR_param.dblLink23Len.*cos(q2)];
d03LenVec=[Kuka_LBR_param.dblLink23Len.*cos(q1).*sin(q2),Kuka_LBR_param.dblLink23Len.*sin(q1).*sin(q2), ...
  Kuka_LBR_param.dblLinkBase1Len+Kuka_LBR_param.dblLink23Len.*cos(q2)];
d02LenVec=[0,0,Kuka_LBR_param.dblLinkBase1Len];
d01LenVec=[0,0,Kuka_LBR_param.dblLinkBase1Len];

for i = 1:47
    if mod(i,4) == 0
plot(vecReal.Data(:,1),vecReal.Data(:,2),[d02LenVec(1,1,1),d03LenVec(1,1,i)],[d02LenVec(1,3,1) ,d03LenVec(1,3,i)],'r-o', [d03LenVec(1,1,i),d06LenVec(1,1,i)],[d03LenVec(1,3,i),d06LenVec(1,3,i)] ,'g-o', [d06LenVec(1,1,i),d07LenVec(1,1,i)],[d06LenVec(1,3,i),d07LenVec(1,3,i)] ,'k-o')
    end
hold on
axis equal
end
