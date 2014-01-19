program caractere;
type sirChar = array[1..MaxInt] of char;
var sir : sirChar;
    paranteze_a, paranteze_b, acolade_a, acolade_b,
    parPatrate_a, parPatrate_b, j, i, n : integer;
label corect, incorect, 3;

procedure printeaza_sirul(var sir : sirChar; n : integer);
var i : integer;
begin
    for i := 1 to n do
        write(sir[i]);
end;
begin
    paranteze_a  := 0;
    paranteze_b  := 0;
    acolade_a    := 0;
    acolade_b    := 0;
    parPatrate_a := 0;
    parPatrate_b := 0;

    write('introduceti n = '); readln(n);

    for i := 1 to n do
        read(sir[i]);

    if n mod 2 <> 0 then
        goto incorect;

    for i := 1 to n do
        begin
            case sir[i] of
                '(': paranteze_a := paranteze_a + 1;
                ')': paranteze_b := paranteze_b + 1;
                '[': parPatrate_a := parPatrate_a + 1;
                ']': parPatrate_b := parPatrate_b + 1;
                '{': acolade_a := acolade_a + 1;
                '}': acolade_b := acolade_b + 1;
            end;
        end;

    if (paranteze_a  <> paranteze_b)  or
       (acolade_a    <> acolade_b)    or
       (parPatrate_a <> parPatrate_b) then
        goto incorect;

corect: write('sirul este corect ');     printeaza_sirul(sir, n); goto 3;
incorect: write('sirul este incorect '); printeaza_sirul(sir, n);
3:
end.
