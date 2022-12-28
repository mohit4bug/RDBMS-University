create or replace function addFunc(num1 in number,num2 in number)		
   return number is
   a number:= num1;
   b number:= num2;
   mySum number:= 0;
begin
   mySum := a+b;
   return mySum ;
end;


// Procedure 
declare
begin
dbms_output.put_line('The sum is : '||addFunc(40,23));
end;
