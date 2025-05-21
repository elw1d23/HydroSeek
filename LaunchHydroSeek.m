%% WRAPPER SCRIPT FOR HYDROSEEK
% This script should be used to launch HydroSeek if you have experienced
% issues launching HydroSeek on a windows laptop.
% Ensure that you are launching HydroSeek on the same screen you wish to
% use it on - this is because during launching the app accesses the screen
% dimensions of your user interface. 

function LaunchHydroSeek()

% launches the HydroSeek app with screen size adjustment, overriding
% default settings during launch

% Create the app instance
app = HydroSeek_Custom_V2();

% Give MATLAB a moment to render the app
drawnow;
pause(0.1);

% Get the screen size
screenSize = get(0, 'ScreenSize');
screenWidth = screenSize(3);
screenHeight = screenSize(4);

% Get current figure position
currentPos = app.UIFigure.Position;
figWidth = currentPos(3);
figHeight = currentPos(4);

% Check if window fits on screen
if figWidth > screenWidth || figHeight > screenHeight
    % Window is too large, adjust it
    newWidth = min(figWidth, screenWidth * 0.9);
    newHeight = min(figHeight, screenHeight * 0.9);

    % Center the window
    leftPos = max(10, (screenWidth - newWidth) / 2);
    bottomPos = max(10, (screenHeight - newHeight) / 2);

    % Update figure position
    app.UIFigure.Position = [leftPos, bottomPos, newWidth, newHeight];

    % Also adjust TabGroup size to match
    app.TabGroup.Position = [10, 10, newWidth-20, newHeight-20];

    % Force redraw
    drawnow;
else
    % Window size is fine, just center it
    leftPos = max(10, (screenWidth - figWidth) / 2);
    bottomPos = max(10, (screenHeight - figHeight) / 2);

    % Update figure position
    app.UIFigure.Position = [leftPos, bottomPos, figWidth, figHeight];

    % Force redraw
    drawnow;
end

% Don't return the app object to keep it in memory
if nargout == 0
    clear app;
end
end