close all %fecha todas as janelas abertas de execuções anteriores
clear all %fecha todas as variáveis abertas de execuções anteriores

im = imread('C:\Users\eucli\Downloads\Lena.jpg'); %abre uma imagem e a atribui à matriz 'im'
figure('Name','Imagem Original') %abre uma janela e insere o título 'Imagem Original'
imshow(im) %mostra a matriz 'im' na janela aberta

im2 = rgb2gray(im); %converte a imagem colorida (im) em uma imagem em escalas de cinza (im2)

figure('Name','Imagem Em Escalas de Cinza') %abre uma janela e insere o título 'Imagem Em Escalas de Cinza'
imshow(im2) %mostra a matriz 'im2' na janela aberta

%--------------------------------------------

tic %inicia a contagem de tempo
im3 = im2; %faz uma cópia em 'im3' da matriz 'im2'

for(i=1:1:size(im2,1)) %percorre todas as linhas (size(im2,1)) da matriz 'im2'
  for(j=1:1:size(im2,2)) %percorre todas as colunas (size(im2,2)) da matriz 'im2'
      im3(i,j) = im2(i,j) + 40;  %aumenta as intensidades de cada um dos pixels da matriz 'im2' em 40 níveis
  endfor
endfor

toc %finaliza a contagem de tempo e mostra o tempo transcorrido entre o 'tic' e o 'toc' na janela de comandos

figure('Name','Imagem modificada 1')
imshow(im3) 

%--------------------------------------------
tic %inicia a contagem de tempo
im4 = im2; %faz uma cópia em 'im4' da matriz 'im2'

im4 = im2 + 40; %faz o mesmo processamento que os laços anteriores, porém utilizando atribuição direta

toc %finaliza a contagem de tempo e mostra o tempo transcorrido entre o 'tic' e o 'toc' na janela de comandos

figure('Name','Imagem modificada 2')
imshow(im4)

