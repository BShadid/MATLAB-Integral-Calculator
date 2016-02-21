%% Beginning Section

clear
clc
% Working Version: 0.0.1
%
% 21 February 2016: Currently, this program uses the built-in functions of
% int() and inline(). Inline will need to be replaced with an anonymous
% function and int will have to be replaced with a string-parcing version
% of itself. Pretty(ans) will be made obselete by the GUI that we
% construct.
%                   -BShadid (github.com/BShadid)

%% Determine Type

bool = true;
while (bool);
    indef = lower(input('Is your integral indefinite? ', 's'));
    if strcmp(indef, 'yes')
        indefinite = 1;
        bool = false;
    elseif strcmp(indef, 'no')
        indefinite = 0;
        bool = false;
    else
        disp('Please input either yes or no')
    end
end

%% Evaluate Type

if indefinite == 1
    inp = input('What would you like to integrate today?\n', 's');
    k = inline(inp,'x');
    syms x
    disp(' ')
    int(k(x));
    pretty(ans)
elseif indefinite == 0
    inp = input('What would you like to integrate today?\n', 's');
    lower = input('What is the lower bound of the function? ');
    upper = input('What is the upper bound of the integral? ');
    k = inline(inp);
    syms x
    disp(' ')
    int(k(x),lower,upper);
    pretty(ans)
end