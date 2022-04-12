create schema Project;

use Project;

create table department (
	dept_name varchar(20), 
    check (dept_name in ("CS", "EEE", "ECE", "ENI", "MECH", "CHEMICAL", "MANU", "PHARMA", "MATH", "BIO", "PHY", "CHEMISTRY", "ECO")),
    primary key(dept_name)
);

create table courseDetails (
	course_id varchar(8) primary key,
    course_name varchar(20)
);

create table course (
    course_id Varchar(8) primary key,
    dept_name varchar(20),
    credits int not null check (credits in (2, 3, 4, 5)),
    max_seats int not null,
	constraint fk_cno foreign key (dept_name) references department (dept_name) on delete cascade,
    foreign key (course_id) references courseDetails(course_id) on delete cascade on update cascade
);

create table courseRoom (
	course_id varchar(10),
	room int not null, 
    primary key (course_id),
    foreign key (course_id) references courseDetails (course_id) on delete cascade 
);

create table time_slot
(
    course_id varchar(10),
    days varchar(10) not null check ( days in ('M', 'T', 'W', 'Th', 'F','Sa', 'Su')),
    hour int not null,
    primary key (days, hour),
    foreign key (course_id) references courseDetails (course_id) on delete cascade 
);

create table teacher (
    teacher_name varchar(100) not null,
    teacher_id varchar(8) primary key,
    dept_name varchar(20) not null,
    foreign key (dept_name) references department (dept_name) on delete cascade
);

create table student (
    student_id varchar(8) primary key,
    name varchar(100) not null,
    email_id varchar(40) not null,
    dept_name varchar(20) not null,
    units int null,
	foreign key (dept_name) references department (dept_name) on delete cascade
);

create table prereq
(
    course_id varchar(10),
    prereq_id varchar(10) null,
    primary key (course_id),
    foreign key (course_id) references courseDetails (course_id) on delete cascade
);

create table studentHistory (
	student_id varchar(8) not null,
    prev_course_id varchar(8) not null,
    primary key (student_id, prev_course_id),
    foreign key (student_id) references student(student_id) on delete cascade
);

create table studentCurrentEnrollment (
	student_id varchar(8) primary key,
    course1 varchar(8) not null,
    course2 varchar(8) not null,
    course3 varchar(8) not null,
    course4 varchar(8) null,
    course5 varchar(8) null,
    course6 varchar(8) null,
    course7 varchar(8) null,
    foreign key (student_id) references student(student_id) on delete cascade
);
    