In the next two problems you will perform block matching motion estimation between two consecutive video frames. Follow the instructions below to  complete this problem. 

(1) Download the two video frames from [frame_1](https://d396qusza40orc.cloudfront.net/digital%2Fimages%2Fweek4_quizzes%2Fframe_1.jpg) and [frame_2](https://d396qusza40orc.cloudfront.net/digital%2Fimages%2Fweek4_quizzes%2Fframe_2.jpg). The frames/images are of height 288 and width 352. 

(2) Load the frame with file name "frame_1.jpg" into a 288×352 MATLAB array using function "imread", and then convert the array type  from 8-bit integer to real number using function "double" or "cast"  (note that the range of intensity values after conversion is between 0  and 255). Denote by $I_1$ the converted MATLAB array. Repeat this step for the frame with file  name "frame_2.jpg" and denote the resulting MATLAB array by $I_2$. In this problem, $I_2$ corresponds to the current frame, and $I_1$ corresponds to the previous frame (i.e., the reference frame). 

(3) Consider the 32×32 target block in $I_2$ that has its upper-left corner at (65,81) and lower-right corner at (96,112). Note this is MATLAB coordinate convention, i.e., the first number between the parenthesis is the row index extending from 1 to 288 and the second number is the column index extending from 1 to 352. This target block is therefore a 32×32 sub-array of $I_2$. 

(4) Denote the target block by $B_{target}$. Motion estimation via block matching searches for the 32×32 sub-array of $I_1$ that is "most similar" to $B_{target}$. Recall in the video lectures we have introduced various forms of  matching criteria, e.g., correlation coefficient, mean-squared-error  (MSE), mean-absolute-error (MAE), etc. 

In this problem, we use MAE as the matching criterion. Given two blocks $B_1$ and $B_2$ both of size $M\times N$, the MAE is defined as

$$MAE(B_1,B_2)=\frac{1}{M\times N}\sum_{i=1}^{M}{\sum_{j=1}^{N}{|B_1(i,j)-B_2(i,j)|}}$$

To find the block in $I_1$that is most similar to $B_{target}$ in the MAE sense, you will need to scan through all the 32×32 blocks in $I_1$, compute the MAE between each of these blocks and , $B_{target}$and find  the one that yields the smallest value of MAE. 

Note in practice motion search is only performed over a certain region of  the reference frame, but for the sake of simplicity, we perform motion  search over the entire reference frame$I_1$ in this problem and the next. When you find the matched block in $I_1$, enter the sum of the x and y coordinates of the upper-left corner of  the matched block in MATLAB convention. For example, if the matched  block has the upper-left corner located at (10,20) then you must enter 30.