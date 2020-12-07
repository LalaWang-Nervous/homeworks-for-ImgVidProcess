% read the original image, and convert the original image from type 'uint8' (8-bit integer) to 'double' (real number). 
raw_img=imread('./img.jpg');
img=double(raw_img);
figure(1)
imshow(img/255)

% Create a 3×3 low-pass filter with all coefficients equal to 1/9
filter=(1/9)*ones(3,3);
% process
img_processed=imfilter(img,filter,'replicate');
figure(2)
imshow(img_processed/255)

% down sampled
down_sampled_img = zeros(180,240);
for i = 1:180
    for j = 1:240
        down_sampled_img(i,j) = img_processed(2*i-1,2*j-1);
    end
end
figure(3)
imshow(down_sampled_img/255)

% up-sample this low-resolution image to the original resolution via spatial domain processing. 
up_sample_img = zeros(359,479);
for i=1:2:359
    for j=1:2:479
        up_sample_img(i,j) = down_sampled_img((i+1)/2,(j+1)/2);
    end
end
figure(3)
imshow(up_sample_img/255)

%  performs bilinear interpolation to obtain the up-sampled image.
filter_2 =  [0.25,0.5,0.25;0.5,1,0.5;0.25,0.5,0.25];
up_sampled_img_processed=imfilter(up_sample_img,filter_2);
figure(4)
imshow(up_sampled_img_processed/255)

% calculate the  MSE and PSNR
img_delta = img-up_sampled_img_processed;
[m,n]=size(img_delta);
MSE=sum(sum(img_delta .* img_delta))/(m*n);
PSNR=10*log10(255*255/MSE)
