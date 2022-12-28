--first create table

create table stud (roll  int, name varchar(30));

--now create another table in which you want to store the deleted data

create table stud_deleted (roll int, name varchar(30));


--create a trigger now

CREATE TRIGGER T_stud
BEFORE DELETE OR INSERT OR UDPATE ON stud
FOR EARCH ROW
BEGIN
    INSERT INTO stud_deleted values (:OLD.roll,:OLD.name);
END;

