
clear x y vx vy rect LICmovie
% Trajectories y(x) of the differential equation dy/dx=2.*y.^2-5.*y+x.

[x,y] = meshgrid(-1:0.004:3.5,-1:0.004:3.5);

vx=ones(size(x));
vy= -(2.*y.^2-5.*y+x); % Remark the minus sign before vy!

[rect, LICmovie] = explorevfield(vy,vx, colormap([0.5,0.5,0.5])) %  Remark  the interchange of vx and vy!
