% read the original image, and convert the original image from type 'uint8' (8-bit integer) to 'double' (real number). 
raw_img=imread('./lena.gif');
img=double(raw_img);
figure(1)
imshow(img/255)

% Create a 3×3 low-pass filter with all coefficients equal to 1/9
filter=(1/9)*ones(3,3);
%filter=(1/25)*ones(5,5)
% process
img_processed=imfilter(img,filter,'replicate');
figure(2)
imshow(img_processed/255)

% calculate the  MSE and PSNR
img_delta = img-img_processed;
[m,n]=size(img_delta);
MSE=sum(sum(img_delta .* img_delta))/(m*n);
PSNR=10*log10(255*255/MSE)
