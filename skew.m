function v_s = skew(v)
    v_s = zeros(3);
    v_s(1,2) = -v(3);
    v_s(1,3) = v(2);
    v_s(2,3) = -v(1);
    v_s(2,1) = v(3);
    v_s(3,1) = -v(2);
    v_s(3,2) = v(1);
end

