f = input;
f = im2double(f);
g = reference;
g = im2double(g);
F = fft2(f);
G_PH = exp(-j*angle(fft2(g)));
corr_ph = ifft2(F.*G_PH);
ccd = corr_ph.*conj(corr_ph);