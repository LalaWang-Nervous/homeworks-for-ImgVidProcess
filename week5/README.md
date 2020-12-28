Question 7

In this problem and the next two, you will perform median filtering to enhance the quality of a noise corrupted image. Recall from the video lecture that median filtering is effective for removing "salt-and-pepper" noise from images. Follow the instructions below to complete this problem.  

(1) Download the noisy image from [here](https://d396qusza40orc.cloudfront.net/digital%2Fimages%2Fweek5_quizzes%2Fnoisy.jpg). Load the noisy image into a MATLAB array and convert the type of the array from 8-bit integer 'uint8' to real number 'double'. Refer to MATLAB problems in previous homework if you need help with loading and converting images. Visualize the noisy image using the built-in MATLAB function "imshow". The function "imshow" takes as its argument either [0-255] for an 8-bit integer array (i.e., of type 'uint8'), or [0-1] for a normalized real-valued array (i.e., of type 'double'). To provide "imshow" with the correct argument, you would need either to "cast" your real-valued array into 'uint8', or normalize it by 255. 

(2) Perform 3x3 median filtering using the built-in MATLAB function "medfilt2". For this problem, the only argument you need to provide "medfilt2" with is the array you have created in step (1). Visualize the filtered image using "imshow". Remember to either cast the result to 'uint8' or normalize it before feeding it to "imshow". 

(3) Perform a second-pass median filtering on the filtered image that you have obtained from step (2). Visualize the two-pass filtered image. Compare it with the noisy input image and the 1-pass filtered image. 

(4) Download the noise-free image from [here](https://d396qusza40orc.cloudfront.net/digital%2Fimages%2Fweek5_quizzes%2Foriginal.jpg). Compute the PSNR value between the noise-free image and the noisy input image in the box below (up to two decimal points).