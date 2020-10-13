%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[bl c] = imread('dresser.jpg');
bl = rgb2gray(bl);
bl = im2double(bl);


%Butterworth Low Pass Filter
%D0 = 20;
n = 2*x;
[M N] = size(a);
BLP = zeros(M, N);
midM = round (M/2);
midN= round (N/2);
for u = 1:M
    for v = 1:N
        r =sqrt((u-midM)^2 + (v-midN)^2);
        BLP(u,v) = 1/(1 + (r/D0)^n);
    end
end


%Filter using FFT
BL = fft2(bl);
BL = fftshift(A);
BL_LOW = BL.*BLP;
bl_low = ifft2(BL_LOW);