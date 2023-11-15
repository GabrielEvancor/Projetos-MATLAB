clc; clear; close all force;

%comparacao 1
[phy_1,rho_1] = cart2pol(2,0);
[r1, theta1] = coordPolar(2, 0);
[r1 rho_1 r1-rho_1]
[theta1 phy_1 theta1-phy_1]

%comparacao 2
[phy_2,rho_2] = cart2pol(2,1);
[r2, theta2] = coordPolar(2, 1);
[r2 rho_2 r2-rho_2]
[theta2 phy_2 theta2-phy_2]

%comparacao 3
[phy_3,rho_3] = cart2pol(0,3);
[r3, theta3] = coordPolar(0, 3);
[r3 rho_3 r3-rho_3]
[theta3 phy_3 theta3-phy_3]

%comparacao 4
[phy_4,rho_4] = cart2pol(-3,1);
[r4, theta4] = coordPolar(-3, 1);
[r4 rho_4 r4-rho_4]
[theta4 phy_4 theta4-phy_4]

%comparacao 5
[phy_5,rho_5] = cart2pol(-2,0);
[r5, theta5] = coordPolar(-2,0);
[r5 rho_5 r5-rho_5]
[theta5 phy_5 theta5-phy_5]

%comparacao 6
[phy_6,rho_6] = cart2pol(-1,-2);
[r6, theta6] = coordPolar(-1, -2);
[r6 rho_6 r6-rho_6]
[theta6 phy_6 theta6-phy_6]

%comparacao 7
[phy_7,rho_7] = cart2pol(0,0);
[r7, theta7] = coordPolar(0, 0);
[r7 rho_7 r7-rho_7]
[theta7 phy_7 theta7-phy_7]

%comparacao 8
[phy_8,rho_8] = cart2pol(0,-2);
[r8, theta8] = coordPolar(0, -2);
[r8 rho_8 r8-rho_8]
[theta8 phy_8 theta8-phy_8]

%comparacao 9
[phy_9,rho_9] = cart2pol(2,2);
[r9, theta9] = coordPolar(2, 2);
[r9 rho_9 r9-rho_9]
[theta9 phy_9 theta9-phy_9]