% Skyler Cowley
% CS 6680
% Assignment 3

function [ edgeHist ] = CalEdgeHist( im, bin )
%CalEdgeHist compute the edge histogram of the input image

S = [[-1 -2 -1]; [0 0 0]; [1 2 1];];
S2 = [[-1 0 1]; [-2 0 2]; [-1 0 1];];

Gx = imfilter(im,S);
Gy = imfilter(im,S2);

theta = atand(double(Gx)./double(Gy))+90;

maxt = max(theta(:));
mint = min(theta(:));

binsize = (maxt-mint)/bin;

counts = zeros(1,bin);

for curr = 1:bin
    bools = (theta < curr*binsize+mint) .* (theta > (curr-1)*binsize+mint);
    counts(curr) = sum(bools(:));
end

edgeHist = counts;

end

