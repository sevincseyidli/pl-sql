DECLARE
  TYPE vint IS VARRAY(100) OF INTEGER;
  v_name vint;
  v_min number;
 BEGIN
  v_name:=vint(1,2,-6,-10,-98);
  v_min:=9999999;
 FOR i  IN 1..5 LOOP
   IF v_min > v_name(i)  THEN v_min:=v_name(i);
   END IF;
 END LOOP;
  DBMS_OUTPUT.PUT_LINE('Massivin en kiçik elementi: ' ||v_min);
END;