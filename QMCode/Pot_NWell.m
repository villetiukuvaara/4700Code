function [ U ] = Pot_NWell(x, paras)

dx = paras(1);
dw = paras(2);
n = paras(3)
x0 = paras(4);
a = paras(5);
b = paras(6);

%U = a;
%if(mod(x,2) == 0) % Even number of wells
    delx = mod(abs(x-x0),dx+dw);
    if(x < x0 - dx*(n-1)/2 - dw*n/2)
        U = a;
    elseif(x > x0 + dx*(n-1)/2 + dw*n/2)
        U = a;
    else if(delx > dx/2 && delx < dx/2 + dw)
        U = b;
    else
        U = a;
    end
%else % Odd number of wells
%    U = a;
%end

end
