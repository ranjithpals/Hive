DROP TABLE IF EXISTS orders_w_buckets;
CREATE EXTERNAL TABLE IF NOT EXISTS orders_w_buckets (order_id int, order_date date, order_customer_id int, order_status string)
CLUSTERED BY (order_id) INTO 4 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

insert overwrite table orders_w_buckets
SELECT order_id, date_format(order_date, 'yyyy-MM-dd'), order_customer_id, order_status FROM orders_no_buckets;