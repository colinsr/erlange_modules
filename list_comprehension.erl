-module(list_comprehension).


%% internal erlang script to mess with list comprehensions

L = [1,2,3,4,5].

DoubleL = lists:map(fun(X)->2*X end, L).

DoubleLUsingListComp = [2*X||X<-L]. % this gives the same result!

Buy = [ {oranges,4},{newspaper,1},{apples,10},{pears,6},{milk,3} ].

TwoTimesEachItem = [{Nanem2*Number}||{Name,Number}<-Buy].

CostPerItemAndQuantity = [{shop:costs(A),B}||{A,B}<-Buy].

TotalForEachItem = [shop:cost(A)*B||{A,B}<-Buy].

SumOfAllItemCosts = lists:sum([shop:cost(A)*B||{A,B}<-Buy]).


