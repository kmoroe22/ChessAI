%% @author karabo.moroe
%% @doc @todo Add description to board.


-module(board).

%% ====================================================================
%% API functions
%% ====================================================================
-export([generateRed/0,evenRow/3]).

-record(piece,{type=normal,color,x,y}).


generateRed()->
	evenRow(0,0,red)++ oddRow(1,1,red) ++ evenRow(2,0,red).
	
evenRow(X,8,Color) -> [];
evenRow(X,Y,Color) ->
			   [#piece{color=Color,x=X,y=Y}| evenRow(X,Y+2,Color)].

oddRow(X,9,Color) -> [];
oddRow(X,Y,Color) ->
			   [#piece{color=Color,x=X,y=Y}| evenRow(X,Y+2,Color)].

%% ====================================================================
%% Internal functions
%% ====================================================================


