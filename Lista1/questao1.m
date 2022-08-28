im = zeros(50,256)
im = uint8(im)

for(i=1:1:size(im,1))
  for(j=1:1:size(im,2))
    im(i,j) = j;
  endfor
endfor

figure(1)
imshow(im)