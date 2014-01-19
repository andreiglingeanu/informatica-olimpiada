program integrala;

var S, a, b, h : real;
    j, i, n    : integer;

function f(x:real):real;
begin
    f := sqr(x) * x + (2 * x) / (sqr(x) + 1);
end;
begin
    a := 2;           { Minimul intervalului }
    b := 4;           { Maximul intervalului }
    n := 100;         { Numarul de divizari }
    S := 0;           { Rezultatul aproximativ al integrarii }
    h := (b - a) / n; { Lungimea unui segment }

    for i := 0 to n - 1 do
        S := S + h * f(a + i * h + h / 2);
    writeln('I = ', S:0:6);
    readln();
end.
