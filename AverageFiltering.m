% Skyler Cowley
% CS 6680
% Assignment 3

function [ filteredIm ] = AverageFiltering( im, mask )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[imrows, imcols] = size(im);
[maskrows, maskcols] = size(mask);

pad = floor(maskrows/2);
middle = ceil(maskrows/2);

padded = zeros(imrows+2*pad,imcols*2*pad);

padded(middle:middle+imrows-1, middle:middle+imcols-1) = im;

result = im;


for c = 1:imcols
for r = 1:imrows

section = padded(r:r+maskrows-1, c:c+maskrows-1);
innersum = 0;
for cc = 1:maskcols
for rr = 1:maskrows

innersum = innersum + section(rr,cc) * mask(rr,cc);

end
end

result(r,c) = uint8(innersum);

end
end

filteredIm = result;

end

