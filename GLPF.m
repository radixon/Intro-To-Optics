%read and convert the image
cd 'F:\ENEE 4097 -- Intro To Optics\Homework'  %path to image
[gl c] = imread('dresser.jpg');
gl = rgb2gray(gl);
gl = im2double(gl);


%Gaussian Low Pass Filter
%D0 = 20;
[M N] = size(gl);
GLP = zeros(M, N);
midM = round (M/2);
midN= round (N/2);
for u = 1:M
    for v = 1:N
        r =sqrt((u-midM)^2 + (v-midN)^2);
        GLP(u,v) = exp(-r^2/(2*D0^2));
    end
end


%Filter using FFT
GL = fft2(gl);
GL = fftshift(GL);
GL_LOW = GL.*GLP;
gl_low = ifft2(GL_LOW);

