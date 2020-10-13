%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[ih c] = imread('dresser.jpg');
ih = rgb2gray(ih);
ih = im2double(ih);


%Ideal High Pass Filter
%D0 = 20;
[M N] = size(a);
IHP = zeros(M, N);
midM = round(M/2);
midN = round(N/2);
for u = 1:M
    for v = 1:N
        r = sqrt((u-midM)^2+(u-midN)^2);
        if (r >= D0)
            IHP(u,v) = 1;
        end
    end
end

%filter using FFT
IH = fft2(ih);
IH = fftshift(IH);
IH_HIGH = IH.*IHP;
ih_high = ifft2(IH_HIGH);

