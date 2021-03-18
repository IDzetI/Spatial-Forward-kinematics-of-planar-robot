function T = FK(M,S,q)
    T = eST(S(1:3,1),S(4:6,1),q(1)) * eST(S(1:3,2),S(4:6,2),q(2)) * eST(S(1:3,3),S(4:6,3),q(3)) * M;
end

