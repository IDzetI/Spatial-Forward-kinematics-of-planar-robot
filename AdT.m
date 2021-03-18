function Ad = AdT(w,v,thetta)
    
    T = eST(w,v,thetta);
    
    R = T(1:3,1:3);
    p = T(1:3,4);
    
    Ad = [
    [R zeros(3)]
    [skew(p)*R R]
    ];

end

