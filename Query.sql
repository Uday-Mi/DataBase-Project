-- Addition of courses

use project;

set @sid = '100';

set @cid = '100';

select  s.student_id, 
s.units,
c.credits,
c.course_id,
pre.prereq_id,
his.prev_course_id
from student as s 
natural join course as c
natural join prereq as pre
natural join studentHistory as his
where s.units <= 23 and
(c.credits + s.units) <= 25 and
strcmp(pre.prereq_id, his.prev_course_id) is false
and strcmp(s.student_id, @sid) is false;
-- and strcmp(c.course_id, @cid); 

select found_rows();

update student, course, studentCurrentEnrollment as s
set student.units = student.units + course.credits,
s.course4 = if (s.course4 = null, course.course_id, s.course4), 
s.course5 = if (s.course5 = null, course.course_id, s.course5),
s.course6 = if (s.course6 = null, course.course_id, s.course6),
s.course7 = if (s.course7 = null, course.course_id, s.course7) 
where found_rows() is not null;

select c.course_id, t.days,
t.hour,
cr.room
from course as c, 
time_slot as t, 
courseRoom as cr
where strcmp(c.course_id, t.course_id) is false and
strcmp(c.course_id, cr.course_id) is false; 


-- Deletion of courses

set @cid = '100';

update studentCurrentEnrollment as s,
student as stu,
course as c
set 
s.course4 = if (s.course4 = c.course_id, null, s.course4), 
s.course5 = if (s.course5 = c.course_id, null, s.course5),
s.course6 = if (s.course6 = c.course_id, null, s.course6),
s.course7 = if (s.course7 = c.course_id, null, s.course7),
stu.units = stu.units - c.credits
where 
strcmp(c.course_id, @cid) is true;


-- Substitution of courses
-- It is a combination of deletion followed by addition

set @cid = '100';

update studentCurrentEnrollment as s,
student as stu,
course as c
set 
s.course4 = if (s.course4 = c.course_id, null, s.course4), 
s.course5 = if (s.course5 = c.course_id, null, s.course5),
s.course6 = if (s.course6 = c.course_id, null, s.course6),
s.course7 = if (s.course7 = c.course_id, null, s.course7),
stu.units = stu.units - c.credits
where 
strcmp(c.course_id, @cid) is true;

set @sid = '100';

select  s.student_id, 
s.units,
c.credits,
c.course_id,
pre.prereq_id,
his.prev_course_id
from student as s 
natural join course as c
natural join prereq as pre
natural join studentHistory as his
where s.units <= 23 and
(c.credits + s.units) <= 25 and
strcmp(pre.prereq_id, his.prev_course_id) is false
and strcmp(s.student_id, @sid) is false;

select found_rows();

update student, course, studentCurrentEnrollment as s
set student.units = student.units + course.credits,
s.course4 = if (s.course4 = null, course.course_id, s.course4), 
s.course5 = if (s.course5 = null, course.course_id, s.course5),
s.course6 = if (s.course6 = null, course.course_id, s.course6),
s.course7 = if (s.course7 = null, course.course_id, s.course7) 
where found_rows() is not null;

select c.course_id, t.days,
t.hour,
cr.room
from course as c, 
time_slot as t, 
courseRoom as cr
where strcmp(c.course_id, t.course_id) is false and
strcmp(c.course_id, cr.course_id) is false; 