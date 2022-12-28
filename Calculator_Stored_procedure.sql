create or replace procedure calc is
a number:=&a;
b number:=&b;
operation char :=&operation;
res number := 0;



begin
if operation='+' then
    res = a+b;
    dbms_output.put_line('Addition is '||res);
elsif operation='-' then
    res = a-b;
    dbms_output.put_line('Subtraction is '||res);
elsif operation='*' then
    res = a*b;
    dbms_output.put_line('Multiplication is '||res);
elsif operation='/' then
    res = a/b;
    dbms_output.put_line('Division is '||res);
end if;
end;
/