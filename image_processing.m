%Task 1
ioriginal = imread('bild1.tif');
igray = rgb2gray(ioriginal);

figure('Name','Task 1 - Reading and Converting the Image','NumberTitle','off')
subplot(1,2,1),imshow(ioriginal)
title('Original Image')
subplot(1,2,2),imshow(igray)
title('Gray Image')


%Task 2
figure('Name','Task 2 - Creating Histogram','NumberTitle','off')
histogram(igray);
title('Histogram: Gray Image');


%Task 3
boxfilt_3 = ones(3)/9;
boxfilt_5 = ones(5)/25;
boxfilt_9 = ones(9)/81;

boxfil_3 = imfilter(ioriginal,boxfilt_3);
boxfil_5 = imfilter(ioriginal,boxfilt_5);
boxfil_9 = imfilter(ioriginal,boxfilt_9);

figure('Name','Task 3 - Creating Average Box Filter','NumberTitle','off')
subplot(2,2,1),imshow(ioriginal)
title('Original Image')
subplot(2,2,2),imshow(boxfil_3)
title('3X3 Box Filter')
subplot(2,2,3),imshow(boxfil_5)
title('5X5 Box Filter')
subplot(2,2,4),imshow(boxfil_9)
title('9X9 Box Filter')


%Task 4
binomialfilt = [1 2 1; 2 4 2; 1 2 1]/16;
binomial = imfilter(ioriginal,binomialfilt);

figure('Name','Task 4 - Binomial Filtering','NumberTitle','off')
subplot(2,2,1),imshow(ioriginal)
title('Original Image')
subplot(2,2,3),imshow(boxfil_3)
title('3X3 Box Filter')
subplot(2,2,4),imshow(binomial)
title('Binomial Image')


%Task 5
median_3 = medfilt2(igray,[3 3]);
median_5 = medfilt2(igray,[5 5]);
median_9 = medfilt2(igray,[9 9]);

figure('Name','Task 5 - Median Filtering','NumberTitle','off')
subplot(2,2,1),imshow(ioriginal)
title('Gray Image')
subplot(2,2,2),imshow(median_3)
title('3X3 Median Filter')
subplot(2,2,3),imshow(median_5)
title('5X5 Median Filter')
subplot(2,2,4),imshow(median_9)
title('9X9 Median Filter')

figure('Name','Task 5.1 - Comparison between 3X3 filters','NumberTitle','off')
subplot(1,3,1),imshow(boxfil_3)
title('3X3 Box Filter')
subplot(1,3,2),imshow(binomial)
title('3X3 binomial Filter')
subplot(1,3,3),imshow(median_3)
title('3X3 Median Filter')


%Task 5a
fgx = [-1 0 1; -1 0 1; -1 0 1]/6;
fgy = [-1 -1 -1; 0 0 0; 1 1 1]/6;

gx = imfilter(igray,fgx);
gy = imfilter(igray,fgy);

figure('Name','Task 5a - Gradient Filtering','NumberTitle','off')
subplot(1,2,1),imshow(gx)
title('Vertical Gradient of Image')
subplot(1,2,2),imshow(gy)
title('Horizontal Gradient of Image')


%Task 5b
strength = sqrt(double(gx.^2 + gy.^2)) > 10;

figure('Name','Task 5b - Strength of Gradients','NumberTitle','off')
subplot(1,1,1),imshow(strength)
title('Strength of Gradients')


%Task 6
sobel = edge(igray,'Sobel',0.06,'vertical');

figure('Name','Task 6 - Sobel Edge Operator','NumberTitle','off')
subplot(1,1,1),imshow(sobel)
title('Sobel Filtering')


%Task 7
canny = edge(igray,'Canny',0.58);

figure('Name','Task 7 - Canny Edge Operator','NumberTitle','off')
subplot(1,1,1),imshow(canny)
title('Canny Edge Operator')

