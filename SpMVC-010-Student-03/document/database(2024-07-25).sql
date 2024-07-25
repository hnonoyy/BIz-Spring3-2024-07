use schooldb;
create table tbl_users(
	username	VARCHAR(20)		PRIMARY KEY,
	password	VARCHAR(255)	NOT NULL,	
	name	VARCHAR(20)	NOT NULL,	
	nick	VARCHAR(20)	NOT NULL,	
	role	VARCHAR(10)	NOT NULL	
);
desc tbl_users;