% Skyler Cowley
% CS 6680
% Assignment 3

close all;

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


AM3 = MedianFiltering(A, w3x3);
AM5 = MedianFiltering(A, s5x5);

figure(2);
subplot(1,3,1);
imshow(A);
subplot(1,3,2);
imshow(AM3);
subplot(1,3,3);
imshow(AM5);


