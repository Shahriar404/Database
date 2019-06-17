set serveroutput on;
declare 
    f utl_file.file_type;
    cursor c is select * from student;
begin
    f:=utl_file.fopen('DATABASE','csedbprint.csv','w');
    utl_file.put(f,'ROLL'||','||'Name'||','||'Gender'||','||'Adviser_id');
    utl_file.new_line(f);
    for c_record in c
    loop
    utl_file.put(f,c_record.roll||','||c_record.name||','||c_record.gender||','||c_record.adviser_id);
    utl_file.new_line(f);
    end loop;
    utl_file.fclose(f);
    
    end;
    /

        