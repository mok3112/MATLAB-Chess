function varargout = board(varargin)
% BOARD MATLAB code for board.fig
%      BOARD, by itself, creates a new BOARD or raises the existing
%      singleton*.
%
%      H = BOARD returns the handle to a new BOARD or the handle to
%      the existing singleton*.
%
%      BOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOARD.M with the given input arguments.
%
%      BOARD('Property','Value',...) creates a new BOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before board_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to board_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help board

% Last Modified by GUIDE v2.5 01-May-2017 23:06:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @board_OpeningFcn, ...
                   'gui_OutputFcn',  @board_OutputFcn, ...
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

function board_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
handles.pieceMatrix = [];
guidata(hObject, handles);
axes(handles.board);
hold on;
board = imshow('resources/board.png');
board.HitTest = 'off';


%%Positions / Pieces

uistack(handles.pos_1_1,'top');
axes(handles.pos_1_1);
hold on;
axis tight;
handles.pos_1_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/rook.png');
a = imshow('resources/pieces/white/rook.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_2,'top');
axes(handles.pos_1_2);
hold on;
axis tight;
handles.pos_1_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_3,'top');
axes(handles.pos_1_3);
hold on;
axis tight;
handles.pos_1_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_4,'top');
axes(handles.pos_1_4);
hold on;
axis tight;
handles.pos_1_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_5,'top');
axes(handles.pos_1_5);
hold on;
axis tight;
handles.pos_1_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_6,'top');
axes(handles.pos_1_6);
hold on;
axis tight;
handles.pos_1_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/white/rook.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_7,'top');
axes(handles.pos_1_7);
hold on;
axis tight;
handles.pos_1_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_1_8,'top');
axes(handles.pos_1_8);
hold on;
axis tight;
handles.pos_1_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/rook.png');
a = imshow('resources/pieces/black/rook.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_1,'top');
axes(handles.pos_2_1);
hold on;
axis tight;
handles.pos_2_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/knight.png');
a = imshow('resources/pieces/white/knight.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_2,'top');
axes(handles.pos_2_2);
hold on;
axis tight;
handles.pos_2_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_3,'top');
axes(handles.pos_2_3);
hold on;
axis tight;
handles.pos_2_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_4,'top');
axes(handles.pos_2_4);
hold on;
axis tight;
handles.pos_2_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_5,'top');
axes(handles.pos_2_5);
hold on;
axis tight;
handles.pos_2_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_6,'top');
axes(handles.pos_2_6);
hold on;
axis tight;
handles.pos_2_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_7,'top');
axes(handles.pos_2_7);
hold on;
axis tight;
handles.pos_2_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_2_8,'top');
axes(handles.pos_2_8);
hold on;
axis tight;
handles.pos_2_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/knight.png');
a = imshow('resources/pieces/black/knight.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_1,'top');
axes(handles.pos_3_1);
hold on;
axis tight;
handles.pos_3_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/bishop.png');
a = imshow('resources/pieces/white/bishop.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_2,'top');
axes(handles.pos_3_2);
hold on;
axis tight;
handles.pos_3_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_3,'top');
axes(handles.pos_3_3);
hold on;
axis tight;
handles.pos_3_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_4,'top');
axes(handles.pos_3_4);
hold on;
axis tight;
handles.pos_3_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_5,'top');
axes(handles.pos_3_5);
hold on;
axis tight;
handles.pos_3_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_6,'top');
axes(handles.pos_3_6);
hold on;
axis tight;
handles.pos_3_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_7,'top');
axes(handles.pos_3_7);
hold on;
axis tight;
handles.pos_3_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_3_8,'top');
axes(handles.pos_3_8);
hold on;
axis tight;
handles.pos_3_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/bishop.png');
a = imshow('resources/pieces/black/bishop.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_1,'top');
axes(handles.pos_4_1);
hold on;
axis tight;
handles.pos_4_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/queen.png');
a = imshow('resources/pieces/white/queen.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_2,'top');
axes(handles.pos_4_2);
hold on;
axis tight;
handles.pos_4_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_3,'top');
axes(handles.pos_4_3);
hold on;
axis tight;
handles.pos_4_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_4,'top');
axes(handles.pos_4_4);
hold on;
axis tight;
handles.pos_4_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_5,'top');
axes(handles.pos_4_5);
hold on;
axis tight;
handles.pos_4_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_6,'top');
axes(handles.pos_4_6);
hold on;
axis tight;
handles.pos_4_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_7,'top');
axes(handles.pos_4_7);
hold on;
axis tight;
handles.pos_4_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_4_8,'top');
axes(handles.pos_4_8);
hold on;
axis tight;
handles.pos_4_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/queen.png');
a = imshow('resources/pieces/black/queen.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_1,'top');
axes(handles.pos_5_1);
hold on;
axis tight;
handles.pos_5_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/king.png');
a = imshow('resources/pieces/white/king.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_2,'top');
axes(handles.pos_5_2);
hold on;
axis tight;
handles.pos_5_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_3,'top');
axes(handles.pos_5_3);
hold on;
axis tight;
handles.pos_5_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_4,'top');
axes(handles.pos_5_4);
hold on;
axis tight;
handles.pos_5_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_5,'top');
axes(handles.pos_5_5);
hold on;
axis tight;
handles.pos_5_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_6,'top');
axes(handles.pos_5_6);
hold on;
axis tight;
handles.pos_5_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_7,'top');
axes(handles.pos_5_7);
hold on;
axis tight;
handles.pos_5_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_5_8,'top');
axes(handles.pos_5_8);
hold on;
axis tight;
handles.pos_5_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/king.png');
a = imshow('resources/pieces/black/king.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_1,'top');
axes(handles.pos_6_1);
hold on;
axis tight;
handles.pos_6_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/bishop.png');
a = imshow('resources/pieces/white/bishop.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_2,'top');
axes(handles.pos_6_2);
hold on;
axis tight;
handles.pos_6_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_3,'top');
axes(handles.pos_6_3);
hold on;
axis tight;
handles.pos_6_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_4,'top');
axes(handles.pos_6_4);
hold on;
axis tight;
handles.pos_6_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_5,'top');
axes(handles.pos_6_5);
hold on;
axis tight;
handles.pos_6_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_6,'top');
axes(handles.pos_6_6);
hold on;
axis tight;
handles.pos_6_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_7,'top');
axes(handles.pos_6_7);
hold on;
axis tight;
handles.pos_6_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_6_8,'top');
axes(handles.pos_6_8);
hold on;
axis tight;
handles.pos_6_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/bishop.png');
a = imshow('resources/pieces/black/bishop.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_1,'top');
axes(handles.pos_7_1);
hold on;
axis tight;
handles.pos_7_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/knight.png');
a = imshow('resources/pieces/white/knight.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_2,'top');
axes(handles.pos_7_2);
hold on;
axis tight;
handles.pos_7_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_3,'top');
axes(handles.pos_7_3);
hold on;
axis tight;
handles.pos_7_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_4,'top');
axes(handles.pos_7_4);
hold on;
axis tight;
handles.pos_7_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_5,'top');
axes(handles.pos_7_5);
hold on;
axis tight;
handles.pos_7_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_6,'top');
axes(handles.pos_7_6);
hold on;
axis tight;
handles.pos_7_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_7,'top');
axes(handles.pos_7_7);
hold on;
axis tight;
handles.pos_7_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_7_8,'top');
axes(handles.pos_7_8);
hold on;
axis tight;
handles.pos_7_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/knight.png');
a = imshow('resources/pieces/black/knight.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_1,'top');
axes(handles.pos_8_1);
hold on;
axis tight;
handles.pos_8_1.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/rook.png');
a = imshow('resources/pieces/white/rook.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_2,'top');
axes(handles.pos_8_2);
hold on;
axis tight;
handles.pos_8_2.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/white/pawn.png');
a = imshow('resources/pieces/white/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_3,'top');
axes(handles.pos_8_3);
hold on;
axis tight;
handles.pos_8_3.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_4,'top');
axes(handles.pos_8_4);
hold on;
axis tight;
handles.pos_8_4.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_5,'top');
axes(handles.pos_8_5);
hold on;
axis tight;
handles.pos_8_5.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_6,'top');
axes(handles.pos_8_6);
hold on;
axis tight;
handles.pos_8_6.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/empty.png');
a = imshow('resources/pieces/empty.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_7,'top');
axes(handles.pos_8_7);
hold on;
axis tight;
handles.pos_8_7.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/pawn.png');
a = imshow('resources/pieces/black/pawn.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';

uistack(handles.pos_8_8,'top');
axes(handles.pos_8_8);
hold on;
axis tight;
handles.pos_8_8.PickableParts = 'all';
[a,map,alpha] = imread('resources/pieces/black/rook.png');
a = imshow('resources/pieces/black/rook.png');
set(a, 'AlphaData', alpha);
a.HitTest = 'off';


% Set UserData to corresponding positions.
% This works! Do it for all the other axes.
set(handles.pos_1_1, 'UserData', [1,1]);
set(handles.pos_1_2, 'UserData', [1,2]);
set(handles.pos_1_3, 'UserData', [1,3]);
set(handles.pos_1_4, 'UserData', [1,4]);
set(handles.pos_1_5, 'UserData', [1,5]);
set(handles.pos_1_6, 'UserData', [1,6]);
set(handles.pos_1_7, 'UserData', [1,7]);
set(handles.pos_1_8, 'UserData', [1,8]);

set(handles.pos_2_1, 'UserData', [2,1]);
set(handles.pos_2_2, 'UserData', [2,2]);
set(handles.pos_2_3, 'UserData', [2,3]);
set(handles.pos_2_4, 'UserData', [2,4]);
set(handles.pos_2_5, 'UserData', [2,5]);
set(handles.pos_2_6, 'UserData', [2,6]);
set(handles.pos_2_7, 'UserData', [2,7]);
set(handles.pos_2_8, 'UserData', [2,8]);

set(handles.pos_3_1, 'UserData', [3,1]);
set(handles.pos_3_2, 'UserData', [3,2]);
set(handles.pos_3_3, 'UserData', [3,3]);
set(handles.pos_3_4, 'UserData', [3,4]);
set(handles.pos_3_5, 'UserData', [3,5]);
set(handles.pos_3_6, 'UserData', [3,6]);
set(handles.pos_3_7, 'UserData', [3,7]);
set(handles.pos_3_8, 'UserData', [3,8]);

set(handles.pos_4_1, 'UserData', [4,1]);
set(handles.pos_4_2, 'UserData', [4,2]);
set(handles.pos_4_3, 'UserData', [4,3]);
set(handles.pos_4_4, 'UserData', [4,4]);
set(handles.pos_4_5, 'UserData', [4,5]);
set(handles.pos_4_6, 'UserData', [4,6]);
set(handles.pos_4_7, 'UserData', [4,7]);
set(handles.pos_4_8, 'UserData', [4,8]);

set(handles.pos_5_1, 'UserData', [5,1]);
set(handles.pos_5_2, 'UserData', [5,2]);
set(handles.pos_5_3, 'UserData', [5,3]);
set(handles.pos_5_4, 'UserData', [5,4]);
set(handles.pos_5_5, 'UserData', [5,5]);
set(handles.pos_5_6, 'UserData', [5,6]);
set(handles.pos_5_7, 'UserData', [5,7]);
set(handles.pos_5_8, 'UserData', [5,8]);

set(handles.pos_6_1, 'UserData', [6,1]);
set(handles.pos_6_2, 'UserData', [6,2]);
set(handles.pos_6_3, 'UserData', [6,3]);
set(handles.pos_6_4, 'UserData', [6,4]);
set(handles.pos_6_5, 'UserData', [6,5]);
set(handles.pos_6_6, 'UserData', [6,6]);
set(handles.pos_6_7, 'UserData', [6,7]);
set(handles.pos_6_8, 'UserData', [6,8]);

set(handles.pos_7_1, 'UserData', [7,1]);
set(handles.pos_7_2, 'UserData', [7,2]);
set(handles.pos_7_3, 'UserData', [7,3]);
set(handles.pos_7_4, 'UserData', [7,4]);
set(handles.pos_7_5, 'UserData', [7,5]);
set(handles.pos_7_6, 'UserData', [7,6]);
set(handles.pos_7_7, 'UserData', [7,7]);
set(handles.pos_7_8, 'UserData', [7,8]);

set(handles.pos_8_1, 'UserData', [8,1]);
set(handles.pos_8_2, 'UserData', [8,2]);
set(handles.pos_8_3, 'UserData', [8,3]);
set(handles.pos_8_4, 'UserData', [8,4]);
set(handles.pos_8_5, 'UserData', [8,5]);
set(handles.pos_8_6, 'UserData', [8,6]);
set(handles.pos_8_7, 'UserData', [8,7]);
set(handles.pos_8_8, 'UserData', [8,8]);


disp('Positions have been set');
setGlobalManager();
% move() testing here.
% pos = get(handles.pos_1_1, 'UserData');
% manager.move(pos, handles.pos_1_1, handles);



% Instantiate GameManager and make its value global (can be accessed from
% any function)
function setGlobalManager()
global manager;
manager = GameManager();

% Get the GameManager variable (to be used inside the callback functions)
function m = getGlobalManager()
global manager;
m = manager;


 
% UIWAIT makes board wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = board_OutputFcn(hObject, eventdata, handles) 
% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in UNDO_BUTTON.
function UNDO_BUTTON_Callback(hObject, eventdata, handles)
disp('UNDO');
manager = getGlobalManager();
manager.undo();


% --- Executes on button press in RESET_BUTTON.
function RESET_BUTTON_Callback(hObject, eventdata, handles)
disp('RESET');
close(gcbf);
board;


function board_ButtonDownFcn(hObject, eventdata, handles)

function board_CreateFcn(hObject, eventdata, handles)

%%Position Clicks

function pos_1_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_1');
position = get(handles.pos_1_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_1, handles);


function pos_1_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_2');
position = get(handles.pos_1_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_2, handles);


function pos_1_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_3');
position = get(handles.pos_1_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_3, handles);


function pos_1_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_4');
position = get(handles.pos_1_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_4, handles);


function pos_1_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_5');
position = get(handles.pos_1_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_5, handles);


function pos_1_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_6');
position = get(handles.pos_1_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_6, handles);


function pos_1_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_7');
position = get(handles.pos_1_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_7, handles);


function pos_1_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_1_8');
position = get(handles.pos_1_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_1_8, handles);


function pos_2_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_1');
position = get(handles.pos_2_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_1, handles);


function pos_2_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_2');
position = get(handles.pos_2_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_2, handles);

function pos_2_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_3');
position = get(handles.pos_2_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_3, handles);

function pos_2_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_4');
position = get(handles.pos_2_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_4, handles);

function pos_2_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_5');
position = get(handles.pos_2_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_5, handles);

function pos_2_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_6');
position = get(handles.pos_2_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_6, handles);

function pos_2_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_7');
position = get(handles.pos_2_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_7, handles);

function pos_2_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_2_8');
position = get(handles.pos_2_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_2_8, handles);

function pos_3_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_1');
position = get(handles.pos_3_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_1, handles);

function pos_3_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_2');
position = get(handles.pos_3_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_2, handles);

function pos_3_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_3');
position = get(handles.pos_3_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_3, handles);

function pos_3_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_4');
position = get(handles.pos_3_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_4, handles);

function pos_3_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_5');
position = get(handles.pos_3_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_5, handles);

function pos_3_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_6');
position = get(handles.pos_3_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_6, handles);

function pos_3_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_7');
position = get(handles.pos_3_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_7, handles);

function pos_3_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_3_8');
position = get(handles.pos_3_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_3_8, handles);

function pos_4_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_1');
position = get(handles.pos_4_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_1, handles);

function pos_4_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_2');
position = get(handles.pos_4_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_2, handles);

function pos_4_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_3');
position = get(handles.pos_4_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_3, handles);

function pos_4_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_4');
position = get(handles.pos_4_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_4, handles);

function pos_4_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_5');
position = get(handles.pos_4_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_5, handles);

function pos_4_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_6');
position = get(handles.pos_4_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_6, handles);

function pos_4_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_7');
position = get(handles.pos_4_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_7, handles);

function pos_4_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_4_8');
position = get(handles.pos_4_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_4_8, handles);

function pos_5_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_1');
position = get(handles.pos_5_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_1, handles);

function pos_5_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_2');
position = get(handles.pos_5_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_2, handles);

function pos_5_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_3');
position = get(handles.pos_5_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_3, handles);

function pos_5_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_4');
position = get(handles.pos_5_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_4, handles);

function pos_5_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_5');
position = get(handles.pos_5_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_5, handles);

function pos_5_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_6');
position = get(handles.pos_5_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_6, handles);

function pos_5_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_7');
position = get(handles.pos_5_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_7, handles);

function pos_5_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_5_8');
position = get(handles.pos_5_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_5_8, handles);

function pos_6_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_1');
position = get(handles.pos_6_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_1, handles);

function pos_6_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_2');
position = get(handles.pos_6_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_2, handles);

function pos_6_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_3');
position = get(handles.pos_6_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_3, handles);

function pos_6_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_4');
position = get(handles.pos_6_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_4, handles);

function pos_6_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_5');
position = get(handles.pos_6_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_5, handles);

function pos_6_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_6');
position = get(handles.pos_6_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_6, handles);

function pos_6_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_7');
position = get(handles.pos_6_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_7, handles);

function pos_6_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_6_8');
position = get(handles.pos_6_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_6_8, handles);

function pos_7_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_1');
position = get(handles.pos_7_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_1, handles);

function pos_7_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_2');
position = get(handles.pos_7_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_2, handles);

function pos_7_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_3');
position = get(handles.pos_7_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_3, handles);

function pos_7_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_4');
position = get(handles.pos_7_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_4, handles);

function pos_7_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_5');
position = get(handles.pos_7_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_5, handles);

function pos_7_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_6');
position = get(handles.pos_7_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_6, handles);

function pos_7_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_7');
position = get(handles.pos_7_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_7, handles);

function pos_7_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_7_8');
position = get(handles.pos_7_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_7_8, handles);

function pos_8_1_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_1');
position = get(handles.pos_8_1, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_1, handles);

function pos_8_2_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_2');
position = get(handles.pos_8_2, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_2, handles);

function pos_8_3_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_3');
position = get(handles.pos_8_3, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_3, handles);

function pos_8_4_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_4');
position = get(handles.pos_8_4, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_4, handles);

function pos_8_5_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_5');
position = get(handles.pos_8_5, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_5, handles);

function pos_8_6_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_6');
position = get(handles.pos_8_6, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_6, handles);

function pos_8_7_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_7');
position = get(handles.pos_8_7, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_7, handles);

function pos_8_8_ButtonDownFcn(hObject, eventdata, handles)
disp('pos_8_8');
position = get(handles.pos_8_8, 'UserData');
manager = getGlobalManager();
manager = manager.move(position, handles.pos_8_8, handles);

