program suma;
var n : real;
function s(n : real):real;
begin
    if n = 1 then
        s := 1
    else
        s := 1/n + s(n - 1);
end;
begin
    write('introduceti n = '); readln(n);
    writeln('suma este = ', s(n):0:3);
end.
