function CaseDrotatepoint=caseDrotatepoint(originpoint, angle)
% This function is used to rotate the coordinates of case D. The rotated coordinates can be obtained by entering the angle of rotation

sz = size(originpoint);
A = zeros(sz(1),sz(2));
theta = angle/(2*pi);
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];

for i = 1:sz(1)
    A(i) = R * originpoint(i);
end
CaseDrotatepoint = A;
