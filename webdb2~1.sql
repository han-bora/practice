

create table book(
        book_id number(10),
        title varchar2(100) not null,
        pubs varchar2(500),
        pub_date date,
        author_id number(10),
        primary key(book_id)
);



insert into book(book_id, title, pubs, pub_date, author_id)
values(1, '우리들의 일그러진 영웅', '다림', '1998-02-02', 1);

insert into book(book_id, title, pubs, pub_date, author_id)
values(2, '삼국지', '민음사', '2002-03-01', 1);

insert into book(book_id, title, pubs, pub_date, author_id)
values(3, '토지', '마로니에북스', '2012-08-15', 2);

insert into book(book_id, title, pubs, pub_date, author_id)
values(4, '유시민의 글쓰기 특강', '생각의길', '2015-04-01', 3);

insert into book(book_id, title, pubs, pub_date, author_id)
values(5, '패션왕', '중앙북스(books)', '2012-02-22', 4);

insert into book(book_id, title, pubs, pub_date, author_id)
values(6, '순정만화', '재미주의', '2011-08-03', 5);

insert into book(book_id, title, pubs, pub_date, author_id)
values(7, '오직 두사람', '문학동네', '2017-05-04', 6);

insert into book(book_id, title, pubs, pub_date, author_id)
values(8, '26년', '재미주의', '2012-02-04', 5);

create sequence seq_book_id
increment by 1
start with 1
nocache;




--author테이블
create table author (
        author_id number,
        author_name varchar2(100) not null,
        author_desc varchar2(100),
        primary key(author_id),
        constraint book_fk foreign key(author_id) 
        references author(author_id)
);

insert into author
values(1, '김문열', '경북 영양');

insert into author
values(2, '박경리', '경상남도 통영');

insert into author
values(3, '유시민', '17대 국회의원');

insert into author
values(4, '기안84', '기안동에서 산 84년생');

insert into author
values(5, '강풀', '온라인 만화가 1세대');

insert into author
values(6, '김영하', '알쓸신잡');

create sequence seq_author_id
increment by 1
start with 1
nocache;

--select to_char(pub_date, 'YYYY-MM-DD')
--from book;

Select  book_id, 
        title, 
        pubs, 
        to_char(pub_date, 'YYYY-MM-DD') as pub_date,
        author.*
From    book book, 
        author author
Where   book.author_id = author.author_id;

