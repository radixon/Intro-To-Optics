cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

[n c]  = imread('inp.bmp');
[r c] = imread('tri.bmp');
n = rgb2gray(im2double(n));
r = rgb2gray(im2double(r));
IN = fft2(n);
REF = exp(j*angle(fft2(r)));
ccd = ifft2(IN.*REF);
ccd2 = ccd.*conj(ccd);