function [ radar_data ] = get_radar(s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    out=cellstr('1');
    while (~strcmp(out{1},'R0:'))
        out = cellstr(fscanf(s));
    end
    out = fscanf(s);
    if (out>0)
        radar_data(1)=str2double(out);
    end
    out=cellstr('1');
    while (~strcmp(out{1},'R1:'))
        out = cellstr(fscanf(s));
    end
    out = fscanf(s);
    if (out>0)
        radar_data(2)=str2double(out);
    end
    out=cellstr('1');
    while (~strcmp(out{1},'R2:'))
        out = cellstr(fscanf(s));
    end
    out = fscanf(s);
    if (out>0)
        radar_data(3)=str2double(out);
    end
    out=cellstr('1');
    while (~strcmp(out{1},'R3:'))
        out = cellstr(fscanf(s));
    end
    out = fscanf(s);
    if (out>0)
        radar_data(4)=str2double(out);
    end
    out=cellstr('1');
    while (~strcmp(out{1},'R4:'))
        out = cellstr(fscanf(s));
    end
    out = fscanf(s);    
    if (out>0)
        radar_data(5)=str2double(out);
    end

end

