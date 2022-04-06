create schema Project;

use Project;

create table course (
    course_id Varchar(8) primary key,
    course_name Varchar(20) not null,
    dept_name varchar(20) check (dept_name in ("CS", "EEE", "ECE", "ENI", "MECH", "CHEMICAL", "MANU", "PHARMA", "MATH", "BIO", "PHY", "CHEMISTRY", "ECO")),
    credits int not null check (credits in (2, 3, 4, 5)),
    hour int not null,
    max_seats int not null,
    foreign key dept_name references department
);

create table teacher (
    teacher_name varchar(100) not null,
    teacher_id varchar(8) primary key,
    dept_name varchar(20) not null
);

create table university (
    semester int not null,
    year int not null,
    primary key (semester, year)
);

create table time (
    hour int primary key,
    start_time int not null,
    end_time int not null
);

create table student (
    student_id varchar(8) primary key,
    name varchar(100) not null,
    email_id varchar(40) not null,
    dept_name varchar(20) not null,
    units int null
);

create table department (
    dept_name varchar(20) primary key
)

create table time_slot
(
    course_id varchar(10),
    days varchar(10) check ( days in ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday','Saturday')),
    hour int,
    room_no int,
    primary key (course_id, days, hour),
    foreign key course_id references course
    on delete cascade 
);

create table prereq
(
    course_id varchar(10),
    prereq_id varchar(10),
    primary key (course_id, prereq_id),
    foreign key course_id references course
    on delete cascade
);