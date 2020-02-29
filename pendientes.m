
clear x y vx vy rect LICmovie
% Trayectorias y(x) de la ecuación diferencial dy/dx=x.^2+y.^2

[x,y] = meshgrid(-2:0.004:2,-2:0.004:2);

vx=ones(size(x));
vy=- (x.^2+y.^2); % Let remark me the minus sign!

[rect, LICmovie] = explorevfield(vy,vx, colormap([0.5,0.5,0.5])); % Ler remark me the interchange of vx and vy!
