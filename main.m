% Skyler Cowley
% CS 6680
% Assignment 3

close all;
% -----Start Solving Problem 1-----
% -----Start Solving Problem 1.1-----

A = imread('Circuit.jpg');

w3x3 = [[1 2 1]; [2 4 2]; [1 2 1];] * 1/16;
s5x5 = ones(5) * 1/25;

AA3 = AverageFiltering(A, w3x3);
AA5 = AverageFiltering(A, s5x5);

figure(1);
subplot(3,1,1);
imshow(A);
title 'Original Image'
subplot(3,1,2);
imshow(AA3);
title 'Weighted 3x3 Average Filter'
subplot(3,1,3);
imshow(AA5);
title 'Standard 5x5 Average Filter'

% -----Finish Solving Problem 1.1-----
 pause()
% -----Start Solving Problem 1.2-----

AM3 = MedianFiltering(A, w3x3);
AM5 = MedianFiltering(A, s5x5);

figure(2);
subplot(3,1,1);
imshow(A);
title 'Original Image'
subplot(3,1,2);
imshow(AM3);
title 'Weighted 3x3 Median Filter'
subplot(3,1,3);
imshow(AM5);
title 'Standard 5x5 Median Filter'

% -----Finish Solving Problem 1.2-----
 pause()
% -----Start Solving Problem 1.3-----

M = imread('Moon.jpg');
L = [[1 1 1]; [1 -8 1]; [1 1 1];];
L = L .* -1;
FI = imfilter(M,L);

SI = imadjust(FI,[0.3,0.5]);

EI = M + FI;

figure(3);
subplot(2,2,1);
imshow(M);
title 'Original Image'
subplot(2,2,2);
imshow(FI);
title 'Filtered Image'
subplot(2,2,3);
imshow(SI)
title 'Scaled Image'
subplot(2,2,4);
imshow(EI);
title 'Enhanced Image'

% -----Finish Solving Problem 1.3-----
% -----Finish Solving Problem 1-----
 pause()
% -----Start Solving Problem 2-----
% -----Start Solving Problem 2.1-----
R = imread('Rice.jpg');

S = [[-1 -2 -1]; [0 0 0]; [1 2 1];];
S2 = [[-1 0 1]; [-2 0 2]; [-1 0 1];];

RS = abs(imfilter(R,S));
RS2 = abs(imfilter(R,S2));


comb = double(RS)+double(RS2);
cmax = max(comb(:));
comb = comb ./ cmax;
comb = uint8(comb * 255);
combb = uint8(comb > (.25*255));
comb = uint8(combb .* comb);

disp(['Since the brightes white parts were the sharpest edges I chose ' ...
    'to use a threshold of the values in the upper 25% of the range. ' ...
    'This removed the fading dark edges and only left the most ' ...
    'important edges in the final image.']);

% -----Finish Solving Problem 2.1-----
 pause()
% -----Start Solving Problem 2.2-----

figure(4);
subplot(3,1,1);
imshow(R);
title 'Original Image'
subplot(3,1,2);
imshow(comb);
title 'Important Edges'
subplot(3,1,3);
bar(CalEdgeHist(R, 18));
title 'Edge Histogram'

% -----Finish Solving Problem 2.2-----
% -----Finish Solving Problem 2-----
 pause()
% -----Start Solving Problem 3-----
TI = imread('Text.gif');
TI1 = imread('Text1.gif');
TI2 = rgb2gray(imread('Text2.jpg'));

[im1, im2, im3] = CleanStripes(TI);
[im11, im21, im31] = CleanStripes(TI1);
[im12, im22, im32] = CleanStripes(TI2);

figure(5);
subplot(3,4,1)
imshow(TI);
title 'Original Image'
subplot(3,4,2);
imshow(im1);
title 'After Filter'
subplot(3,4,3);
imshow(im2);
title 'After Threshold'
subplot(3,4,4);
imshow(im3);
title 'Final Image'
subplot(3,4,5);
imshow(TI1);
title 'Original Image'
subplot(3,4,6);
imshow(im11);
title 'After Filter'
subplot(3,4,7);
imshow(im21);
title 'After Threshold'
subplot(3,4,8);
imshow(im31);
title 'Final Image'
subplot(3,4,9);
imshow(TI2);
title 'Original Image'
subplot(3,4,10);
imshow(im12);
title 'After Filter'
subplot(3,4,11);
imshow(im22);
title 'After Threshold'
subplot(3,4,12);
imshow(im32);
title 'Final Image'

disp(['Since the stripes in the images were horizontal I started by ' ...
    'doing a vertical edge detection with the Sobel mask. This would ' ...
    'avoid the edges of the stripe but get the majority of the writing. ' ...
    'I then did a threshold of the upper 25% of the I then had to ' ...
    'complement the image to get it back to the same black and white ' ...
    'as the original image. black values to remove the remaining stripe ' ...
    'remanants.']);

% -----Finish Solving Problem 3-----
 pause()
