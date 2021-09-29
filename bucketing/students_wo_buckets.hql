DROP TABLE IF EXISTS students_wo_buckets;

CREATE EXTERNAL TABLE IF NOT EXISTS students_wo_buckets (id int, first_name string, last_name string, email string, gender varchar(20), ip_address varchar(15))
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

load data local inpath '/home/itv001157/data/MOCK_NEW.txt' into table students_wo_buckets;