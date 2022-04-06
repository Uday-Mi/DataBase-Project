create table course (
    course_id Varchar(8) primary key
    course_name Varchar(20) not null
    dept_name varchar(20) not null
    credits int not null
    timeslot int not null
    max_seats int not null
);

create table teacher (
    teacher_name varchar(100) not null
    teacher_id varchar(8) primary key
    dept_name varchar(20) not null
);

create table university (
    
)