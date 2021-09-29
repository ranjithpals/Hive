CREATE EXTERNAL TABLE IF NOT EXISTS orders_no_buckets (order_id int, order_date string, order_customer_id int, order_status string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

load data local inpath '/home/itv001157/data/orders.csv' into table orders_no_buckets;