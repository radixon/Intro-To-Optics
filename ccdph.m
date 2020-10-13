%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[f c] = imread('shap.bmp');
f = input;
g = reference;
f = im2double(f);
%[g c] = imread('tri.bmp');
g = im2double(g);
F = fftshift(fft2(f));
G_PH = exp(-j*angle(fftshift(fft2(g))));
corr_ph = (ifft2(F.*G_PH));
ccd = corr_ph.*conj(corr_ph);