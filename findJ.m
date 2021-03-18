function J = findJ(S,q)
    AdT_12 = AdT(S(1:3,1),S(4:6,1),q(1));
    AdT_23 = AdT(S(1:3,2),S(4:6,2),q(2));
    
    J = [S(:,1) AdT_12*S(:,2) AdT_12*AdT_23*S(:,3)];
end

