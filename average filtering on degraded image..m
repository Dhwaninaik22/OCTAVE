clc;
clear all;
close all;
pkg load image
[a,map]=imread('nature.jpg');
[x,map]=rgb2ind(a);
b=ind2gray(x,map);
%Inserting noise in image
sp=imnoise(b,'salt & pepper');
gau=imnoise(b,'gaussian');
spec=imnoise(b,'speckle');
h1=1/9*ones(3,3);
h2=1/25*ones(5,5);
sp1=imfilter(sp,h1);
sp2=imfilter(sp,h2);
gau1=imfilter(gau,h1);
gau2=imfilter(gau,h2);
spec1=imfilter(spec,h1);
spec2=imfilter(spec,h2);
%plotting the output
figure,subplot(2,2,1),imshow(a),title('original image');
subplot(2,2,2),imshow(sp),title('Salt & pepper noise');
subplot(2,2,3),imshow(sp1),title('3X3 averaging filter');
subplot(2,2,4),imshow(sp1),title('5X5 averaginf filter');
figure,subplot(2,2,1),imshow(a),title('original image');
subplot(2,2,2),imshow(gau),title('Gaussian noise');
subplot(2,2,3),imshow(gau1),title('3X3 averaging filter');
subplot(2,2,4),imshow(gau2),title('5X5 averaginf filter');
figure,subplot(2,2,1),imshow(a),title('original image');
subplot(2,2,2),imshow(spec),title('Speckle noise');
subplot(2,2,3),imshow(spec1),title('3X3 averaging filter');
subplot(2,2,4),imshow(spec2),title('5X5 averaginf filter')
