clc;
clear all;
close all;
pkg load image
a=imread('butterfly.jpg');
imshow(a);
b=rgb2gray(a);
imshow(b);
c=rgb2hsv(a);
imshow(c);
d=hsv2rgb(c);
imshow(d);
e=rgb2ntsc(a);
imshow(e);
f=ntsc2rgb(e);
imshow(f);
g=rgb2ycbcr(a);
imshow(g);
h=ycbcr2rgb(g);
imshow(h);
[IND,map]=rgb2ind(a); 
u=ind2rgb(IND,map); 
subplot(4,3,1),imshow(a),title('original image'),
subplot(4,3,2),imshow(b),title('rgb to gray'), 
subplot(4,3,3),imshow(c),title('rgb to hsv'),
subplot(4,3,4),imshow(d),title('hsv to rgb'),
subplot(4,3,5),imshow(e),title('rgb to ntsc'),
subplot(4,3,6),imshow(f),title('ntsc to rgb'),
subplot(4,3,7),imshow(g),title('rgb to YCbCr'),
subplot(4,3,8),imshow(h),title('YCbCr to rgb'),
subplot(4,3,9),imagesc(IND),title('rgb to indexed image'),
subplot(4,3,10),imagesc(map),title('colormap of indexed image'),
subplot(4,3,11),imshow(u),title('Indexed img to rgb')