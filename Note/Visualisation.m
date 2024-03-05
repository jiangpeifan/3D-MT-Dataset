% This is a code for visualising MT data (Matlab)
% You need to read the .npy through readNPY.m

clc;
clear;
close all;

figure;
tiledlayout(1,1,'TileSpacing','tight','Padding','none');

nexttile(1,[1,1]);
num = '100008';  % Data No.

data = readNPY([Folder Path,num,'.npy']);  % Folder Path
data = single(data);
data = permute(data,[2,3,1]);
data(data == 100) = -100;  % Change with background resistivity

h = slice(data,1:64,1:64,1:32,'linear'); hold on
set(h,'EdgeColor','none',...
'FaceColor','interp',...
'FaceAlpha','interp')
alpha('color');
alphamap('increase',.01)
grid on;
axis tight;
shading interp;
daspect([1 1 1]);
zticks([1,16,32]);
zticklabels([0,2.5,5]);
yticks([1,32,64]);
yticklabels([0,5,10]);
xticks([1,32,64]);
xticklabels([0,5,10]);
xlabel('x Dist (Km)','Rotation',22,'Position',[9.105254059244317,-18.035926169324853,29.01960978649913]);
ylabel('y Dist (Km)','Rotation',-35,'Position',[1.200847708202559,22.937148598056524,44.928809390835795]);
zlabel('Depth (Km)');
set(gca,'ZDir','reverse');
set(gca,'FontSize',22);
title("Geoelectric Model","FontSize",30);