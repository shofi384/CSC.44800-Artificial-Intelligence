remainder(X,[X|Ds],Ds).    
remainder(X,[_|Ds],Rs) :- remainder(X,Ds,Rs).



%Checks that `X` comes before `Y`
%in the list `Ds`b
before(X,Y,Ds) :-
    remainder(X,Ds,Rs),
    member(Y,Rs).



 members([],_).        
members([X|Xs],Ds) :-
    member(X,Ds),
    members(Xs,Ds).   

    puzzle :-
    Days = [[onTuesday, _, _], [onWednesday, _, _], [onThursday, _, _], [onFriday, _, _]], 
     before([_, ms_Langone, _],[_, _, balloon], Days),
     before([_, _, frisbee], [_, ms_Langone, _], Days),
    
     (member([onFriday, mr_barnes, _], Days);
        member([onFriday, _, clothesline], Days);
        member([onFriday, mr_barnes, clothesline], Days)),
    members([[_, ms_Langone, _],[_, mr_barnes, _],[_, mr_hugh, _],[_, ms_Demetri, _]], Days),
    
    members([[_, _, balloon], [_, _, frisbee], [_, _, clothesline], [_, _, water_tower]], Days),
    
member([_, NOT_mr_hugh, frisbee], Days), NOT_mr_hugh \= mr_hugh,
member([onTuesday, NOT_ms_Demetri, _], Days), NOT_ms_Demetri \= ms_Demetri,
member([_, NOT_ms_Langone, water_tower], Days), NOT_ms_Langone \= ms_Langone,
write(Days),
    nl.
