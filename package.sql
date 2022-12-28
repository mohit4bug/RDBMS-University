--  Creating a package 

create or replace package myMath is

--  Declaring specification

procedure add(num1 number , num2 number);

end myMath;
/






-- Creating package body

create or replace package body myMath is

procedure add(num1 number, num2 number) is
res number:=0;
begin
res:=num1+num2;
dbms_output.put_line('The sum is: '|| res);
end add;


end myMath;
/


--  Executing 

exec myMath.add(1,2);

--  Output 

The sum is: 3

