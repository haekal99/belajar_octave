F =imread ('C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\praktikum2\candy.jpg');
Ukuran=size(F);
tinggi=Ukuran(1);
lebar=Ukuran (2);

sudut=5 ;%sudut pemutaran
rad=pi*sudut/180;
cosa=cos(rad);
sina=sin(rad);
F2=double(F);

m=floor(tinggi/2);
n=floor(lebar/2);

for y=1 : tinggi
    for x=1 :lebar 
      x2 = (x-n)*cosa+(y-m)*sina+n;
      y2 = (y-m)*cosa-(x-n)*sina+m;
      if(x2>=1)&&(x2<=lebar)&&...
        (y2>=1)&& (y2<=tinggi)
        %lakukan interploasi bilinier
        p=floor(y2);
        q=floor(x2);
        a=y2-p;
        b=x2-q;
        if(x2==lebar)||(y2==tinggi)
          G(y,x)=F(y2,x2);
        else
          intensitas =(1-a)*((1-b)*F(p,q)+...
          b*F(p,q+1))+...
          a*((1-p)*F(p+1,q)+...
          b*F(p+1,q+1));
          
          G(y,x)=intensitas;
        end
        else
          
          G(y,x)=floor(y2),floor(x2);
        end
      end
      end
G = uint8(G);
figure(1); imshow(G);
imwrite (G, 'C:\Users\ACER\Documents\Praktek Program TI\Pengolahan Citra\praktikum2\hasilcandy.jpg');
clear all
clear all;