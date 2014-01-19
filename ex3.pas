program sumavector;
var vector : array[1..MaxInt] of integer;
    n, i, S : integer;
begin
    write('introduceti n = '); readln(n);
    for i := 1 to n do
        begin
            write('introduceti vector[', i, '] = '); readln(vector[i]);
        end;

    S := 0;
    for i := 1 to n do
        S := S + vector[i];
    writeln(S);
end.
