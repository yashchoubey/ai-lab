%perceptron
clear all;
close all;

format long;
name=input("Enter file name: ","s");
A=dlmread(name,",");
n=size(A);
iter=input("Enter percentage of train data ");
for k= 1:1:4
	w(k)=rand*1000;
endfor
for k= 1:1:100
	ein(k)=0;
	eout(k)=0;
endfor

k=1;
iter=iter*n(1)/100;
while(k<=100)
i=1;
while(i<=iter)
	P=A(i,1:n(2)-1);
	result=w*P';

	if(A(i,n(2))==1 && result<0)
		w=w+P;
	endif
	
	if(A(i,n(2))==-1 && result>0)
		w=w-P;
	endif

	if((A(i,n(2))==-1 && result>0)||(A(i,n(2))==1 && result<0))
		ein(k)++;
	endif
	i=i+1;
endwhile

i=iter;
while(i<150)
	i=i+1;
	points=A(i,1:n(2)-1);
	final=w*points';
	if((A(i,n(2))==1 && final<0)||(A(i,n(2))==-1 && final>0))
		eout(k)++;
	endif
endwhile
k++;
endwhile
plot(ein,"b")
hold on
plot(eout,"r")
hold off
w'
