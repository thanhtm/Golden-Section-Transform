function testhgst

% Author: Jun Li. Copyright (c) 2015, All rights reserved. 
% more info@ http://goldensectiontransform.com/
% load 8 bit lena of size 377*377

% X = im2double(imread('C:\lena377.bmp'));

X = im2double(imread('C:\img377.bmp'));


[xx,yy] = size(X);

nlevel = 1;

H = hgst2d(X,nlevel);

imshow(H);

title([num2str(nlevel),'-level normalized high golden section transform of',' Lena ',num2str(xx),'*',num2str(yy)]);

% R = ihgst2d(H,nlevel);

% EQ = isequal(round(X*255),round(R*255)) % Perfect Reconstruction

imwrite(H,'hgstlena377.png','png');
