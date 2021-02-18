program baitap3;
  var dayso: array [1..200] of integer;
  var n, i: 1..200;
  var x: integer;
begin
  { nhập dãy số }
  write('n = ');
  read(n);
  writeln('nhập dãy số: ');
  for i := 1 to n do begin
    write('  phần tử ', i, ' = ');
    read(dayso[i]);
  end;

  { hiển thị kết quả }
  write('các phần tử âm trong dãy số: ');
  for x in dayso do
    if x < 0 then
      write(x, ' ');

  writeln;
end.
