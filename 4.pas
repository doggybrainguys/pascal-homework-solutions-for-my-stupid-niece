program q1;
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
  write('các phần tử lẻ và chia hết cho 3: ');
  for x in dayso do
    if (x mod 2 = 1) and (x mod 3 = 0) then
      write(x, ' ');

  writeln;
end.
