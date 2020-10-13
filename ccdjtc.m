%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'

%[f c] = imread('shap.bmp');
f = input;
g = reference;
f = im2double(f);
%[g c] = imread('tri.bmp');
g = im2double(g);
s = [f f*0; g*0 g];
S = fftshift(fft2(s));
S2 = S.*conj(S);
corr = fftshift(ifft2(S2));
ccd = corr.*conj(corr);