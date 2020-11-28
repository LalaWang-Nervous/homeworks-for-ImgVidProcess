In this problem and the next, you will implement spatial-domain low-pass filtering using MATLAB, and evaluate the difference between the  filtered image and the original image using two quantitative metrics  called Mean Squared Error (MSE) and Peak Signal-to-Noise Ratio (PSNR).  Give two $N_1 * N_2$ images $x(n_1,n_2)$ and $y(n_1,n_2)$, the MSE is computed as:
$$
MSE=\frac{\sum_{n_1=1}^{N_1}{\sum_{n_2=1}^{N_2}{[x(n_1,n_2)-y(n_1,n_2)]^2}}}{N_1N_2}
$$
The PSNR is defined as:
$$
PSNR=10log_{10}(\frac{MAX_I^2}{MSE})
$$
where $MAX_1$ is the maximum possible pixel value of the images. For the 8-bit gray-scale images considered in this problem, $MAX_1=255$ .

Follow the instructions below to finish this problem. 

(1) The original image from [here](https://d396qusza40orc.cloudfront.net/digital%2Fimages%2Fweek2_quizzes%2Flena.gif) (the "lena.gif"). The original image is a $256*256$ 8-bit gray-scale image. 

(2) Convert the original image from type 'uint8' (8-bit integer) to 'double' (real number). 

(3) Create a $3*3$ low-pass filter with all coefficients equal to 1/9, i.e., create a $3*3$ MATLAB array with all elements equal to 1/9. 

(4) Low-pass filter the original image (converted to type 'double') with  the filter created in step (3). This can be done using the built-in  MATLAB function "imfilter". The function "imfilter" takes three  arguments and returns one output. The first argument is the original  image (converted to type 'double'); the second argument is the low-pass  filter created in step (3); and the third argument is a string  specifying the boundary filtering option. For this problem, use  'replicate' (including the single quotes) for the third argument. The  output of the function "imfilter" is the filtered image. 

(5)  Compute the PSNR value between the original image (converted to type  'double') and the filtered image by using the formulae given above. 