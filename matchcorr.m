INPUT = fftshift(fft2(input));
corr = (ifft2(INPUT.*FILTER));
corr2 = corr.*conj(corr);