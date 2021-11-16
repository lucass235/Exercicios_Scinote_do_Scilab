// Interpolação Polinomial Por Sistemas de equações lineares
clear
clc
x=[-1;0;2];
y=[4;1;-1];
A=[ones(3,1),x,x^2];
s=A\y;
P2=poly(s,"X","c");
r=horner(P2,-0.5)
disp(r,"Resposta para x=-0,5",P2,"Polinômio Interpolador")
