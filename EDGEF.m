%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[ed c] = imread('dresser.jpg');
ed = rgb2gray(ed);
ed = im2double(ed);


%Edge Detection Filter
[M N] = size(ed);
EDF = zeros(M, N);
midM = round (M/2);
midN= round (N/2);
for u = 1:M
    for v = 1:N
        EDF(u,v) = -((u-midM)^2+(v-midN)^2);
    end
end


%Filter using FFT
ED = fft2(ed);
ED = fftshift(ED);
ED_LOW = ED.*EDF;
ed_low = ifft2(ED_LOW);