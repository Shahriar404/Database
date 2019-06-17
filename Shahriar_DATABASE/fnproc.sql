SET SERVEROUTPUT ON
DECLARE 
   a teacher.salary%type; 
   b teacher.salary%type; 
   c teacher.salary%type; 
create or replace PROCEDURE findMin(x IN teacher.salary%type, y IN teacher.salary%type, z OUT teacher.salary%type) IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END; 
FUNCTION findMax(x IN teacher.salary%type, y IN teacher.salary%type)  
RETURN number 
IS 
    z teacher.salary%type; 
BEGIN 
   IF x > y THEN 
      z:= x; 
   ELSE 
      Z:= y; 
   END IF;  
   RETURN z; 
END; 
FUNCTION findAvg(x IN teacher.salary%type, y IN teacher.salary%type) 
RETURN number 
IS 
    z teacher.salary%type; 
BEGIN  
      z:= (x+y)/2;  
   RETURN z; 
END;
BEGIN 
   select salary into a from teacher where id=1; 
   select salary into b from teacher where id=2;  
   c := findMax(a, b); 
   dbms_output.put_line(' Maximum salary: ' || c); 
   findMin(a, b, c); 
   dbms_output.put_line(' Minimum salary: ' || c);
   c := findAvg(a, b);
   dbms_output.put_line(' Average salary: ' || c);
END; 
/ 