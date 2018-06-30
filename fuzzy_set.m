% ����ģ�����ϵ�ͼ����ǿ
close all;
clear, clc;
img = imread('lena.jpg');
img = rgb2gray(img);
subplot(121), imshow(img);
% ����
Fd = 0.8, FD = -Fd, Fe = 128, Xmax = 255;
threshold = 0.5;
x = double(img);
% ģ������ƽ��
P = (1 + (Xmax - x) ./ Fe) .^ FD;
% ģ����ǿ
times = 1;
for k = 1 : times
    t = P;
    t(P <= threshold) = 2 .* P(P <= threshold) .^ 2;
    t(P > threshold) = 1 - 2 .* (1 - P(P > threshold)) .^ 2;
    P = t;
end
% ��ģ����
I = Xmax - Fe * ((1 ./ P) .^ (1 / Fd) - 1);
subplot(122), imshow(uint8(I));