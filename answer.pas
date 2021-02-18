program bai_tap;
  uses crt;
  type chi_so = 1..200;
  var day_so: array[chi_so] of integer;
  var x, s1, s2, s5: integer;
  var i, n: chi_so;
begin
  clrscr;

  { nhập mảng }
  write('số lượng số trong dãy số: ');
  read(n);
  writeln('các phần tử trong dãy số:');
  for i := 1 to n do begin
    write('  phần tử ', i, ' = ');
    read(day_so[i]);
  end;

  { tính các tổng }
  s1 := 0;
  s2 := 0;
  s5 := 0;
  for x in day_so do begin
    s1 := s1 + x;
    if x mod 2 = 0 then
      s2 := s2 + x
    else if x mod 3 = 0 then
      s5 := s5 + x;
  end;

  { hiển thị kết quả }
  writeln;
  writeln('=== KẾT QUẢ ===');
  writeln;

  writeln('==> Câu 1: Tổng các phần tử trong dãy số: s1 = ', s1);

  writeln('==> Câu 1: Tổng các phần tử chẵn trong dãy số: s2 = ', s2);

  write('==> Câu 3: Các phân tử âm trong dãy số: ');
  for x in day_so do if x < 0 then write(x, ' ');
  writeln;

  write('==> Câu 4: Các phần tử lẻ và chia hết cho 3: ');
  for x in day_so do if (x mod 2 = 1) and (x mod 3 = 0) then write(x, ' ');
  writeln;

  write('==> Câu 5: Tổng các phần tử lẻ và chia hết cho 3: s5 = ', s5);

  writeln;
  readln;
end.
