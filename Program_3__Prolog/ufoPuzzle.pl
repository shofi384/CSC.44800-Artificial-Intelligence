%	Shofiqur Rahman  
%	shofi384@gmail.com  
%	CSC.44800 - Artificial Intelligence  
%	Professor Stephen Lucci  

%	SWI-Prolog representation of the UFO Puzzle


remainder(X, [X | Ds], Ds).	% X is the remainder of Ds such that X is the first element of a list
/* prolog clause with '_' or "don't-care" variable, which will match anything. 
	It is basically defining the 'remainder' rule to be used for 'before' rule. It says X is the the remainder of Rs such that X is the first element of a list Rs, and the rest is Ds if remainder. . . */
remainder(X, [_ | Ds], Rs) :- 
	remainder(X, Ds, Rs).

/* Checks that `X` comes before `Y` in the list `Ds`b.
	It is basically defining the 'before' rule with arbitrary variable list Ds, Rs where Rs maps to 'Days' data and Ds and X maps to each element in 'Days'*/
before(X, Y, Ds) :-
    remainder(X, Ds, Rs),
    member(Y, Rs).	%This says if Y is a member of any list Rs(the second argument)?

members([], _).        
members([X | Xs], Ds) :-
    member(X, Ds),
    members(Xs, Ds).

    puzzle :-	% specifying the puzzle in a sequence of steps that need to be done in sequence.
/*Defining Days data structure that will hold all available days of the week at position 0, the person at positon 1, and the item seen at position at 2*/ 
    Days = [[onTuesday, _, _], [onWednesday, _, _], [onThursday, _, _], [onFriday, _, _]],
     before([_, ms_Langone, _], [_, _, balloon], Days),	% the fact as given; in the days data structue Langone appears before ballon
     before([_, _, frisbee], [_, ms_Langone, _], Days),	% the fact as given
    
     (member([onFriday, mr_barnes, _], Days);		% more steps of sequence to fill up Days
        member([onFriday, _, clothesline], Days);	% these facts are deduced from the given info
        member([onFriday, mr_barnes, clothesline], Days)),
    members([[_, ms_Langone, _],[_, mr_barnes, _],[_, mr_hugh, _],[_, ms_Demetri, _]], Days),	% Deduced from the analysis

    members([[_, _, balloon], [_, _, frisbee], [_, _, clothesline], [_, _, water_tower]], Days),
    
member([_, NOT_mr_hugh, frisbee], Days), NOT_mr_hugh \= mr_hugh,
member([onTuesday, NOT_ms_Demetri, _], Days), NOT_ms_Demetri \= ms_Demetri,
member([_, NOT_ms_Langone, water_tower], Days), NOT_ms_Langone \= ms_Langone,
write(Days), nl.	% prints out Days
