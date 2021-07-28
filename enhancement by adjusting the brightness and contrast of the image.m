clc;
clear all;
close all;
pkg load image
a=imread('nature.jpg');
b=(a)+70;
c=(a)-70;
d=rgb2gray(a);
e=d*5;
f=d*0.4;
g=255-a;
subplot(4,2,1),imshow(a),title('Original Image'),
subplot(4,2,2),imshow(b),title('Brightness enchanced Image'),
subplot(4,2,3),imshow(c),title('Brightness supressed Image'),
subplot(4,2,4),imshow(d),title('Grayscale Image'),
subplot(4,2,5),imshow(e),title('Increase in contrast Image'),
subplot(4,2,6),imshow(f),title('Decerease in contrast Image'),
subplot(4,2,7),imshow(g),title('Negative of original Image'),