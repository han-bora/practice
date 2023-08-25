/*--------------------------------------------------------------------------
dml (테이블의 데이터) 등록(create) 조회(read) 수정(update) 삭제(delete)
--------------------------------------------------------------------------*/
--insert문
insert into author 
values(1, '박경리', '토지작가');

insert into author(author_id, author_name) 
values(2, '이문열' );

--update문
update author
set author_name = '기안84',
    author_desc = '웹툰작가'
where author_id = 1;

--특정컬럼만 수정할 때
update author
set author_name = '박경리'
where author_id = 1;

insert into author
values(3, '한보라', '학생');

update author
set author_desc = '작가아님'
where author_desc like '&맨';


--delete문



--시퀀스
create sequence seq_author_id
increment by 1
start with 1
nocache;

--시퀀스조회
select * from user_sequence;








select *
from author;