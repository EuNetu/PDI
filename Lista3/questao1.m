pkg load image
soja = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista3\soja.jpg');

im = rgb2gray(soja);

figure(1);
imshow(im);

figure(2);
imhist(im);

pontoDeCorte = 80;

im2 = uint8(zeros(size(soja,1), size(soja,2)));
im2(:,:) = 255;

im2(im > pontoDeCorte) = 0;

figure(3);
imshow(im2);

imFinal = soja;

for(i=1:1:size(im2,1)) 
  for(j=1:1:size(im2,2))
    if(im2(i,j) != 0)
      imFinal(i,j,:) = 255;
    endif
  endfor
endfor

figure(4);
imshow(imFinal);