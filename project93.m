s = tf('s');
sys1 = 1/(s*(s+7));
rltool(sys1) %Control System Tool
rlocus(sys) %Draw Root Locus
K = 58.81;
G1 = feedback(K*sys1, 1);
step(G1) % Step Response
hold on

p = -7+13.6728i;
K = abs(p*(p+7)*(p+9.6)/p+3);
sys2 = (s+3)/(s+9.6) * sys1;
rltool(sys2)
G2 = feedback(K*sys2, 1);
step(G2)
sys3 = (s+0.0919)/(s+0.01)*sys2;
G3 = feedback(K*sys3, 1);

tfinal = 10000;
[y, t] = step(G3/s, tfinal);
steady_state = y(end) - t(end)

t = 0:0.01:tfinal;
ramp = t;      
[y,t] = lsim(G3,ramp,t);
steady_state = y(end) - t(end)