 //customers having dues//
 
 SELECT customer.name
   FROM customer
   LEFT JOIN account ON customer.customer_id = account.customer_id
   WHERE account.account_id IN (
      SELECT account_id
       FROM invoice
       LEFT JOIN payment ON invoice.invoice_id = payment.invoice_id
       WHERE payment.invoice_id IS NULL
   );

NAME
----------------------------------------------------------------------------------------------------
Rahim
Karim

// counting meter numbers corresponding to each account//

 select name, count(billing.meter_no) AS meter_count
   FROM customer
    JOIN account ON customer.customer_id = account.customer_id
    JOIN billing ON account.account_id = billing.account_id
    group by customer.name;

NAME                                                                                                 METER_COUNT
---------------------------------------------------------------------------------------------------- -----------
Abir                                                                                                           2
Rahim                                                                                                          2
Karim  

// parctice check which user under which board??//


//   nested query for customer under a specific board//

  select name from customer where customer_id IN (
     select customer_id from account where account_id IN(
       select account_id from invoice where board_id IN(
       select board_id  from board where address ='Kuet')));

NAME
----------------------------------------------------------------------------------------------------
Karim

                                                                                                        1



 select board_id from board where address like 'K%' AND board_id>1;

  BOARD_ID
----------
         2

//  print first 3 colums of payment table  //
declare
cursor id_cursor IS select payment_id FROM payment;
var payment.payment_id%TYPE;
counter NUMBER := 0;
BEGIN
OPEN id_cursor;
LOOP
FETCH id_cursor INTO var;
EXIT WHEN id_cursor%NOTFOUND OR counter >= 3;
counter := counter + 1;
DBMS_OUTPUT.PUT_LINE( var);
 END LOOP;
    
        CLOSE id_cursor;
END;
/




//returning total payment for a customer  by his name using function//

 CREATE OR REPLACE FUNCTION func(customer_name_in IN VARCHAR2) RETURN NUMBER IS
   total NUMBER := 0;
    BEGIN
    SELECT SUM(payment.amount)
    INTO total
    FROM customer
    JOIN account ON customer.customer_id = account.customer_id
   JOIN invoice ON account.account_id = invoice.account_id
    JOIN payment ON invoice.invoice_id = payment.invoice_id
   WHERE customer.name = customer_name_in;
 
  RETURN total;
   END;
   /


  set serveroutput on;
 DECLARE
       total_payment NUMBER;
   BEGIN
       total_payment := get_total_payment_amount('Babla');
       DBMS_OUTPUT.PUT_LINE('Total Payment Amount: ' || total_payment);
   END;
 /
Total Payment Amount: 250


//using procedure //

CREATE OR REPLACE PROCEDURE proc2(customer_name IN VARCHAR2,total OUT NUMBER) IS
BEGIN
SELECT SUM(payment.amount)
 INTO total
 FROM customer
 JOIN account ON customer.customer_id = account.customer_id
 JOIN invoice ON account.account_id = invoice.account_id
 JOIN payment ON invoice.invoice_id = payment.invoice_id
 WHERE customer.name = customer_name;
END;
/

DECLARE
    total_payment NUMBER;
BEGIN
   proc2('Babla', total_payment);
   DBMS_OUTPUT.PUT_LINE('Total Payment Amount: ' || total_payment);
END;
/

//updating and deleting //

 UPDATE invoice SET board_id = 4 WHERE board_id = 3;   (updating child before deleting parent)
 DELETE FROM board WHERE board_id = 3;  





//few more commands//

select MAX(amount) AS maximum_invoice FROM invoice;
select * FROM customer;



//delete trigger//
CREATE OR REPLACE TRIGGER try3
BEFORE DELETE ON board
REFERENCING OLD AS o NEW AS n
FOR EACH ROW
BEGIN
DELETE FROM payment WHERE invoice_id IN (SELECT invoice_id FROM invoice WHERE board_id = :o.board_id);
DELETE FROM invoice WHERE board_id = :o.board_id;
END;
/

delete from board where board_id=1;
