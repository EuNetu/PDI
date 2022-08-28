lena = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista1\Lena.jpg');

for(i=1:1:size(lena,1))
  for(j=1:1:size(lena,2))
    lena2(i,j) = 0.3*lena(i,j,1) + 0.59*lena(i,j,2) + 0.11*lena(i,j,3);
  endfor
endfor

tic
valorEntrada = input("Digite o valor: ");
valorEntrada = valorEntrada/100
toc

lena3(:,:) = valorEntrada*lena(:,:,1) + valorEntrada*lena(:,:,2) + valorEntrada*lena(:,:,3);

figure(1);
imshow(lena3);