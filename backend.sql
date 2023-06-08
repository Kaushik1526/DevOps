create database Admission_form;
use  Admission_form;

create table Personal_Details
(
emailid int,
sname varchar(50),
sdob date ,
sgender varchar(50),
sphno int,
semail varchar(100),
saddress varchar(200),
snation varchar(50),
sreligion varchar(20),
scaste varchar(50),
primary key (emailid)
);
create table Parent_Details 
(
emailid int,
fname varchar(50),
foccu varchar(100),
fphno int,
femail varchar(100),
mname varchar(50),
moccu varchar(100),
mphno int,
memail varchar(100),
primary key (emailid),
foreign key (emailid) references Personal_Details(emailid)
);

create table Education_10
(
emailid int,
sschool varchar(50),
schoolyop int,
schooladd varchar(100),
schoolboard varchar(10),
schoolperc int,
primary key (emailid),
foreign key (emailid) references Personal_Details(emailid)
);
create table Education_12
(
emailid int,
scollege varchar(50),
collegeyop int,
collegeadd varchar(100),
collegeboard varchar(10),
collegestream varchar(20),
collegeperc int,
engcourse varchar(20),
primary key (emailid),
foreign key (emailid) references Personal_Details(emailid)
);

