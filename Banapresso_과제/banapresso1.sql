create database banapresso1;
use banapresso1;

create table if not exists tb_store (
	id bigint auto_increment primary key,
    store_name varchar(20) not null,
    store_addr varchar(70) not null
);

-- 데이터 전체 가져오기
select * from tb_store;

-- 데이터 베이스 삭제
drop database banapresso1;

-- 데이터 입력 테스트 문구
insert into tb_store (store_name, store_addr) value ("배애리점", "서울시 강서구");
