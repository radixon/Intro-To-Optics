%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[n c]  = imread('inp.bmp');
%[r c] = imread('tri.bmp');
n = input;
r = reference;
n = im2double(n);
r = im2double(r);
slm_in = [n*0 n*0 n*0 n*0
          n*0 n n*0 n*0
          r*0 r*0 r*0 r*0
          r*0 r*0 r*0 r*0];
slm_rf = [n*0 n*0 n*0 n*0
          n*0 n*0 n*0 n*0
          r*0 r*0 r r*0
          r*0 r*0 r*0 r*0];
jnt = slm_in + slm_rf;
JNT = fft2(jnt);
JNT2 = JNT.*conj(JNT);
SLM_IN = fft2(slm_in);
SLM_RF = fft2(slm_rf);
SLM_IN2 = SLM_IN.*conj(SLM_IN);
SLM_RF2 = SLM_RF.*conj(SLM_IN);
JPS = JNT2 - SLM_IN2 - SLM_RF2;
ccd = ifft2(JNT.*conj(JPS));
ccd2 = ccd.*conj(ccd);