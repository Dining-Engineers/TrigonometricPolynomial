%{
For a GUIDE-generated GUI, you MUST run the function file associated with the GUI to perform necessary initialization.
 Double-clicking the fig file will NOT perform this initialization and your GUI will NOT work.

%}



function varargout = TrigonometricPolynomial(varargin)
%TRIGONOMETRICPOLYNOMIAL M-file for TrigonometricPolynomial.fig
%      TRIGONOMETRICPOLYNOMIAL, by itself, creates a new TRIGONOMETRICPOLYNOMIAL or raises the existing
%      singleton*.
%
%      H = TRIGONOMETRICPOLYNOMIAL returns the handle to a new TRIGONOMETRICPOLYNOMIAL or the handle to
%      the existing singleton*.
%
%      TRIGONOMETRICPOLYNOMIAL('Property','Value',...) creates a new TRIGONOMETRICPOLYNOMIAL using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to TrigonometricPolynomial_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TRIGONOMETRICPOLYNOMIAL('CALLBACK') and TRIGONOMETRICPOLYNOMIAL('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TRIGONOMETRICPOLYNOMIAL.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TrigonometricPolynomial


% Authors:  - Andrea Rizzo, andrearizzo [at] outlook.com
%           - Matteo Bruni, matteo.bruni [at] gmail.com
%             
% Date: 10/06/2013
%
% You are free to use, change, or redistribute this code in any way you
% want for non-commercial purposes. However, it is appreciated if you 
% maintain the name of the original author.
%
% (C) A.Rizzo, M. Bruni


% Last Modified by GUIDE v2.5 10-Jun-2013 15:49:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TrigonometricPolynomial_OpeningFcn, ...
                   'gui_OutputFcn',  @TrigonometricPolynomial_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before TrigonometricPolynomial is made visible.
function TrigonometricPolynomial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TrigonometricPolynomial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TrigonometricPolynomial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TrigonometricPolynomial_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function nNodi_Callback(hObject, eventdata, handles)
% hObject    handle to nNodi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nNodi as text
%        str2double(get(hObject,'String')) returns contents of nNodi as a double


% --- Executes during object creation, after setting all properties.
function nNodi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nNodi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function nBasi_Callback(hObject, eventdata, handles)
% hObject    handle to nBasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nBasi as text
%        str2double(get(hObject,'String')) returns contents of nBasi as a double


% --- Executes during object creation, after setting all properties.
function nBasi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nBasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function functionString_Callback(hObject, eventdata, handles)
% hObject    handle to functionString (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functionString as text
%        str2double(get(hObject,'String')) returns contents of functionString as a double


% --- Executes during object creation, after setting all properties.
function functionString_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionString (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcola.
function Calcola_Callback(hObject, eventdata, handles)
% hObject    handle to Calcola (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% set(handles.nNodi, 'String', num2str(n) );

%estrae i dati dalla GUI
% lunghezza del vettore da x0 a xm

n = str2double(get(handles.nBasi,'String'));

if (get(handles.uniformButton,'Value') == get(handles.editFunctionButton,'Max'))
    
    m = str2double(get(handles.nNodi,'String'));
    % nel caso in cui m > 2n+1 il polinomio è approssimante
    % se m = 2n+1 il polinomio è interpolante
    nodi = getUniformNodes( 0, 2*pi, m );
    nodi = nodi(1:end-1);
   
    syms x;
    if (get(handles.editFunctionButton,'Value') == get(handles.editFunctionButton,'Max'))
       % Checkbox is checked-take appropriate action
       funzione=sym(get(handles.functionString,'String'));
    else
       % Checkbox is not checked-take appropriate action
       funzione = sym(getCurrentPopupString(handles.functionList));

    end

    f=matlabFunction(funzione);

    f_values = f(nodi);
    
else
    dati = csvread(get(handles.nodiFile,'String'));
    dati = sortrows(dati);
    m = size(dati, 1);
    nodi = dati(:,1)';
    f_values = dati(:,2)';   
end



a = str2double(get(handles.aInt,'String'));
b = str2double(get(handles.bInt,'String'));

if( m == 2*n )
    set(handles.text7, 'String', 'Polinomio interpolante con numero di basi PARI' );
elseif( m == 2*n+1 )
    set(handles.text7, 'String', 'Polinomio interpolante con numero di basi DISPARI' );
elseif( m > 2*n +1 )
    set(handles.text7, 'String', 'Polinomio approssimante m > 2n+1' );
else
    uiwait(errordlg('Wrong m value. Choose m >= 2n'));
    return;
end



[x_tab1, y_tab1] = genTrigonometricPol( nodi, f_values, n, a, b );

%plotta la funzione
axes(handles.axes1);
cla;
global handle funplot;
hold on;
funplot = plot( x_tab1, y_tab1, 'r' );

if (get(handles.uniformButton,'Value') == get(handles.editFunctionButton,'Max'))
    % draw real function
    fy_tab1 = f(x_tab1); 
    funplot = plot( x_tab1, fy_tab1, 'b' );
end

funplot = plot( nodi, f_values, '*g');

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aInt_Callback(hObject, eventdata, handles)
% hObject    handle to aInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aInt as text
%        str2double(get(hObject,'String')) returns contents of aInt as a double


% --- Executes during object creation, after setting all properties.
function aInt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bInt_Callback(hObject, eventdata, handles)
% hObject    handle to bInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bInt as text
%        str2double(get(hObject,'String')) returns contents of bInt as a double


% --- Executes during object creation, after setting all properties.
function bInt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in functionList.
function functionList_Callback(hObject, eventdata, handles)
% hObject    handle to functionList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns functionList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from functionList


% --- Executes during object creation, after setting all properties.
function functionList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str = getCurrentPopupString(hh)
%# getCurrentPopupString returns the currently selected string in the popupmenu with handle hh

%# could test input here
if ~ishandle(hh) || strcmp(get(hh,'Type'),'popupmenu')
error('getCurrentPopupString needs a handle to a popupmenu as input')
end

%# get the string - do it the readable way
list = get(hh,'String');
val = get(hh,'Value');
str = list{val};


% --- Executes on button press in BrowseButton.
function BrowseButton_Callback(hObject, eventdata, handles)
% hObject    handle to BrowseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.nodiFile,'String',uigetfile({'*.csv','csv file'}));

set(handles.fileRadio,'Value',1);
Disable_View(handles);


function Enable_View(handles)

set(handles.functionString,'Enable','on');
set(handles.functionList,'Enable','on');
set(handles.nNodi,'Enable','on');
set(handles.editFunctionButton,'Enable','on');
set(handles.functionButton,'Enable','on');




function Disable_View(handles)

set(handles.functionString,'Enable','off');
set(handles.functionList,'Enable','off');
set(handles.nNodi,'Enable','off');
set(handles.editFunctionButton,'Enable','off');
set(handles.functionButton,'Enable','off');





% --- Executes when selected object is changed in uipanel4.
function uipanel4_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel4 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
if (strcmp(get(hObject,'Tag'),'fileRadio'))
    Disable_View(handles);
else
    Enable_View(handles);
end


% --- Executes on key press with focus on functionString and none of its controls.
function functionString_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to functionString (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
