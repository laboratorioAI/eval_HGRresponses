function val = sat(val, minV, maxV)
% sat
%
% Inputs
% var1    descripci�n
%
% Outputs
% nameUser    salida descripci�n
%
% Ejemplo
%     = sat()
%

%%
if nargin == 1
    minV = 0;
    maxV = 100;
end

if val < minV
    val = minV;
elseif val > maxV
    val = maxV;
end
end
