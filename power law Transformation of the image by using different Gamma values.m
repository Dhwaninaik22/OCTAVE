clc;
close all;
clear all;
pkg load image
a=imread('nature.jpg');
%b=rgb2gray(a);
gamma=9;
c=double(a).^gamma;
gamma1=10;
d=double(a).^gamma1;
subplot(2,2,1),imshow(a),title('Original Image');
subplot(2,2,2),imshow(c),title('gamma=1.1');
subplot(2,2,3),imshow(d),title('gamma=0.7')