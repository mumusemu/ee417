clc; clear all;

I = imread('raf.jpeg');
i = imread('raf22.jpg');
I11 = imread('buzz.jpg');
I22 = imread('buzz2.jpg');

I1 = imread('süt2.jpg');
I2 = imread('ayrann.jpg');
I3 = imread('sana.jpg');
fileID = fopen('getdata.txt','w');
[value]=detectfridge (I,I1);

if value == 1
    a = ' süt var ';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),a);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
    
else 
    a = 'süt yok \n';
    disp(a);
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),a);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end

[value]=detectfridge (I,I2);
if value == 1
    b = 'ayran var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),b);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    b = 'ayran yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),b);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end
[value]=detectfridge (I,I3);
if value == 1
    c = 'sana var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),c);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    c = 'sana yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),c);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end

[value]=detectfridge (i,I1);
if value == 1
    d = 'süt var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),d);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    d = 'süt yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),d);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end
[value]=detectfridge (i,I2);
if value == 1
    e = 'ayran var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),e);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    e = 'ayran yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),e);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end
[value]=detectfridge (i,I3);
if value == 1
    f = 'sana var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),f);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    f = 'sana yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),f);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end
[value]=detectfridge (I22,I1);
if value == 1
    h = 'süt var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),h);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    h = 'süt yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),h);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end

[value]=detectfridge (I11,I1);
if value == 1
    g = 'süt var';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),g);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
else 
    g = 'süt yok';
    t = datetime('now');
    DateString = datestr(t);
    x='@';
    m = ' ==>';
    k=insertAfter(x,length(x),DateString);
    k=insertAfter(k,length(k),m);
    k=insertAfter(k,length(k),g);
    disp(k);
    fprintf(fileID,'%5s\r\n',k);
end

mail;
fclose(fileID);

