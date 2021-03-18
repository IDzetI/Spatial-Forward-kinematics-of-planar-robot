function S = eST(w,v,thetta)
    S_w = eye(3) + sin(thetta)*skew(w) + (1-cos(thetta))*skew(w)^2;
    S_v = eye(3)*thetta + (1-cos(thetta))*skew(w)+(thetta-sin(thetta))*skew(w)^2;
    S = [
     [S_w S_v*v]
     [zeros(1,3) 1]
    ];
end

