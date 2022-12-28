-- creating the package specification
create or replace package myMath is
procedure cube_square(user_value Number);
function  checkPrime  (user_value in number) return number; 
end myMath;



-- Creating a table to store the values
create table cube_square_table (user_value int ,user_cube int, user_square int);




-- creating the package body 
create or replace package body myMath is
 function checkPrime (user_value in number) return number is
    endLimit number:= user_value - 1;
    startLimit number:= 2;  
    isPrime number:= 0;
 begin 
    for i in startLimit..endLimit loop
    if((mod(user_value,i))=0)
    then
    isPrime:=isPrime+1;
    end if;
    end loop;
    if(isPrime>0) then
          dbms_output.put_line(' not a prime');
    else 
          dbms_output.put_line('This is a prime');
    end if;
    return isPrime;
 end; 
    procedure cube_square(user_value Number) is
    user_cube Number:=user_value*user_value*user_value;
    user_square Number:=user_value*user_value;
    begin
    insert into cube_square_table values(user_value,user_cube,user_square);
    end cube_square;

end myMath;
/
