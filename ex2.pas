program caractere;
type sirChar = array[1..MaxInt] of char;
var sir : sirChar;
    paranteze, acolade, parPatrate, j, i, n : integer;
label corect, incorect, 3;

procedure printeaza_sirul(var sir : sirChar; n : integer);
var i : integer;
begin
    for i := 1 to n do
        write(sir[i]);
end;
begin
    paranteze  := 0;
    acolade    := 0;
    parPatrate := 0;

    write('introduceti n = '); readln(n);

    for i := 1 to n do
        read(sir[i]);

    if n mod 2 <> 0 then
        goto incorect;

    for i := 1 to n do
        if sir[i] = '(' or sir[i] = ')' then
            paranteze := paranteze + 1;
    for i := 1 to n do
        if sir[i] = '[' or sir[i] = ']' then
            parPatrate := parPatrate + 1;
    for i := 1 to n do
        if sir[i] = '{' or sir[i] = '}' then
            acolade := acolade + 1;

corect: write('sirul este corect '); printeaza_sirul(sir, n); goto 3;
incorect: write('sirul este incorect '); printeaza_sirul(sir, n);
3:
end.
