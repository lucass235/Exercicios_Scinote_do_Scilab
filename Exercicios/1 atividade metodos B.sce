//Lucas dos Santos Amorim Rego
// funcao 10^x + x^3 + 2;
// E = 0.001;
// intervalo da funcao [-1.5,-1];
// derivada da funcao df(x)=3*x^2+log(10)*10^x;
// constante de euler (%e);
e = 0.5772;
n= 0;
function a= f(x), a = 10^x + x^3 + 2, endfunction;
function a= df(x), a = 3*x^2+log(10)*10^x, endfunction;
E = 0.001;
a=-1.5;
b=-1;
x= (a+b)/2
while(abs(f(x)) > E)
    n = n+1;
    x=x-f(x)/df(x)
    disp("Solução(x)",x,"f(x)",f(x)) 
end
disp("Nº de iterações",n,"Erro maximo",E) 
