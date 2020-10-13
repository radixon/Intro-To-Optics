f = input;
f = im2double(f);
g = reference;
g = im2double(g);
F = fft2(f);
G_AMP = abs(fft2(g));
corr_amp = ifft2(F.*G_AMP);
ccd = corr_amp.*conj(corr_amp);
