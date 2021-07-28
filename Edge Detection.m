clc
clear all
close all
pkg load image
[a, map]=imread('nature.jpg');
[x, map]=rgb2ind(a);
b=ind2gray(x, map);
c=edge(b,'roberts');
d=edge(b,'sobel');
e=edge(b,'prewitt');
f=edge(b,'LoG');
g=edge(b,'canny');
subplot(3,2,1),imshow(a),title('orignal image'),
subplot(3,2,2),imshow(c),title('Roberts'),
subplot(3,2,3),imshow(d),title('Sobel'),
subplot(3,2,4),imshow(e),title('Prewitt'),
subplot(3,2,5),imshow(f),title('LoG'),
subplot(3,2,6),imshow(g),title('Canny')