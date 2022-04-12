use Project;

create table teacherTakesCourse (
	teacher_id varchar(8) not null,
    course_id varchar(8) not null,
    primary key(teacher_id, course_id),
    foreign key (teacher_id) references teacher(teacher_id) on delete cascade,
    foreign key (course_id) references course(course_id) on delete cascade
);

create table studentTakesCourse (
	student_id varchar(8) not null,
    course_id varchar(8) not null,
    primary key(student_id, course_id),
    foreign key (student_id) references student(student_id) on delete cascade,
    foreign key (course_id) references course(course_id) on delete cascade
);
