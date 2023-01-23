DECLARE
v_total NUMBER := 0;
BEGIN
<<BeforeTopLoop>>
FOR i IN 1..10 LOOP--2 3
v_total := v_total + 1;--6,
dbms_output.put_line
('Total is: ' || v_total);--1
FOR j IN 1..10 LOOP  --j=1,2,3,4,5,6
CONTINUE BeforeTopLoop WHEN i + j > 5;--2,3,4,5,6
v_total := v_total + 1;--2,3,4,5,
END LOOP;
END LOOP;
END two_loop;