gato = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista2\gato.jpg');

gatoAmarelo = uint8(zeros(size(gato,1), size(gato,2), size(gato,3)));

for(i=1:1:size(gato,1)) 
  for(j=1:1:size(gato,2))
    if(gato(i,j,1)> 126 && gato(i,j,2) > 126 && gato(i,j,3) < 126)
      gatoAmarelo(i,j, :) = gato(i,j, :);
    else
      gatoAmarelo(i,j, :) = 255;
    endif
  endfor
endfor

figure(1);
imshow(gatoAmarelo);