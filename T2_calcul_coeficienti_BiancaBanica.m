%ne cream semnalul triunghiular cu perioada P=40[s], durata semnalului
%D=4[s], nivelul maxim 1 si nivelul minim 0; pe o perioada concreta (o-40s)
e=2.71828;
i=sqrt(-1);
P=40;
%w este omega
%functia noastra este x(t)=t/4, pt. t in [0,4); 
%                         =-t/4 + 2, pt. t in [4, 8);
%                         =0, pt. t in [8,40).
%asadar, integrala pentru C(kw) se va imparti intr-una de la 0 la 4 care
%merge dupa prima lege, si inca una de la 4 la 8 care merge dupa a doua
%lege

%utilizatorul poate introduce numarul k de la tastatura, pentru a specifica
%ce coeficient doreste sa fie calculat
prompt='Pentru ce k doriti coeficientul?(metoda 1)  ';
k=input(prompt);
if(k==0)
fun1=@(t) 0.25.*t;
format short
q=integral(fun1,0,4);
fun2=@(t) -0.25.*t+2;
format short
r=integral(fun2,4,8);
C=1/P.*(q+r);
fprintf('coeficientul C(0) este \r')
disp(C)
else
fun1=@(t) 0.25.*t.*e.^(-i.*t.*k.*pi/20);
format short
q=integral(fun1,0,4);
fun2=@(t) (-0.25.*t+2).*e.^(-i.*t.*k.*pi/20);
format short
r=integral(fun2,4,8);
fprintf('coeficientul C(%dw) este \r', k)
disp(1/P.*(q+r))
end

%SAU, conform calculelor,
%C(kw)=(0.5*e^(-j*k*pi/5)-025-0.25*e^(-2*j*k*pi/5))/k^2
prompt='Pentru ce k doriti coeficientul?(metoda 2)  ';
k=input(prompt);
if(k==0)
fun1=@(t) 0.25.*t;
format short
q=integral(fun1,0,4);
fun2=@(t) -0.25.*t+2;
format short
r=integral(fun2,4,8);
C=1/P.*(q+r);
fprintf('coeficientul C(0) este \r')
disp(C)
else
C=(0.5*e^(-i*k*pi/5)-0.25-0.25*e^(-2*i*k*pi/5))/k^2;
fprintf('coeficientul C(%dw) este \r', k)
disp(C)
end

%se observa ca rezultatele sunt (aproximativ) egale
