%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[n c]  = imread('inp.bmp');
%[r c] = imread('tri.bmp');
n = input;
r = reference;
n = im2double(n);
r = im2double(r);
in = [n*0 n*0 n*0 n*0
     ;     n*0 n n*0 n*0
          r*0 r*0 r*0 r*0
          r*0 r*0 r*0 r*0];
ref = [n*0 n*0 n*0 n*0
          n*0 n*0 n*0 n*0
          r*0 r*0 r r*0
          r*0 r*0 r*0 r*0];
jnt = in + ref;
JNT = fft2(jnt);
JNT2 = JNT.*conj(JNT);
T = mean(mean(JNT2));
JPS = (JNT2 >= T).*1 + (JNT2 < T).*-1;
ccd = fftshift(ifft2(JPS.*conj(JPS)));
ccd2 = ccd.*conj(ccd);