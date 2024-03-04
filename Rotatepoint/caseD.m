angle = 360;
sz = size(Origin);
Rotate = zeros(sz);
theta = (angle/360)*2*pi;
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

for i = 1:sz(1)
    Rotate(i,:) = Origin(i,:) * R;
end
