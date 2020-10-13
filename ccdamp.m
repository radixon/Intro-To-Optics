%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[f c] = imread('shap.bmp');
f = input;
g = reference;
f = im2double(f);
%[g c] = imread('tri.bmp');
g = im2double(g);
F = fftshift(fft2(f));
G_AMP = fftshift(abs(fft2(g)));
corr_amp = ifft2(F.*G_AMP);
ccd = corr_amp.*conj(corr_amp);