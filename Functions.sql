create or replace function addFunc
	return number is
	a number:=20;
	b number:=30;
	c number:=0;
begin
c:=a+b;
return c;
end;



--  By user input

create or replace function addFunc		
   return number is
   a number:= &a;
   b number:= &b;
   mySum number:= 0;
begin
   mySum := a+b;
   return mySum ;
end;

--  Procedure 
declare
begin
dbms_output.put_line('The sum is : '||addFunc());
end;


