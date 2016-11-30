%afiseaza semnalul meu - valoarea maxima e 1
t=0:0.002:90;
M=zeros(1,length(t));
for i=1:1:length(t)
for n=0:1:500
if (t(i)>=n*40 & t(i)<n*40+4)
M(i)=t(i)/4-n*10;
elseif (t(i)>=n*40+4 & t(i)<n*40+8)
M(i)=-t(i)/4+2+n*10;
elseif (t(i)>=n*40+8 & t(i)<(n+1)*40)
M(i)=0;
end
end
end
h=figure;
set(h,'name','Semnalul cu valoarea maxima 1','numbertitle','off')
plot(t,M,'-b'),xlabel('t[s]'),ylabel('x(t)'),grid

%acelasi lucru, dar cu valoarea maxima generala E introdusa de utilizator
prompt='Cat sa fie nivelul maxim al semnalului? ';
E=input(prompt);

t=0:0.002:90;
M=zeros(1,length(t));
for i=1:1:length(t)
for n=0:1:500
if (t(i)>=n*40 & t(i)<n*40+4)
M(i)=E*t(i)/4-n*E*10;
elseif (t(i)>=n*40+4 & t(i)<n*40+8)
M(i)=-t(i)*E/4+2*E+n*E*10;
elseif (t(i)>=n*40+8 & t(i)<(n+1)*40)
M(i)=0;
end
end
end
h=figure;
set(h,'name','Semnalul cu valoarea maxima E','numbertitle','off')
plot(t,M,'-b'),xlabel('t[s]'),ylabel('x(t)'),grid