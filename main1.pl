adjacent(1,2). adjacent(2,1). adjacent(1,3). adjacent(3,1).
adjacent(1,4). adjacent(4,1). adjacent(1,5). adjacent(5,1).
adjacent(2,3). adjacent(3,2). adjacent(2,4). adjacent(4,2).
adjacent(3,4). adjacent(4,3). adjacent(4,5). adjacent(5,4).

color(1,red,a).
color(2,blue,a).
color(3,green,a).
color(4,yellow,a).
color(5,blue,a).

color(1,red,b).
color(2,blue,b).
color(4,blue,b).
color(5,green,b).
color(3,green,b).

conflict(Coloring) :-
    adjacent(X,Y),
    color(X,Color,Coloring),
    color(Y,Color,Coloring).


conflict(R1,R2,Coloring) :-
    adjacent(R1,R2),
    color(R1,Color,Coloring),
    color(R2,Color,Coloring).


/*
мапа налічує Н регіонів, підрахуйте максимальну кількість обчислень
які необхідно зробити для визначення чи є конфлікт кольорів?
Обгрунтуйте вашу відповідь із використанням дерева фактів програмного коду
*/

/*
we use here only for a coloring

the number of total computations can be calculated with sum of 
*/


color(1, red)
color(2, blue)

/*The conflict is no in the case when no such color that both nodes has*/
conflict() :-
    adjacent(X,Y),
    color(X,Color),
    color(Y,Color).