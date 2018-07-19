clc;clear;

%设置字幕
subtitle = {'我来这个群', '是来学习的', '不是看你们开车的', '今晚几点发车?'};

x=[44;315];
y=[13;176];
%[x,y] = ginput(2);    %确定图像上的两点利用ginput函数，返回值是两点的坐标


% %裁剪图片
% for i = 0:51
%     str = sprintf('converted_file_abe50bbb-%d.jpg', i);
%     pic = imread(str);
%     
%     pic_1 = imcrop(pic,[x(1),y(1),abs(x(1)-x(2)),abs(y(1)-y(2))]);
%     
%     strout = sprintf('pics/out_%d.jpg',i);
%     imwrite(pic_1, strout);
%     
% end

%添加字幕
for i = 0:11
    str = sprintf('pics/out_%d.jpg', i);
    pic = imread(str);
    
    position =  [10 130];
    %OWithMacron=native2unicode([hex2dec('C5') hex2dec('8C')],'UTF-8');
    RGB = insertText(pic,position,subtitle(1),'Font','等线','BoxColor','w','FontSize',15);
    
    strout = sprintf('output/output_%d.jpg',i);
    imwrite(RGB, strout);
        
end

for i = 12:28
    str = sprintf('pics/out_%d.jpg', i);
    pic = imread(str);
    
    position =  [10 130];
    %OWithMacron=native2unicode([hex2dec('C5') hex2dec('8C')],'UTF-8');
    RGB = insertText(pic,position,subtitle(2),'Font','等线','BoxColor','w','FontSize',15);
    
    strout = sprintf('output/output_%d.jpg',i);
    imwrite(RGB, strout);        
end

for i = 29:43
    str = sprintf('pics/out_%d.jpg', i);
    pic = imread(str);
    
    position =  [10 130];
    %OWithMacron=native2unicode([hex2dec('C5') hex2dec('8C')],'UTF-8');
    RGB = insertText(pic,position,subtitle(3),'Font','等线','BoxColor','w','FontSize',15);
    
    strout = sprintf('output/output_%d.jpg',i);
    imwrite(RGB, strout);        
end

for i = 44:51
    str = sprintf('pics/out_%d.jpg', i);
    pic = imread(str);
    
    position =  [10 130];
    %OWithMacron=native2unicode([hex2dec('C5') hex2dec('8C')],'UTF-8');
    RGB = insertText(pic,position,subtitle(4),'Font','等线','BoxColor','w','FontSize',15);
    
    strout = sprintf('output/output_%d.jpg',i);
    imwrite(RGB, strout);        
end


%输出gif
addpath('output');

picNums=51;
for i=1:picNums
    str = sprintf('output_%d.jpg',i);
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    if(i==1)
        imwrite(I,map,'movefig.gif','DelayTime',0.1,'LoopCount',Inf)
    else
        imwrite(I,map,'movefig.gif','WriteMode','append','DelayTime',0.1)    
    end
end
