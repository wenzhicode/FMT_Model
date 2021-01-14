function cellInfo = GPS_uBlox_Bus(varargin) 
% GPS_UBLOX_BUS returns a cell array containing bus object information 
% 
% Optional Input: 'false' will suppress a call to Simulink.Bus.cellToObject 
%                 when the MATLAB file is executed. 
% The order of bus element attributes is as follows:
%   ElementName, Dimensions, DataType, SampleTime, Complexity, SamplingMode, DimensionsMode, Min, Max, DocUnits, Description 

suppressObject = false; 
if nargin == 1 && islogical(varargin{1}) && varargin{1} == false 
    suppressObject = true; 
elseif nargin > 1 
    error('Invalid input argument(s) encountered'); 
end 

cellInfo = { ... 
  { ... 
    'GPS_uBlox_Bus', ... 
    '', ... 
    '', ... 
    'Auto', ... 
    '-1', {... 
{'timestamp', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], sprintf('ms'), ''}; ...
{'iTOW', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'year', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'month', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'day', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hour', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'min', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'sec', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'valid', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'tAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'nano', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'fixType', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'flags', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'reserved1', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'numSV', 1, 'uint8', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'lon', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'lat', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'height', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hMSL', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'hAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'vAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velN', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velE', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'velD', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'gSpeed', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'headMot', 1, 'int32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'sAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'headAcc', 1, 'uint32', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'pDOP', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
{'reserved2', 1, 'uint16', -1, 'real', 'Sample', 'Fixed', [], [], '', ''}; ...
    } ...
  } ...
}'; 

if ~suppressObject 
    % Create bus objects in the MATLAB base workspace 
    Simulink.Bus.cellToObject(cellInfo) 
end 
