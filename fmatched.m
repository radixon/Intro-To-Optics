cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

[f c] = imread('AEFI.bmp');
f = rgb2gray(im2double(f));
[g c] = imread('E.bmp');
g = rgb2gray(im2double(g));
F = fftshift(fft2(f));
G = fftshift(fft2(g));
corr = fftshift(ifft2(F.*G));