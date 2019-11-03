function drawcenteredtext(wptr,str,rect,color,textsize)
%本函数用于在某个矩形区域内居中绘制汉字
%第一个参数指定窗口代号
%第二个参数指定绘制的文本
%第三个参数指定居中的区域

if nargin<3
    error('错了，参数太少了');
elseif nargin<4
    color=0;
    textsize=24;
elseif nargin<5
    textsize=24;
end

str=double(str);
oldsize=Screen('TextSize',wptr,textsize);
drect=Screen('TextBounds',wptr,str);
sx=(rect(3)-rect(1)-drect(3))/2+rect(1);
sy=(rect(4)-rect(2)-drect(4))/2+rect(2);
Screen('DrawText',wptr,str,sx,sy,color);
Screen('TextSize',wptr,oldsize);