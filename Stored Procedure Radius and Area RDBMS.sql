--  creating procedure

create or replace procedure AreaCircle as
area float:=0.0;
pi float:=3.14;

limitStart int:=&limitStart;
limitEnd int:=&limitEnd;

begin
for radius in limitStart..limitEnd loop
area:= pi*radius*radius;
insert into area_of_circle values(radius,area);
end loop;
end;

-- creating a table

create table area_of_circle(radius int,area float);


-- executing the procedure

exec AreaCircle;

