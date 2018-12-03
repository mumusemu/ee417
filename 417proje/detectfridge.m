function [value]=detectfridge (Ia,Ib)

I10 = rgb2gray(Ia);
I2 = rgb2gray(Ib);

boxPoints = detectSURFFeatures(I2);
scenePoints = detectSURFFeatures(I10);

figure;
imshow(I2);
title('100 Strongest Feature Points from Box Image');
hold on;
plot(selectStrongest(boxPoints, 100));

figure;
imshow(I10);
title('300 Strongest Feature Points from Scene Image');
hold on;
plot(selectStrongest(scenePoints, 300));

[boxFeatures, boxPoints] = extractFeatures(I2, boxPoints);
[sceneFeatures, scenePoints] = extractFeatures(I10, scenePoints);

boxPairs = matchFeatures(boxFeatures, sceneFeatures);

if boxPairs == matchFeatures(boxFeatures, sceneFeatures)

matchedBoxPoints = boxPoints(boxPairs(:, 1), :);
matchedScenePoints = scenePoints(boxPairs(:, 2), :);
figure;
showMatchedFeatures(I2, I10, matchedBoxPoints, ...
    matchedScenePoints, 'montage');
title('Putatively Matched Points (Including Outliers)');

[tform, inlierBoxPoints, inlierScenePoints] = ...
    estimateGeometricTransform(matchedBoxPoints, matchedScenePoints, 'affine');


figure;
showMatchedFeatures(I2, I10, inlierBoxPoints, ...
    inlierScenePoints, 'montage');
title('Matched Points (Inliers Only)');

boxPolygon = [1, 1;...                           % top-left
        size(I2, 2), 1;...                 % top-right
        size(I2, 2), size(I2, 1);... % bottom-right
        1, size(I2, 1);...                 % bottom-left
        1, 1];  

newBoxPolygon1 = transformPointsForward(tform, boxPolygon);
figure;
imshow(Ia);
hold on;

line(newBoxPolygon1(:, 1), newBoxPolygon1(:, 2), 'Color', 'y');
value=1;
else
    value=0;
end
end
