function varargout = water(varargin)
% WATER MATLAB code for water.fig
%      WATER, by itself, creates a new WATER or raises the existing
%      singleton*.
%
%      H = WATER returns the handle to a new WATER or the handle to
%      the existing singleton*.
%
%      WATER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WATER.M with the given input arguments.
%
%      WATER('Property','Value',...) creates a new WATER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before water_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to water_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help water

% Last Modified by GUIDE v2.5 14-May-2022 10:05:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @water_OpeningFcn, ...
                   'gui_OutputFcn',  @water_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before water is made visible.
function water_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to water (see VARARGIN)

% Choose default command line output for water
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes water wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = water_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('waterQuality1.csv');
opts.SelectedVariableNames = (1:20);
data = readmatrix('waterQuality1.csv', opts);
set(handles.uitable1,'data',data);


function al_Callback(hObject, eventdata, handles)
% hObject    handle to al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of al as text
%        str2double(get(hObject,'String')) returns contents of al as a double


% --- Executes during object creation, after setting all properties.
function al_CreateFcn(hObject, eventdata, handles)
% hObject    handle to al (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function am_Callback(hObject, eventdata, handles)
% hObject    handle to am (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of am as text
%        str2double(get(hObject,'String')) returns contents of am as a double


% --- Executes during object creation, after setting all properties.
function am_CreateFcn(hObject, eventdata, handles)
% hObject    handle to am (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ar_Callback(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ar as text
%        str2double(get(hObject,'String')) returns contents of ar as a double


% --- Executes during object creation, after setting all properties.
function ar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bar_Callback(hObject, eventdata, handles)
% hObject    handle to bar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bar as text
%        str2double(get(hObject,'String')) returns contents of bar as a double


% --- Executes during object creation, after setting all properties.
function bar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cad_Callback(hObject, eventdata, handles)
% hObject    handle to cad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cad as text
%        str2double(get(hObject,'String')) returns contents of cad as a double


% --- Executes during object creation, after setting all properties.
function cad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chl_Callback(hObject, eventdata, handles)
% hObject    handle to chl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chl as text
%        str2double(get(hObject,'String')) returns contents of chl as a double


% --- Executes during object creation, after setting all properties.
function chl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cho_Callback(hObject, eventdata, handles)
% hObject    handle to cho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cho as text
%        str2double(get(hObject,'String')) returns contents of cho as a double


% --- Executes during object creation, after setting all properties.
function cho_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cop_Callback(hObject, eventdata, handles)
% hObject    handle to cop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cop as text
%        str2double(get(hObject,'String')) returns contents of cop as a double


% --- Executes during object creation, after setting all properties.
function cop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fl_Callback(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fl as text
%        str2double(get(hObject,'String')) returns contents of fl as a double


% --- Executes during object creation, after setting all properties.
function fl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bac_Callback(hObject, eventdata, handles)
% hObject    handle to bac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bac as text
%        str2double(get(hObject,'String')) returns contents of bac as a double


% --- Executes during object creation, after setting all properties.
function bac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vir_Callback(hObject, eventdata, handles)
% hObject    handle to vir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vir as text
%        str2double(get(hObject,'String')) returns contents of vir as a double


% --- Executes during object creation, after setting all properties.
function vir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function le_Callback(hObject, eventdata, handles)
% hObject    handle to le (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of le as text
%        str2double(get(hObject,'String')) returns contents of le as a double


% --- Executes during object creation, after setting all properties.
function le_CreateFcn(hObject, eventdata, handles)
% hObject    handle to le (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nit_Callback(hObject, eventdata, handles)
% hObject    handle to nit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nit as text
%        str2double(get(hObject,'String')) returns contents of nit as a double


% --- Executes during object creation, after setting all properties.
function nit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mer_Callback(hObject, eventdata, handles)
% hObject    handle to mer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mer as text
%        str2double(get(hObject,'String')) returns contents of mer as a double


% --- Executes during object creation, after setting all properties.
function mer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function per_Callback(hObject, eventdata, handles)
% hObject    handle to per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of per as text
%        str2double(get(hObject,'String')) returns contents of per as a double


% --- Executes during object creation, after setting all properties.
function per_CreateFcn(hObject, eventdata, handles)
% hObject    handle to per (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rad_Callback(hObject, eventdata, handles)
% hObject    handle to rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rad as text
%        str2double(get(hObject,'String')) returns contents of rad as a double


% --- Executes during object creation, after setting all properties.
function rad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sel_Callback(hObject, eventdata, handles)
% hObject    handle to sel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sel as text
%        str2double(get(hObject,'String')) returns contents of sel as a double


% --- Executes during object creation, after setting all properties.
function sel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sil_Callback(hObject, eventdata, handles)
% hObject    handle to sil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sil as text
%        str2double(get(hObject,'String')) returns contents of sil as a double


% --- Executes during object creation, after setting all properties.
function sil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ur_Callback(hObject, eventdata, handles)
% hObject    handle to ur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ur as text
%        str2double(get(hObject,'String')) returns contents of ur as a double


% --- Executes during object creation, after setting all properties.
function ur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nat_Callback(hObject, eventdata, handles)
% hObject    handle to nat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nat as text
%        str2double(get(hObject,'String')) returns contents of nat as a double


% --- Executes during object creation, after setting all properties.
function nat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
al = str2double(get(handles.al,'String'));
am = str2double(get(handles.am,'String'));
ar = str2double(get(handles.ar,'String'));
bar = str2double(get(handles.bar,'String'));
cad = str2double(get(handles.cad,'String'));
chl = str2double(get(handles.chl,'String'));
cho = str2double(get(handles.cho,'String'));
cop = str2double(get(handles.cop,'String'));
fl = str2double(get(handles.fl,'String'));
bac = str2double(get(handles.bac,'String'));
vir = str2double(get(handles.vir,'String'));
le = str2double(get(handles.le,'String'));
nit = str2double(get(handles.nit,'String'));
mer = str2double(get(handles.mer,'String'));
per = str2double(get(handles.per,'String'));
rad = str2double(get(handles.rad,'String'));
sel = str2double(get(handles.sel,'String'));
sil = str2double(get(handles.sil,'String'));
ur = str2double(get(handles.ur,'String'));
nat = str2double(get(handles.nat,'String'));

sample = [al am ar bar cad chl cho cop fl bac vir le nit mer per rad sel sil ur nat];

opts = detectImportOptions('waterQuality1.csv');
opts.SelectedVariableNames = (1:20);
training = readmatrix('waterQuality1.csv', opts);

opts = detectImportOptions('waterQuality1.csv');
opts.SelectedVariableNames = (21);
group = readmatrix('waterQuality1.csv', opts);

class = fitcknn(training, group, 'NumNeighbors', 1);
klasifikasi = predict(class, sample)

set(handles.hasil, 'String', klasifikasi);
