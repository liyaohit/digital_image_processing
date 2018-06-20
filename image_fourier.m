% ���ű�չʾ�������matlab�õ�ͼ��ĸ���ҶƵ��ͼ
close all;
clear, clc;
img = imread('lena.jpg');
x = fft2(im2double(rgb2gray(img))); % ����Ҷ�任
x = fftshift(x); % Ƶ��ƽ��
x = real(x); % ֻ��ʾʵ��
x = log(x + 1); % Ƶ�׶����任
subplot(121);
imshow(rgb2gray(img));
title('original');
subplot(122);
imshow(x, []);
title('frequent');