use jspstudy;

create table tb_fileboard (
	fb_idx bigint auto_increment primary key,
    fb_userid varchar(20) not null,
    fb_username varchar(20) not null,
    fb_title varchar(200) not null,
    fb_content text,
    fb_regdate datetime default now(),
    fb_hit int default 0,
    fb_filename varchar(200),
    fb_filepath varchar(200)
    );
    
select * from tb_fileboard;