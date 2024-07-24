-- 여기는 schoolUser 화면
use schoolDb;
show tables;
desc tbl_score;
desc tbl_student;
desc tbl_subject;

select count(*) from tbl_score;
select * from tbl_score limit 10;


select count(*) from tbl_student;
select * from tbl_student;

select count(*) from tbl_subject;
select * from tbl_subject;
/*
학생정보, 성적, 과목정보 3개의 Table의 데이터를 import 한 후 다음의 참조무결성 설정(FK 생성)을 하기위해
먼저 참조 무결성이 성립되는지 검증하기

LEFT JOIN 이용하여 데이터 검증실시한다. 
FK를 설정할 대상
학생정보 : 성적, 과목정보 : 성적
*/
-- 참조무결성(FK)를 설정 두 table을 left join 하여 null 값이 존재하는지 검증
-- 만약 결과에 null 이 있다면 FK 설정 불가
select *
from tbl_score
	left join tbl_student
		on sc_stnum = st_num
where st_num is null;

select * 
from tbl_score
	left join tbl_subject
		on sc_sbcode = sb_code
where sb_code is null;

-- 참조무결성을 유지하기 위하여 FK 설정하기
-- FK는 1 : N 의 관계에서 설정하며
-- N의 table에 FK를 설정한다.

alter table tbl_score -- 성적테이블에 FK를 설정
add constraint FK_student -- FK의 이름
foreign key (sc_stnum) -- 성적테이블의 FK 칼럼 
references tbl_student(st_num) -- 누구(table)와
on delete cascade	-- 학생테이블데이터를 삭제하면 같이 삭제 
on update cascade; -- 학생테이블의 학번이 변경되면 같이 변경

alter table tbl_score
add constraint FK_subject
foreign key (sc_sbcode)
references tbl_subject(sb_code);

-- 완전 JOIN SQL
-- Table 간에 FK가 완전하게 유지되는 경우
-- 사용할 수 있는 Query
select *
from tbl_student, tbl_subject, tbl_score
where st_num = sc_stnum 
	and sb_code = sc_sbcode
    and st_num = 'S0001';
    
-- EQ, Inner JOIN
-- 테이블 간에 FK가 설정되고 참조무결성관계가 유지되는 경우 사용하는 Query    
select *
from tbl_score
	join tbl_student
		on sc_stnum = st_num
	join tbl_subject
		on sc_sbcode = sc_code;


