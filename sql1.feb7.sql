--create table studs
--(roll_no number(3) constraint studs_pk primary key,
--name varchar2(10) not null,
--email varchar2(10)constraint email_uk unique,
--gender char(1) check(gender in('m','f')),
--city varchar2(10) default 'pune');

--insert into studs values('&rollNo','&name','&email','&gender','&city');

--update studs set city = 'pune' where roll_no=3;

--create table exam (roll_no number(3)constraint studs_roll_fk references studs(roll_no),
--subject varchar2(10),markes number(3));

insert into exam values(null,'math',90);