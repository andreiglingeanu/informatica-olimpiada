program media;
var vector : array[1..MaxInt] of integer;
    s, i, n : integer;
begin
    write('introduceti n = ');readln(n);
    for i := 1 to n do
        begin
            write('introduceti vector[', i, '] = '); readln(vector[i]);
        end;
    s := 0;
    for i := 1 to n do
        s := s + vector[i];
    writeln('media acestor numere este: ', s / n : 0 : 3);
end.
