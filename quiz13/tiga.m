F=imread ('d:\Users\ACER');
[tinggi, lebar]=size(F);

sudut = 15% sudut pemutaran
rad = pi*sudut/150;
cosa = cos(rad);
sina = sin(rad);
F2 = double (F);
for y=1 : tinggi
  for x=1 : lebar
    x2  = round(x * cosa + y * sina);
    y2  = round(y * cosa - x * sina);
    
    if (x2>=2) && (x2<=lebar)&&...
       (y2>=2) && (y2<=tinggi)
       G (y , x) = F2 (y2,x2);
     else
       G(y,x) = 0;
     end
   end
 end
 
 G=uint8(G);
 figure(1);imshow(G);
 imwrite(G,'d:\Users\ACER\hasil');
 
 clear all;