create table department(
	dept_name varchar(20), 
	building varchar(15),
	budget numeric(12,2),
	primary key (dept_name)
);

create table course(
    course_id varchar(7),
    title varchar(50),
    dept_name varchar(20),
    credits numeric(2,0),
    primary key (course_id),
    foreign key(dept_name) references department(dept_name)
);

create table instructor(
    ID varchar(5),
    name varchar(20)not null,
    dept_name varchar(20),
    salary numeric(8,2),
    primary key(ID),
    foreign key(dept_name) references department(dept_name)
);
create table section(
    course_id varchar(8),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4,0),
    building varchar(15),
    room_number varchar(7),
    time_slot_id varchar(4),
    primary key(course_id,sec_id,semester,year),
    foreign key(course_id)references course(course_id)
);

create table teaches(
	ID varchar(5),
	course_id varchar(8),
	sec_id varchar(8),
	semester varchar(6),
	year numeric(4,0),
	primary key(ID,course_id,sec_id,semester,year),
	foreign key(course_id,sec_id,semester,year)references section(course_id,sec_id,semester,year),
	foreign key(ID)references instructor(ID)
);

insert into department values('biology','watson',90000);
insert into department values('comp.sci','taylor',100000);
insert into department values('elec.eng','taylor',85000);
insert into department values('finance','painter',120000);
insert into department values('history','painter',50000);
insert into department values('music','packard',80000);
insert into department values('physics','watson',70000);	


insert into course values('bio-101','intro.to biology','biology',4);
insert into course values('bio-301','genetics','biology',4);
insert into course values('bio-399','computational biology','biology',3);
insert into course values('cs-101','intro.to computer science','comp.sci',4);
insert into course values('cs-190','game design','comp.sci',4);
insert into course values('cs-315','robotics','comp.sci',3);
insert into course values('cs-319','image processing','comp.sci',3);
insert into course values('cs-347','data base system concepts','comp.sci',3);
insert into course values('ee-181','intro.to digital systems','elec.eng',3);
insert into course values('fin-201','investment banking','finance',3);
insert into course values('his-351','world history','history',3);
insert into course values('mu-199','music video production','music',3);
insert into course values('phy-101','physical principles','physics',4);	


insert into instructor values('10101','srinivasan','comp.sci',65000);
insert into instructor values('12121','wu','finance',90000);
insert into instructor values('15151','mozart','music',40000);
insert into instructor values('22222','einstein','physics',95000);
insert into instructor values('32343','el said','history',60000);
insert into instructor values('33456','gold','physics',87000);
insert into instructor values('45565','katz','comp.sci',75000);
insert into instructor values('58583','califieri','history',62000);
insert into instructor values('76543','singh','finance',80000);
insert into instructor values('76766','crick','biology',72000);
insert into instructor values('83821','brandt','comp.sci',92000);
insert into instructor values('98345','kim','elec.eng',80000);	


insert into section values('bio-101','1','summer','2009','painter','514','b');
insert into section values('bio-301','1','summer','2010','painter','514','a');
insert into section values('cs-101','1','fall','2009','packard','101','h');
insert into section values('cs-101','1','spring','2010','packard','101','f');
insert into section values('cs-190','1','spring','2009','taylor','3128','e');
insert into section values('cs-190','2','spring','2009','taylor','3128','a');
insert into section values('cs-315','1','spring','2010','watson','120','d');
insert into section values('cs-319','1','spring','2010','watson','100','b');
insert into section values('cs-319','2','spring','2010','taylor','3128','c');
insert into section values('cs-347','1','fall','2009','taylor','3128','a');
insert into section values('ee-181','1','spring','2009','taylor','3128','c');
insert into section values('fin-201','1','spring','2010','packard','101','b');
insert into section values('his-351','1','spring','2010','painter','514','c');
insert into section values('mu-199','1','spring','2010','packard','101','d');
insert into section values('phy-101','1','fall','2009','watson','100','a');	


insert into teaches values('10101','cs-101','1','fall',2009);
insert into teaches values('10101','cs-315','1','spring',2010);
insert into teaches values('10101','cs-347','1','fall',2009);
insert into teaches values('12121','fin-201','1','spring',2010);
insert into teaches values('15151','mu-199','1','spring',2010);
insert into teaches values('22222','phy-101','1','fall',2009);
insert into teaches values('32343','his-351','1','spring',2010);
insert into teaches values('45565','cs-101','1','spring',2010);
insert into teaches values('45565','cs-319','1','spring',2010);
insert into teaches values('76766','bio-101','1','summer',2009);
insert into teaches values('76766','bio-301','1','summer',2010);
insert into teaches values('83821','cs-190','1','spring',2009);
insert into teaches values('83821','cs-190','2','spring',2009);
insert into teaches values('83821','cs-319','2','spring',2010);
insert into teaches values('98345','ee-181','1','spring',2009);
