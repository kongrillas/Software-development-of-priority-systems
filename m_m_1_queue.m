function [Lq,Ls,Wq,Ws,ro] = m_m_1_queue(l,m)
ro = l/m;
Ls = ro/(1-ro);
Lq = ro^2/(1-ro);
Wq = Lq/l;
Ws = Ls/l;