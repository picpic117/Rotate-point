function Rotate=caseDrotate(Origin, angle)
% This function is used to rotate the coordinates of case D. The rotated coordinates can be obtained by entering the angle of rotation
% Counterclockwise
sz = size(Origin);
Rotate = zeros(sz);
theta = (angle/360)*2*pi;
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

for i = 1:sz(1)
    Rotate(i,:) = Origin(i,:) * R;
end
result = Rotate;