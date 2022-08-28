lena = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista1\Lena.jpg');

for(i=1:1:size(lena,1))
  for(j=1:1:size(lena,2))
    lena2(i,j) = 0.3*lena(i,j,1) + 0.59*lena(i,j,2) + 0.11*lena(i,j,3);
  endfor
endfor
aux = -255
for(j=1:1:size(lena2,2))
    lena3(:,j) = lena2(:,j) + (++aux);
endfor

figure(1);
imshow(lena3);