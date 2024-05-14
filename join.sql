USE NEW

CREATE TABLE student(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(50),
    phone VARCHAR(50)
);


INSERT INTO student (NAME,phone) VALUES('Badhon','017985561564'),
('sagar','0179855641'),
('nurjahan','0140352800'),
('rubel','01854561156')

SELECT * FROM student;

CREATE TABLE student_details(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    stud_id INT NOT NULL,
    address VARCHAR(50),
    batch VARCHAR(50),
    FOREIGN KEY (stud_id) REFERENCES student(id)
);


INSERT INTO student_details (stud_id,address,batch)
VALUES(1,'Konabari','56 A'),
(3,'Shafipur','56 C'),
(4,'Baimail','56 B');

SELECT * FROM student_details;
SELECT * FROM student;

-- INNER JOIN

SELECT t1.*,t2.* FROM  
student AS t1 INNER JOIN student_details AS t2  
ON t1.id=t2.stud_id;


-- LEFT JOIN

SELECT t1.*,t2.* FROM  
student AS t1 LEFT JOIN student_details AS t2  
ON t1.id=t2.stud_id;


-- RIGHT JOIN

SELECT t1.*,t2.* FROM  
student AS t1 RIGHT JOIN student_details AS t2  
ON t1.id=t2.stud_id;


//NATURAL JOIN//

SELECT * FROM  student,student_details  
WHERE student.id=student_details.stud_id;