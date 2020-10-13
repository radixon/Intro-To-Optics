cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

[n c]  = imread('inp.bmp');
[r c] = imread('tri.bmp');
n = rgb2gray(im2double(n));
r = rgb2gray(im2double(r));
jnt = [n*0 n*0 n*0 n*0
       n*0 n*1 n*0 n*0
       r*0 r*0 r*1 r*0
       r*0 r*0 r*0 r*0];
JNT = fft2(jnt);
ccd = ifft2(JNT.*conj(JNT));
ccd2 = ccd.*conj(ccd);