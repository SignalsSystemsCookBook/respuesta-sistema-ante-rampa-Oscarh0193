clc
clear all
C1=10e-6;
R1=1e3;
C1_R1=C1*R1;
Num=[1];
Den=[C1_R1 1];
Den2=[C1_R1 1 0 0];
S=tf('s');
fun_transf=tf(Num,Den)
Vin=1/S^2
Vout=tf(Num,Den2)
step(Vout/S)
%%sea fun_transf=(1/(SC1R1+1))*(1/(S^2))
%%Vout=1/[S^2(SC1R1+1)]
[r,p,k]=residue(Num,Den2)




