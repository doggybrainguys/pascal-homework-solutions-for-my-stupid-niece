program baitap1;
  var dayso: array [1..200] of integer;
  var n, i: 1..200;
  var s, x: integer;
begin
  { nhập dãy số }
  write('số lượng phần tử');
  read(n);
  writeln('nhập dãy số: ');
  for i := 1 to n do begin
    write('  phần tử ', i, ' = ');
    read(dayso[i]);
  end;

  { tính tổng }
  s := 0;
  for x in dayso do s := s + x;

  { hiển thị kết quả }
  writeln('tổng các phần tử trong dãy số là: s = ', s);
end.
