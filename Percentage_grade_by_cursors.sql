declare
c_per markscard.percentage%type;
CURSOR c_markscard is select percentage from markscard;
BEGIN
OPEN c_markscard;
LOOP
fetch c_markscard into c_per;
	EXIT when c_markscard%notfound;
if c_per >= 70 then
	update markscard set grade = 'A';
elsif c_per<70 and c_per>=50 then
	update markscard set grade = 'B';
elsif c_per<50 and c_per>=34 then
	update markscard set grade = 'C';
else
	update markscard set grade = 'F';
end if;
end loop;
close c_markscard;
end;
/
