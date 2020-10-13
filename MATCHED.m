%Create and store the filter
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'
D0 = 20;
%[M N] = imread('input.bmp');
%M = im2double(M);
%N = im2double(N);
M = 467;    N = 463;
G = zeros(M,N);
midM = round(M/2);
midN = round(N/2);
for u=1:M
    for v=1:N
        r = sqrt((u-midM)^2+(v-midN)^2);
        if (r <= D0)
            G(u,v) = 1;
        end
    end
end


%Read image to be loaded on SLM
%cd 'F:\ENEE 4097 -- Intro To Optics\Homework'
[f c] = imread('dresser.jpg');
f = rgb2gray(im2double(f));


%Matched filter operation
F = fftshift(fft2(f));
CORR = F.*G;
corr = ifft2(CORR);
corr2 = corr.*conj(corr);