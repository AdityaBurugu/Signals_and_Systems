% Clear command window, workspace, and close all figures
clc; clear all; close all

% Create a VideoReader object for the MP4 file
videoFile = VideoReader('sample-10s.mp4');

% Read frames from the MP4 video and store them in a cell array
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

% Process frames to detect motion
for a = 1:2:length(video) % Loop through frames with a step size of 2
    if (a == length(video)-1) % Check if the matrix index doesn't exceed the limit
        break
    end

    % Extract current and next frames
    a1 = video{a}; % Current frame
    a2 = video{a+1}; % Next frame

    % Compute the squared absolute difference between frames
    aaa = abs(a1 - a2).^2;

    % Compute the sum of squared differences across color channels
    aaa1 = aaa(:,:,1) + aaa(:,:,2) + aaa(:,:,3);

    % Apply a 3x3 max filter to enhance motion information
    aaa2 = ordfilt2(aaa1, 30, true(8));

    % Convert the result to double precision
    aaa3 = im2double(aaa2);

    % Apply a power transformation to enhance motion visibility
    zeta = 5;
    aaa3 = aaa3.^zeta;

    % Display the motion frame
    imshow(aaa3);
    title('Motion Video');
    drawnow;
end
