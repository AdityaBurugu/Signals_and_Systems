clc; clear all; close all
% Create a VideoReader object for the MP4 file
videoFile = VideoReader('sample-10s.mp4');

% Read frames from the MP4 video
video = cell(1, videoFile.NumFrames);
for frameIdx = 1:videoFile.NumFrames
    video{frameIdx} = read(videoFile, frameIdx);
end

% Display original video frames
for b = 1:length(video)
    imagesc(video{b});
    title('Original Video');
    axis image off
    drawnow;
end
for a = 1:2:length(video) %% number of frames the video have
     if (a == length(video)-1) %% matrix dont exceed the limit
        break
    end
    a1=video{a}; %% save current frame to a var
    a2=video{a+1}; %% save next frame to a var
    aaa=abs(a1-a2).^2; %% absolute difference
    aaa1=(aaa(:,:,1)+aaa(:,:,2)+aaa(:,:,3));
    aaa2=ordfilt2(aaa1,30,true(8));
    aaa3=im2double(aaa2);
    zeta=5;
    aaa3=(aaa3.^zeta);
    imshow(aaa3); title('Motion Video');
    drawnow;
end