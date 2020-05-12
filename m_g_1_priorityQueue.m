function [L,W,T,R,ro] = m_g_1_priorityQueue(l,m)
ro = l./m;
R = 1/2*sum(l.*(1./m).^2);
W = [];
for i = 1:length(ro)
    tmp = 1;
    for j = 1:i
        if j == i
            tmp2 = tmp - ro(j);
        else
            tmp = tmp - ro(j);
        end
    end
    W(i) = R/(tmp*tmp2);
end
L = l.*W;
T = W + 1./m;