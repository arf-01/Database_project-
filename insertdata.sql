insert into customer (customer_id, name, address, contact_number) values (1, 'Rahim', 'Khulna', '123');
insert into customer (customer_id, name, address, contact_number) values (2, 'Karim', 'Khulna', '123');
insert into customer (customer_id, name, address, contact_number) values (3, 'Abir', 'Khulna', '123');
insert into customer (customer_id, name, address, contact_number) values (4, 'Babla', 'Khulna', '123');
insert into customer (customer_id, name, address, contact_number) values (5, 'Rafin', 'Khulna', '123');

insert into account (account_id, customer_id, account_number) values (101, 1, 'acc1');
insert into account (account_id, customer_id, account_number) values (102, 2, 'acc2');
insert into account (account_id, customer_id, account_number) values (103, 3, 'acc3');
insert into account (account_id, customer_id, account_number) values (104, 4, 'acc4');
insert into account (account_id, customer_id, account_number) values (105, 5, 'acc5');

insert into billing (meter_no, account_id, billing_date, amount) values ('M1', 101, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 100.00);
insert into billing (meter_no, account_id, billing_date, amount) values ('M2', 101, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 150.00);
insert into billing (meter_no, account_id, billing_date, amount) values ('M3', 102, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 200.00);
insert into billing (meter_no, account_id, billing_date, amount) values ('M4', 103, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 250.00);
insert into billing (meter_no, account_id, billing_date, amount) values ('M5', 103, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 300.00);

insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (001, 101, 1, 'INV001', TO_DATE('2024-05-01', 'YYYY-MM-DD'), 100.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (002, 102, 2, 'INV002', TO_DATE('2024-05-02', 'YYYY-MM-DD'), 150.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (003, 103, 3, 'INV003', TO_DATE('2024-05-03', 'YYYY-MM-DD'), 200.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (004, 104, 4, 'INV004', TO_DATE('2024-05-04', 'YYYY-MM-DD'), 250.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (005, 105, 5, 'INV005', TO_DATE('2024-05-05', 'YYYY-MM-DD'), 300.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (006, 101, 1, 'INV006', TO_DATE('2024-05-06', 'YYYY-MM-DD'), 350.00);
insert into invoice (invoice_id, account_id, board_id, invoice_number, invoice_date, amount) values (007, 102, 2, 'INV007', TO_DATE('2024-05-07', 'YYYY-MM-DD'), 400.00);

insert into payment (payment_id, invoice_id, payment_date, amount) values (001, 001, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 100.00);
insert into payment (payment_id, invoice_id, payment_date, amount) values (002, 002, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 150.00);
insert into payment (payment_id, invoice_id, payment_date, amount) values (003, 003, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 200.00);
insert into payment (payment_id, invoice_id, payment_date, amount) values (004, 004, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 250.00);
insert into payment (payment_id, invoice_id, payment_date, amount) values (005, 005, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 300.00);

insert into board (board_id, name, address, contact_number) values (1, ' A', 'Khulna', '111');
insert into board (board_id, name, address, contact_number) values (2, ' B', 'Kuet', '222');
insert into board (board_id, name, address, contact_number) values (3, ' C', 'Just', '333');
insert into board (board_id, name, address, contact_number) values (4, ' D', 'jessore', '444');
insert into board (board_id, name, address, contact_number) values (5, ' E', 'fulbari', '555');
