%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[gh c] = imread('dresser.jpg');
gh = rgb2gray(gh);
gh = im2double(gh);


%Gaussian High Pass Filter
%D0 = 20;
[M N] = size(gh);
GHP = zeros(M, N);
midM = round (M/2);
midN= round (N/2);
for u = 1:M
    for v = 1:N
        r =sqrt((u-midM)^2 + (v-midN)^2);
        GHP(u,v) = 1 - exp(-r^2/(2*D0^2));
    end
end


%Filter using FFT
GH = fft2(gh);
GH = fftshift(GH);
GH_HIGH = GH.*GHP;
gh_high = ifft2(GH_HIGH);
