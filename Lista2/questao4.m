gato = imread('C:\Users\eucli\Documents\aulas\PDI\PDI\Lista2\gato.jpg');

for(i=1:1:size(gato,1)) 
  for(j=1:1:size(gato,2))
    if(gato(i,j,1)> 126 && gato(i,j,2) > 126 && gato(i,j,3) < 126)
      gato(i,j, 1) = 255;
      gato(i,j, 2) = 0;
      gato(i,j, 3) = 255;
    endif
    if(gato(i,j,1)> 126 && gato(i,j,2) < 126 && gato(i,j,3) < 126)
      gato(i,j, 1) = 0;
      gato(i,j, 2) = 255;
      gato(i,j, 3) = 255;
    endif
    if(gato(i,j,1) < 126 && gato(i,j,2) > 70 && gato(i,j,3) < 126)
      gato(i,j, 1) = 255;
      gato(i,j, 2) = 255;
      gato(i,j, 3) = 0;
    endif
  endfor
endfor

figure(1);
imshow(gato);