function [ U ] = Pot_NWell(x, paras)

dx = paras(1);
dw = paras(2);
n = paras(3)
x0 = paras(4);
a = paras(5);
b = paras(6);

%U = a;
delx = mod(abs(x-x0),dx+dw);

if(mod(n,2) == 0) % Even number of wells
    if(x < x0 - dx*(n-1)/2 - dw*n/2)
        U = a;
    elseif(x > x0 + dx*(n-1)/2 + dw*n/2)
        U = a;
    elseif(delx > dx/2 && delx < dx/2 + dw)
        U = b;
    else
        U = a;
    end    
else % Odd number of wells
    if(x < x0 - dx*n/2 - dw*(n-1)/2)
        U = a;
    elseif(x > x0 + dx*n/2 + dw*(n-1)/2)
        U = a;
    elseif(delx < dw/2 || delx > dx + dw/2)
        U = b;
    else
        U = a;
    end 
end

end
