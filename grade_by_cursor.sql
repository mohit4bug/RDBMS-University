declare
c_grade marks.grade%type;
c_percentage marks.percentage%type;
CURSOR c_marks is select percentage , grade from marks;
begin
open c_marks;
Loop
fetch c_marks into c_percentage,c_grade;
exit when c_marks%notfound;
if (c_percentage > 85) then
c_grade:= 'A';
elsif (c_percentage > 70) and c_percentage <= 85 then
c_grade:= 'B';
elsif (c_percentage > 55 and c_percentage <= 70) then
c_grade:= 'C';
else
c_grade:= 'D';
end if;
insert into marks(grade) values(c_grade);
end loop;
close c_marks;
end;