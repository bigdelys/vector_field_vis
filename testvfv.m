% TESTVFV script generates an arbitrary vector field and shows VFV toolbox
% capabilities by exploring the vector field using EXPLOREVFIELD command.
 
warning off
width  = 100 * 3;
height = 200 * 3;
vx = ones(width, height); % components of vector field
vy = ones(width, height);
for i = 1:width % Make test vector field
    for j = 1:height
        vx(i,j)= -((width / 2) - i) / (i^2+j^2) * cos(i / 100);
        vy(i,j)= -(((height / 2)- j) )/ (i^2+j^2)+ vx(i,j) * sin(i/ 5);
    end;
end;
[rect, LICmovie] = explorevfield(vx,vy);
