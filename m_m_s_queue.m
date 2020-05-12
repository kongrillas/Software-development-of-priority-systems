function [Lq,Ls,Wq,Ws,ro] = m_m_s_queue(l,m,s) 
sum = 0;
for i=0:s-1
    sum = sum + 1/factorial(i)*((l/m)^i);
end
P0 = 1/(sum + 1/factorial(s)*((l/m)^s)*((s*m)/(s*m-l)));
ro = l/(s*m);
Ls = ((l*m*(l/m)^s)/(factorial(s-1)*(s*m-l)^2))*P0+l/m;
Ws = Ls/l;
Lq = Ls - l/m;
Wq = Lq/l;
