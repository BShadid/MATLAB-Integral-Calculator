%% Beginning Section

clear
clc

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