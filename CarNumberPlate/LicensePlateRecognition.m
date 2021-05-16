function LicensePlateRecognition
clc; clear all; close all;
h = figure(  'Position', [460 500 320 60] );
set(h,'Name','License Plate Recognition','numbertitle','off')
set(h, 'MenuBar', 'none');
set(h, 'ToolBar', 'none');

lafs = javax.swing.UIManager.getInstalledLookAndFeels;
javax.swing.UIManager.setLookAndFeel('javax.swing.plaf.metal.MetalLookAndFeel');
javax.swing.UIManager.setLookAndFeel('com.jgoodies.looks.plastic.Plastic3DLookAndFeel');

btn1 = uicontrol ( 'Parent',h, ...
                                'Style', 'pushbutton', ...
                                'String', 'Live Tracking',...
                                'Backgroundcolor','g', ...
                                'Position', [10 10 100 40], ...
                                'Callback', @lt); 
    
btn2 = uicontrol ( 'Parent',h, ...
                                'Style', 'pushbutton', ...
                                'String', 'Static Tracking',...
                                'Backgroundcolor','c', ...
                                'Position', [120 10 100 40], ...
                                'Callback', @st);  

btn3 = uicontrol ( 'Parent',h, ...
                                'Style', 'pushbutton', ...
                                'String', 'Exit',...
                                'Backgroundcolor','r', ...
                                'Position', [240 10 60 40], ...
                                'Callback', @el); 
                            
                            
function lt(~,~)
LiveTracking
end


function st(~,~)
StaticTracking
end

function el(~,~)
x=questdlg('Do you want to close program?','User Action','Yes','No','Yes');
switch x
    case 'Yes'
        close(gcf);
    case 'No'
end
end

end
