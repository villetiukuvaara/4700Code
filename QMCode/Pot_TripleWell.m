function [ U ] = Pot_TripleWell(x, paras)

dx = paras(1);
dw = paras(2);
x0 = paras(3);
a = paras(4);
b = paras(5);

if (x < x0 - dx - 1.5.*dw)
    U = a;
elseif(x < x0 - dx - 0.5.*dw)
    U = b;
elseif(x < x0 - 0.5.*dw)
    U = a;
elseif(x < x0 + 0.5*dw)
    U = b;
elseif(x < x0 + dx + 0.5.*dw)
    U = a;
elseif(x < x0 + dx + 1.5.*dw)
    U = b;
else
    U = a;
end

end
