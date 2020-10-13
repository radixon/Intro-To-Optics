%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'


%[f c] = imread('shap.bmp');
f = input;
g = reference;
f = im2double(f);
%[g c] = imread('tri.bmp');
g = im2double(g);
F = fftshift(fft2(f));
G = fftshift(fft2(g));
ccd = fftshift(ifft2(F.*conj(G)));