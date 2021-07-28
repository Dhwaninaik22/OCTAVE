clc;
clear all;
close all;
pkg load image
pkg load image
[I,map]=imread("scene.jpg");
subplot(3,2,1),imshow(I),title('original image');
[x,map]=rgb2ind(I);
a=ind2gray(x,map);
e=strel('square',3)
$d=imerode(a,e);
$c=imdilate(a,e);
h=$c-$d;
subplot(2,2,1),imshow(a),title('grey image');
subplot(2,2,2),imshow($c),title('dilated image');
subplot(2,2,3),imshow($d),title('eroded image');
subplot(2,2,4),imshow(h),title('boundary detected image');