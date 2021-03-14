program bai_tap_e;
  uses crt;
  type chi_so = 1..100;
  var day_so: array[chi_so] of integer;
  var k, tong, dem: integer;
  var i, n: chi_so;
begin
  clrscr;

  { Nhập }

  write('số lượng số nguyên: ');
  readln(n);

  writeln('dãy số nguyên:');
  for i := 1 to n do begin
    write('  vị trí thứ ', i, ': ');
    readln(day_so[i]);
  end;

  write('nhập số nguyên k: ');
  readln(k);

  { e.1. Đếm các con số k }
  dem := 0;
  for i := 1 to n do if day_so[i] = k then dem := dem + 1;
  writeln('số lượng số nguyên trong dãy số có giá trị bằng k: ', dem);

  { e.2. Tính tổng các con số trong dãy số }
  tong := 0;
  for i := 1 to n do tong := tong + day_so[i];
  writeln('tổng các số nguyên trong dãy số: ', tong);

  { e.3. Các con số nhỏ hơn hoặc bằng k }
  write('các số nguyên nhỏ hơn hoặc bằng k trong dãy số: ');
  for i := 1 to n do if day_so[i] <= k then write(day_so[i], ' ');

  writeln;
  readln;
end.
