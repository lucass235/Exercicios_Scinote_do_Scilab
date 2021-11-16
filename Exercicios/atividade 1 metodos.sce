//Lucas dos Santos Amorim Rego
// funcao sqrt(x)-5*e^-x;
// e = 0.5772;
// E = 0.001;
// derivada df(x)=1/(2*x^0.5)+5*%e^-x
// constante de euler (%e)
// intervalo da funcao [1.4,1.5]
n= 0;
function a= f(x), a = sqrt(x)-5*%e^-x, endfunction;
function a= df(x), a = 1/(2*x^0.5)+5*%e^-x, endfunction;
E = 0.001;
a=1.4;
b=1.5;
x=(a+b)/2
while(abs(f(x)) > E)
    n = n+1;
    x=x-f(x)/df(x)
    disp("Solução(x)",x,"f(x)",f(x)) 
end
disp("Nº de iterações",n,"Erro maximo",E) 


