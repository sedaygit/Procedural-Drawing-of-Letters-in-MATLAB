% Create a blank image with dimensions 480x640 pixels and set it to a black background
imageSize = [480, 640];
background = zeros(imageSize, 'uint8');

% Create the image 
image = background;

% Define the parameters for the letter "S"
letterS = struct('slot', [100, 100], 'gray', 100);

% Draw the top horizontal bar of "S"
image(letterS.slot(1):letterS.slot(1) + 20, ... %üst kalınlık
      letterS.slot(2):letterS.slot(2) + 160) = letterS.gray; %üst uzunluk

% Draw the left vertical bar of "S" (upper part)
image(letterS.slot(1):letterS.slot(1) + 100, ...%sol yan uzunluk
      letterS.slot(2):letterS.slot(2) + 20) = letterS.gray;%sol yan kalınlık

% Draw the right vertical bar of "S" (lower part)
image(letterS.slot(1) + 80:letterS.slot(1) + 180, ...%sağ ALT üst uz:sağ alt uz
      letterS.slot(2) + 140:letterS.slot(2) + 160) = letterS.gray;%genişlik

% Draw the bottom horizontal bar of "S"
image(letterS.slot(1) + 160:letterS.slot(1) + 180, ...%alt klaınlık: alta doğru
      letterS.slot(2):letterS.slot(2) + 160) = letterS.gray;%alt uzunluk

% Connect the dots in the middle part of "S" with a vertical line
image(letterS.slot(1) + 80:letterS.slot(1) + 100, ...%orta gen yukarı:aşağı
      letterS.slot(2) + 20:letterS.slot(2) + 140) = letterS.gray;%sola:sağa

% Define the parameters for the dot
dot = struct('slot', [280, 260], 'width', 20, 'height', 20, 'gray', 200);

% Add the dot
image(dot.slot(2):(dot.slot(2) + dot.height - 1), ...
      dot.slot(1):(dot.slot(1) + dot.width - 1)) = dot.gray;

% Define the parameters for the letter "Y"
letterY = struct('slot', [100, 320], 'gray', 50);

% Add the upper left vertical bar of "Y" SOL ÜST
image(letterY.slot(1):(letterY.slot(1) + 100), ...
      letterY.slot(2):(letterY.slot(2) + 20)) = letterY.gray;

% Add the bottom bar of "Y" ALT 
image(letterY.slot(1) + 160:(letterY.slot(1) + 180), ...
      letterY.slot(2):(letterY.slot(2) + 160)) = letterY.gray;

% Add the right vertical bar of "Y" SAĞ 
image(letterY.slot(1) + 0:(letterY.slot(1) + 180), ...
      letterY.slot(2) + 140:(letterY.slot(2) + 160)) = letterY.gray;

% Connect the dots in the middle part of "S" with a vertical line
image(letterY.slot(1) + 80:letterY.slot(1) + 100, ...%orta gen yukarı:aşağı
      letterY.slot(2) + 20:letterY.slot(2) + 140) = letterY.gray;%sola:sağa

% Define the parameters for the dot (rectangle shape)
dot = struct('slot', [500, 260], 'width', 20, 'height', 20, 'gray', 30);

% Add the dot as a gray rectangle
image(dot.slot(2):(dot.slot(2) + dot.height - 1), ...
      dot.slot(1):(dot.slot(1) + dot.width - 1)) = dot.gray;

% Display the resulting image
imshow(image);
