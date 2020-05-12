function [Lq,Ls,Wq,Ws,ro] = m_m_1_queueK(l,m,K)
ro = l/m;
if l == m
    P0 = 1/(K+1);
else
    P0 = (1-ro)/(1-ro^(K+1));
end
PK = P0*ro^K;
Ls = ro/(1-ro)-((K+1)*ro^(K+1))/(1-ro^(K+1)+eps);
Lq = Ls-ro*(1-PK);
Ws = Ls/(l*(1-PK));
Wq = Ws-1/m;