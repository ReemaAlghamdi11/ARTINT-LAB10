% Task 1: Area and perimeter of shapes

square(Side, Area, Perimeter) :-
    Side > 0,
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Width > 0,
    Height > 0,
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, A, B, C, Area, Perimeter) :-
    Base > 0,
    Height > 0,
    A > 0,
    B > 0,
    C > 0,
    Area is 0.5 * Base * Height,
    Perimeter is A + B + C.

% Task 2: Login with three attempts

user(ahmed, 1234).
user(sara, 5678).

login :-
    check_login(3).

check_login(Attempts) :-
    write('Username: '),
    read(Username),
    write('Password: '),
    read(Password),
    ( user(Username, Password) ->
        writeln('Login Successful')
    ;
        writeln('Login Unsuccessful'),
        Remaining is Attempts - 1,
        ( Remaining > 0 ->
            check_login(Remaining)
        ;
            writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
