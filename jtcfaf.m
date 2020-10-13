%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[n c]  = imread('inp.bmp');
%[r c] = imread('tri.bmp');
n = input;
r = reference;
n = im2double(n);
r = im2double(r);
in = [n*0 n*0 n*0 n*0
          n*0 n n*0 n*0
          r*0 r*0 r*0 r*0
          r*0 r*0 r*0 r*0];
ref = [n*0 n*0 n*0 n*0
          n*0 n*0 n*0 n*0
          r*0 r*0 r r*0
          r*0 r*0 r*0 r*0];
jnt = in + ref;
JNT = fft2(jnt);
JNT2 = JNT.*conj(JNT);
IN = fft2(in);
IN2 = IN.*conj(IN);
FAF = 1./(.001+IN2);
ccd = fftshift(ifft2(JNT2.*FAF));
ccd2 = ccd.*conj(ccd);