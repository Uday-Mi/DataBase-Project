create schema Project;

use Project;

create table course (
    course_id Varchar(8) primary key,
    course_name Varchar(20) not null,
    dept_name varchar(20) not null,
    credits int not null,
    hour int not null,
    max_seats int not null
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