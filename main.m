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
subplot(1,3,1);
imshow(A);
subplot(1,3,2);
imshow(AA3);
subplot(1,3,3);
imshow(AA5);

% -----Finish Solving Problem 1.1-----
% pause()
% -----Start Solving Problem 1.2-----

AM3 = MedianFiltering(A, w3x3);
AM5 = MedianFiltering(A, s5x5);

figure(2);
subplot(1,3,1);
imshow(A);
subplot(1,3,2);
imshow(AM3);
subplot(1,3,3);
imshow(AM5);

% -----Finish Solving Problem 1.2-----
% pause()
% -----Start Solving Problem 1.3-----

M = imread('Moon.jpg');
L = [[1 1 1]; [1 -8 1]; [1 1 1];];
L = L .* -1;
FI = imfilter(M,L);

EI = M + FI;

figure(3);
subplot(1,3,1);
imshow(M);
subplot(1,3,2);
imshow(FI);
subplot(1,3,3);
imshow(EI);

% -----Finish Solving Problem 1.3-----
% -----Finish Solving Problem 1-----
% pause()
% -----Start Solving Problem 2-----
% -----Start Solving Problem 2.1-----
R = imread('Rice.jpg');

% -----Finish Solving Problem 2.1-----
% -----Start Solving Problem 2.2-----

% -----Finish Solving Problem 2.2-----
% -----Finish Solving Problem 2-----
% pause()
% -----Start Solving Problem 3-----

% -----Finish Solving Problem 3-----
% pause()
