syms s
sys1 = tf([1 8],[1 3]);
sys2 = tf(1,[1 6]);
sys3 = tf(1, [1 10]);
sys = sys1*sys2*sys3;
% rlocus(sys)

eta = sqrt(log(10/3)^2/(pi^2+log(10/3)^2));
% Define the angle in radians
angle_rad = deg2rad(180-acosd(eta));

% Define the length of the line
length = 50; % Adjust this value as needed

% Calculate the coordinates of the end point
x_end = length * cos(angle_rad);
y_end = length * sin(angle_rad);

% Plot the line
% hold on
% plot([0, x_end], [0, y_end], '-');
% axis equal; % Ensure equal scaling on x and y axes

% rltool(sys)