%calculez A_k pentru fiecare C(kw)
i=sqrt(-1);
e=2.71828;
k=-15:1:15;
A=ones(1,length(k));

for k=-15:1:15
fun1=@(t) 0.25.*t.*e.^(-i.*t.*k.*pi/20);
format short
q=integral(fun1,0,4);
fun2=@(t) (-0.25.*t+2).*e.^(-i.*t.*k.*pi/20);
format short
r=integral(fun2,4,8);
a=real(1/P.*(q+r));
b=imag(1/P.*(q+r));
A(k+16)=2.*sqrt(a.^2+b.^2);
end

%afisez spectrul de amplitudini
k=-15:1:15;
h=figure;
set(h,'name','Spectrul de amplitudini pentru semnalul cu valoarea maxima 1','numbertitle','off')
stem(k,A,'-b','filled'),xlabel('k'),ylabel('A_k'), grid
