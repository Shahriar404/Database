set serveroutput on;


DECLARE 
   a teacher.salary%type; 
   b teacher.salary%type; 
   c teacher.salary%type;
   na teacher.name%type;
   nb student.adviser_id%type;
   ns integer; 

PROCEDURE findMin(x IN teacher.salary%type, y IN teacher.salary%type, z OUT teacher.salary%type) IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END; 

PROCEDURE AdvisingInfo IS 
BEGIN 
   FOR i IN 1..5 LOOP
	select name into na from teacher where id=i;
	dbms_output.put_line('Teacher name: '|| na);
	ns:=0;
	FOR j IN 1..10 LOOP
		select adviser_id into nb from student where roll=1507090+j;
		IF ( nb = i ) THEN 
      			ns:=ns+1;
		end if; 	    
   	END loop inner_loop;
	dbms_output.put_line('Advising Students: '|| ns);    
   END loop outer_loop; 
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
   dbms_output.put_line(' Adviser information of Students: ');
   AdvisingInfo();
END; 
/ 