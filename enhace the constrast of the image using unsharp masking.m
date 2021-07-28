pkg load image
clc
clear all
close all
a=imread('nature.jpg');
h=fspecial('unsharp');
b=imfilter(a,h);
subplot(1,2,1),imshow(a),title('orignal image'),
subplot(1,2,2),imshow(b),title('Unsharp image')