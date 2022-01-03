F=imread('C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\Praktikum1\aku.jpg');
gray=rgb2gray(F);
figure(1);imshow(F);
figure(2);imshow(gray);
tepi=edge(gray,'sobel');
figure(3);
imshow(tepi),title('contoh sobel');