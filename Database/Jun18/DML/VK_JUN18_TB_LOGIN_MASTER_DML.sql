SET serveroutput ON;
DECLARE
  limiter NUMBER :=1;
BEGIN
  FOR counter IN 1..50
  LOOP
    INSERT INTO tb_login_master
    SELECT seq_login_master.nextval,
      'user_no_'
      ||counter,
      'xyz**__**'
      ||counter,
      sysdate-counter,
      sysdate,
      'SYSTEM'
    FROM dual;
    EXIT
  WHEN counter>=50;
    limiter   := limiter+1;
  END LOOP;
  COMMIT;
  dbms_output.put_line('No of rows inserted : '||limiter);
EXCEPTION
WHEN OTHERS THEN
  ROLLBACK;
END;
