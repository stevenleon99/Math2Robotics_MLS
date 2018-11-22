% try.m

g0 = [   -0.5206    0.7742   -0.3600   -0.6424;
   -0.4768   -0.6134   -0.6296    0.0122996;
   -0.7082   -0.1561    0.6885    0.0172003;
         0         0         0    1.0000];

r = g0(1:3,1:3);
w_hat = real(logm(r));
%r = expm(w_hat);

c = []; th = [];
%for d = .00:.01:.12,
for d = .00:.01:.12,
    g = g0;
    g(1,4) = g(1,4) + d;
    g(1:3,1:3) = r;
    d
    h = invk(g,0)
    th = [th; h];
    c = [c; cond(jacobian(h))];
end

