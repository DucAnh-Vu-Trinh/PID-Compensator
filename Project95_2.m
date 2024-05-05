syms s
sys1 = tf([1 8],[1 3]);
sys2 = tf([1 88],[1 6]);
sys3 = tf(1, [1 10]);
sys4 = tf([1 0.2], [1 0]);
sys = sys1*sys2*sys3*sys4;
rlocus(sys)
rltool(sys)
 