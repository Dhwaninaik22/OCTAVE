clc;
clear all;
close all;
pkg load image
a=imread('nature.jpg');
level=graythresh(a);
BW=im2bw(a,level);
subplot(2,2,1),imshow(a),title('original image');
subplot(2,2,2),imshow(BW),title('binary image');

