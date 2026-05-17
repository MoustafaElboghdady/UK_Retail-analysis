/****************************************/
/*creating finale tables for clean data*/

CREATE Table customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR,
    gender VARCHAR,
    reservation_type VARCHAR,
    main_cus_id VARCHAR,
    city VARCHAR,
    source VARCHAR,
    status VARCHAR
);

CREATE Table contracts(
    customer_id INT REFERENCES customers(customer_id),
    start_date DATE,
    end_date DATE,
    down_payment DECIMAL(10,2),
    installments_count INT,
    installment_value INT
);

CREATE Table collection(
    customer_id INT REFERENCES customers(customer_id),
    due_date    DATE,
    collection_date DATE,
    amount_due DECIMAL(10,2),
    amount_paid DECIMAL(10,2)
);

CREATE Table service(
    customer_id INT REFERENCES customers(customer_id),
    win_date    DATE,
    travel_date DATE,
    flight_id   INT REFERENCES flight(flight_id)
);

CREATE Table flight(
    flight_id INT PRIMARY KEY,
    flight_name VARCHAR,
    flight_date DATE,
    air_line VARCHAR,
    flight_capacity INT
);
/***********************************************************************/




