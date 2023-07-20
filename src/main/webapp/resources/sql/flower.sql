CREATE TABLE IF NOT EXISTS flower{
f_id VARCHAR(10) NOT NULL,
f_name VARCHAR(20),
f_category VARCHAR(10),
f_unitPrice INTEGER,
f_type VARCHAR(30),
f_orign VARCHAR(30),
f_fileName VARCHAR(50),
f_fileName2 VARCHAR(50),
PRIMARY KEY (f_id)
}default CHARSET=utf8;