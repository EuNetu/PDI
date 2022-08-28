gato = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista2\gato.jpg');

gatoVerde = uint8(zeros(size(gato,1), size(gato,2), size(gato,3)));

for(i=1:1:size(gato,1)) 
  for(j=1:1:size(gato,2))
    if(gato(i,j,1)< 126 && gato(i,j,2) > 75 && gato(i,j,3) < 126)
      gatoVerde(i,j, :) = gato(i,j, :);
    else
      gatoVerde(i,j, :) = 255;
    endif
  endfor
endfor

figure(1);
imshow(gatoVerde);