set serveroutput on;
declare 
    f utl_file.file_type;
    line varchar(1000);
    sroll student.roll%type;
    sname student.name%type;
    sgender student.gender%type;
    sadviser_id student.adviser_id%type;
    sphone_no stcontact.phone_no%type;
    semail stcontact.email%type;
    spresent_address stcontact.present_address%type;
    sblood_group stinformation.blood_group%type;
    sfather stinformation.father%type;
    smother stinformation.mother%type;
    scollege stinformation.college%type;
    shome_district stinformation.home_district%type;  
begin
    f:=utl_file.fopen('DATABASE','csedb.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,1000);
    loop begin
        utl_file.get_line(f,line,1000);
        if line is null then exit;
        end if;
        sroll:=regexp_substr(line,'[^,]+',1,1);
        sname:=regexp_substr(line,'[^,]+',1,2);
        sgender:=regexp_substr(line,'[^,]+',1,3);
        sadviser_id:=regexp_substr(line,'[^,]+',1,4);
        sphone_no:=regexp_substr(line,'[^,]+',1,5);
        semail:=regexp_substr(line,'[^,]+',1,6);
        spresent_address:=regexp_substr(line,'[^,]+',1,7);
        sblood_group:=regexp_substr(line,'[^,]+',1,8);
        sfather:=regexp_substr(line,'[^,]+',1,9);
        smother:=regexp_substr(line,'[^,]+',1,10);
        scollege:=regexp_substr(line,'[^,]+',1,11);
        shome_district:=regexp_substr(line,'[^,]+',1,12);
	insert into student values (sroll,sname,sgender,sadviser_id);
	insert into stcontact values (sroll,sphone_no,semail,spresent_address);
	insert into stinformation values (sroll,sblood_group,sfather,smother,scollege,shome_district);
        commit;
        exception when no_data_found then exit;
        end;
        end loop;
    end if;
    utl_file.fclose(f);
    end;
    /
    
        
        
        