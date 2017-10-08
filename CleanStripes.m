% Skyler Cowley
% CS 6680
% Assignment 3

function [ im1, im2, im3 ] = CleanStripes( im )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

S = [[-1 0 1]; [-2 0 2]; [-1 0 1];];

im1 = imfilter(im,S);

im2 = uint8(im1 .* uint8(im1>(255*.75)));

im3 = imcomplement(im2);

end

