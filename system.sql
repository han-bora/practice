--계정삭제
drop user webdb cascade;

--dcl 계정만들기
create user webdb2 identified by webdb2;

--권한부여
grant resource, connect to webdb2;

--비밀번호 수정
alter user webdb identified by webdb;


