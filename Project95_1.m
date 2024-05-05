eta = sqrt(log(10/3)^2/(pi^2+log(10/3)^2));
wn = 14/sqrt(1-eta^2);
Tp = pi/(wn*sqrt(1-eta^2));
Tpnew = 0.6*Tp;
wd = pi/(Tpnew);
wn = wd/sqrt(1-eta^2);

syms s
sDesired = -eta*wn + wd*1i
H = (s+8)/((s+10)*(s+6)*(s+3));
theta_zero = 180-rad2deg(double(angle(subs(H, s, sDesired))));
zc = imag(sDesired)/tand(theta_zero)-real(sDesired)

H = H*(s+zc);
K = -1/H;
Gain = double(abs(subs(K, s, sDesired)))

s = tf('s');
sys = (s+8)*(s+zc)/((s+10)*(s+6)*(s+3));
rltool(sys, Gain)