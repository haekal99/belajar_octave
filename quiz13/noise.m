L = imread('C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\quiz13\satu.jpg');
% Menampilkan Citra Noise Gausian, Poisson dan salt & pepper
a = imnoise(L, 'gaussian', 0.03);
b = imnoise(L, 'poisson', 0.03);
c = imnoise(L, 'salt & pepper', 0.03);
% Menampilkan Histogram Citra Noise Gaussian, Poison dan salt & Pepper
figure(1);
subplot(2,2,1); imshow(L); title('Citra Asli');
subplot(2,2,2); imhist(L); title('Histogram Citra Asli');
subplot(2,2,3); imshow(a); title('Image Noise Gaussian');
subplot(2,2,4); imhist(a); title('Histogram Image Noise Gaussian');
figure(2);
subplot(2,2,1); imshow(b); title('Image Noise Poison');
subplot(2,2,2); imhist(b); title('Histogram Noise Poison');
subplot(2,2,3); imshow(c); title('Image Noise salt & pepper');
subplot(2,2,4); imhist(c); title('Histogram Noise salt & pepper');