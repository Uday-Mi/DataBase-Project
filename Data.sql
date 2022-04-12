insert into department values('CS');
insert into department values('EEE');
insert into department values('ENI');
insert into department values('ECE');
insert into department values('MECH');
insert into department values('CHEMICAL');

insert into student values('100', 'Rahul','rahul@bits.com','CS', 21);
insert into student values('101', 'Uday','uday@bits.com','CS', 24);
insert into student values('102', 'John','john@bits.com','CS', 22);
insert into student values('103', 'Jack','jack@bits.com','CS', 23);
insert into student values('104', 'Tom','tom@bits.com','CS', 24);
insert into student values('105', 'Howard','howard@bits.com','CS', 22);
insert into student values('106', 'Tony','tony@bits.com','CS', 25);
insert into student values('107', 'Max','max@bits.com','CS', 21);

insert into courseDetails values('97','OOP');
insert into courseDetails values('98','LICS');
insert into courseDetails values('99','DISCO');
insert into courseDetails values('100','DSA');
insert into courseDetails values('101','BT');
insert into courseDetails values('102','AI');
insert into courseDetails values('103','Web Dev');
insert into courseDetails values('104','ML');
insert into courseDetails values('105','Graphs and Networks');
insert into courseDetails values('106','Combinatorial maths');


insert into course values('97', 'CS', 4, 300);
insert into course values('98', 'CS', 3, 300);
insert into course values('99', 'CS', 3, 300);
insert into course values('100', 'CS', 4, 300);
insert into course values('101', 'CS', 3, 200);
insert into course values('102', 'CS', 4, 300);
insert into course values('103', 'CS', 2, 150);
insert into course values('104', 'CS', 3, 200);
insert into course values('105', 'CS', 4, 300);
insert into course values('106', 'CS', 3, 200);


insert into courseRoom values ('97', 5101);
insert into courseRoom values ('98', 5102);
insert into courseRoom values ('99', 5103);
insert into courseRoom values ('100', 6101);
insert into courseRoom values ('101', 6102);
insert into courseRoom values ('102', 6103);
insert into courseRoom values ('103', 6104);
insert into courseRoom values ('104', 6105);
insert into courseRoom values ('105', 6106);
insert into courseRoom values ('106', 6107);


insert into time_slot values('97', 'W', 3);
insert into time_slot values('98', 'W', 10);
insert into time_slot values('99', 'M', 10);
insert into time_slot values('99', 'F', 10);
insert into time_slot values('100', 'M', 3);
insert into time_slot values('100', 'F', 3);
insert into time_slot values('101', 'T', 3);
insert into time_slot values('101', 'Th', 3);
insert into time_slot values('102', 'M', 5);
insert into time_slot values('102', 'F', 5);
insert into time_slot values('103', 'T', 5);
insert into time_slot values('103', 'Th', 5);
insert into time_slot values('104', 'M', 7);
insert into time_slot values('104', 'F', 7);
insert into time_slot values('105', 'T', 7);
insert into time_slot values('105', 'Th', 7);
insert into time_slot values('106', 'W', 4);
insert into time_slot values('106', 'W', 6);

insert into teacher values ('Amit', '100', 'CS');
insert into teacher values ('Yash', '101', 'CS');

insert into prereq values('97' , 'null');
insert into prereq values('98' , 'null');
insert into prereq values('99' , 'null');
insert into prereq values('100' , 'null');
insert into prereq values('101' , '100');
insert into prereq values('102' , '100');
insert into prereq values('103' , '100');
insert into prereq values('104' , '101');
insert into prereq values('105' , '100');
insert into prereq values('106' , 'null');

insert into studentHistory values('100', '100');
insert into studentHistory values('100', '101');
insert into studentHistory values('101', '100');
insert into studentHistory values('102', '100');
insert into studentHistory values('102', '101');
insert into studentHistory values('103', '100');
insert into studentHistory values('104', '100');
insert into studentHistory values('105', '100');
insert into studentHistory values('106', '100');
insert into studentHistory values('107', '100');

insert into studentCurrentEnrollment values('100', '97', '98', '99', '105',null,null,null);
insert into studentCurrentEnrollment values('101', '97', '98', '99', '104',null,null,null);
insert into studentCurrentEnrollment values('102', '97', '98', '99', '103',null,null,null);
insert into studentCurrentEnrollment values('103', '97', '98', '99', '102','103',null,null);
insert into studentCurrentEnrollment values('104', '97', '98', '99', '106',null,null,null);
insert into studentCurrentEnrollment values('105', '97', '98', '99', '104',null,null,null);
insert into studentCurrentEnrollment values('106', '97', '98', '99', '105',null,null,null);
insert into studentCurrentEnrollment values('107', '97', '98', '99', '103',null,null,null);