% read the image file
I_1 = double(imread('./noisy.jpg'));
I_2 = double(imread('./quizzes_original.jpg'));


% use median filter
filtered_1 = medfilt2(I_1);
filtered_2 = medfilt2(filtered_1);

% show
subplot(2,2,1)
imshow(I_1/255);
subplot(2,2,2)
imshow(I_2/255);
subplot(2,2,3)
imshow(filtered_1/255);
subplot(2,2,4)
imshow(filtered_2/255);

% calculate the  MSE and PSNR
img_delta_1 = I_1 - I_2;
[m,n]=size(img_delta_1);
MSE_1=sum(sum(img_delta_1 .* img_delta_1))/(m*n);
PSNR_1=10*log10(255*255/MSE_1)

img_delta_2 = I_2 - filtered_1;
[m,n]=size(img_delta_2);
MSE_2=sum(sum(img_delta_2 .* img_delta_2))/(m*n);
PSNR_2=10*log10(255*255/MSE_2)

img_delta_3 = I_2 - filtered_2;
[m,n]=size(img_delta_3);
MSE_3=sum(sum(img_delta_3 .* img_delta_3))/(m*n);
PSNR_3=10*log10(255*255/MSE_3)
