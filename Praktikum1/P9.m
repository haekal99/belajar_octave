F=imread('C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\Praktikum1\citra.jpg');
[tinggi, lebar]=size(F);
sx=45;% penggeseran arah horizontal
sy=-35;% penggeseran arah vertikal
F2=double(F);
G=zeros (size(F2));
for y=1 : tinggi
  for x=1 :lebar
    xlama = x - sx;
    ylama = y - sy;
    
    if (xlama>=1)&& (xlama<=lebar) &&...
      (ylama>=1)&& (ylama<=tinggi)
      G(y,x)= F2(ylama,xlama);
    else
      G(y,x)=0;
    end
  end
end
G=uint8(G);
figure(1); imshow(G);
imwrite (G,'C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\Praktikum1\hasilp9.jpg');

clear all;
