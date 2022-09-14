s = tf('s');

T = 1;

num = [1];
den = [T T/16 1];

sys = tf(num, den);

Kp = 1;
Ki = 9;

sys_c = tf([Kp, Ki], [1, 0]);

final = feedback(sys*sys_c, 1);

stepinfo(final)

hold on
% step(final/s)
impulse(final)
hold off