
CREATE TABLE Customer (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    address VARCHAR2(255),
    contact_number VARCHAR2(20)
);


CREATE TABLE Account (
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    account_number VARCHAR2(20) UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Billing (
    meter_no VARCHAR2(20) PRIMARY KEY,
    account_id NUMBER,
    billing_date DATE,
    amount NUMBER,
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);

CREATE TABLE Invoice (
    invoice_id NUMBER PRIMARY KEY,
    account_id NUMBER,
    board_id NUMBER,
    invoice_number VARCHAR2(20) UNIQUE,
    invoice_date DATE,
    amount NUMBER,
    FOREIGN KEY (account_id) REFERENCES Account(account_id),
    FOREIGN KEY (board_id) REFERENCES Board(board_id)
);


CREATE TABLE Payment (
    payment_id NUMBER PRIMARY KEY,
    invoice_id NUMBER UNIQUE,
    payment_date DATE,
    amount NUMBER,
    FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id)
);


CREATE TABLE Board (
    board_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    address VARCHAR2(255),
    contact_number VARCHAR2(20)
);
