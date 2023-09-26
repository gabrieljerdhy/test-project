CREATE TABLE students (
	id int PRIMARY KEY,
	name varchar(255),
	age int,
	gender varchar(10),
	course_id int,
	FOREIGN KEY (course_id) REFERENCES courses(id)
);

DROP TABLE students;



CREATE TABLE courses (
	id int PRIMARY KEY,
	name varchar(50),
	duration int
);

INSERT INTO students (id, name, age, gender, course_id)
VALUES (3, 'oman', 22, 'Male', 2);

INSERT INTO courses (id, name, duration)
VALUES (1, 'Math', 22);

SELECT * FROM courses;
SELECT * FROM students;
