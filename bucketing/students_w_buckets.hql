DROP TABLE IF EXISTS students_w_buckets;

CREATE EXTERNAL TABLE IF NOT EXISTS students_w_buckets (id int, first_name string, last_name string, email string, gender varchar(20), ip_address varchar(15))
CLUSTERED BY (id) INTO 4 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

insert into table students_w_buckets SELECT * FROM students_wo_buckets;