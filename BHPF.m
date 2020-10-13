%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[bh c] = imread('dresser.jpg');
bh = rgb2gray(bh);
gh = im2double(bh);


%Butterworth High Pass Filter
%D0 = 20;
n = 2*x;
[M N] = size(bh);
BHP = zeros(M, N);
midM = round (M/2);
midN= round (N/2);
for u = 1:M
    for v = 1:N
        r =sqrt((u-midM)^2 + (v-midN)^2);
        BHP(u,v) = 1/(1 + (D0/r)^n);
    end
end


%Filter using FFT
BH = fft2(bh);
BH = fftshift(BJ);
BH_HIGH = BH.*BHP;
bh_high = ifft2(A_HIGH);