% read the image file
I_1 = double(imread('./frame_1.jpg'));
I_2 = double(imread('./frame_2.jpg'));
figure(1)
subplot(3,1,1)
imshow(I_1/255);
subplot(3,1,2)
imshow(I_2/255);

% get the target block
B_target = zeros(32,32);
for i=65:96
    for j=81:112
        B_target(i-64,j-80)=I_2(i,j);
    end
end
subplot(3,1,3)
imshow(B_target/255)

% search the block in I1 which has smallest MAE
min_x=1;
min_y=1;
min_MAE=intmax('int32');

for start_x=1:257
    for start_y=1:321
        tmp_block=I_1(start_x:start_x+31,start_y:start_y+31);
        tmp_MAE = sum(sum(abs(tmp_block-B_target)))/(32*32);
        if(tmp_MAE<min_MAE)
            min_MAE=tmp_MAE;
            min_x=start_x;
            min_y=start_y;
        end
    end
end

% print
min_x
min_y
min_x+min_y
min_MAE
