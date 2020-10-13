%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[il c] = imread('dresser.jpg');
il = rgb2gray(il);
il = im2double(il);


%Ideal Low Pass Filter
%D0 = 20;
[M N] = size(a);
ILP = zeros(M, N);
midM = round(M/2);
midN = round(N/2);
for u = 1:M
    for v = 1:N
        r = sqrt((u-midM)^2+(u-midN)^2);
        if (r <= D0)
            ILP(u,v) = 1;
        end
    end
end

%filter using FFT
IL = fft2(il);
IL = fftshift(IL);
IL_LOW = IL.*ILP;
il_low = ifft2(IL_LOW);

