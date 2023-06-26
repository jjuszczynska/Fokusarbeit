DROP DATABASE IF EXISTS TrainingCourseForm;

create database TrainingCourseForm;

use TrainingCourseForm;

DROP PROCEDURE IF EXISTS spAddForm;



-- Create tables

create table TrainingCourses(
	TrainingCourseID int identity(1,1) PRIMARY KEY,
    Kursname varchar(50),
    KursleiterName varchar(50),
    KursleiterEMail varchar(50),
    Fachbereich varchar(50)
);

CREATE TABLE CompletedForms (
    CompletedFormID int identity(1,1) PRIMARY KEY,
    TrainingCourseFK INT,
    Zeitstempel TIME,
    Datum DATE,
    Benotung TINYINT,
    SchlechtestesTeil TEXT,
    BestesTeil TEXT,
    Verbesserungsvorschlag TEXT,
    --FOREIGN KEY (TrainingCourseFK) REFERENCES TrainingCourses (TrainingCourseID)
);
    
ALTER TABLE CompletedForms
ADD CONSTRAINT FK_CompletedForm_TrainingCourses FOREIGN KEY (TrainingCourseFK) References TrainingCourses (TrainingCourseID) on delete cascade on update cascade;
-- stored procedures

go

CREATE PROCEDURE spAddForm
(
    @pCourse INT,
    @pBenotung INT,
    @pBest TEXT,
    @pSchlecht TEXT,
    @pVerbesser TEXT
)
AS
BEGIN
    INSERT INTO CompletedForms (TrainingCourseFK, Zeitstempel, Datum, Benotung, SchlechtestesTeil, BestesTeil, Verbesserungsvorschlag)
    VALUES (
        @pCourse,
        CONVERT(DATETIME, SYSDATETIME()),
        CONVERT(DATE, SYSDATETIME()),
        @pBenotung,
        @pSchlecht,
        @pBest,
        @pVerbesser
    );
END;

go

-- test data

INSERT INTO TrainingCourses (Kursname, KursleiterName, KursleiterEMail, Fachbereich)
VALUES ('Introduction to Programming', 'John Smith', 'john@example.com', 'Computer Science');

INSERT INTO TrainingCourses (Kursname, KursleiterName, KursleiterEMail, Fachbereich)
VALUES ('Digital Marketing Strategies', 'Emily Johnson', 'emily@example.com', 'Marketing');

INSERT INTO TrainingCourses (Kursname, KursleiterName, KursleiterEMail, Fachbereich)
VALUES ('Project Management Fundamentals', 'Michael Brown', 'michael@example.com', 'Business Administration');

INSERT INTO TrainingCourses (Kursname, KursleiterName, KursleiterEMail, Fachbereich)
VALUES ('Graphic Design Essentials', 'Sarah Davis', 'sarah@example.com', 'Art and Design');

INSERT INTO TrainingCourses (Kursname, KursleiterName, KursleiterEMail, Fachbereich)
VALUES ('Financial Planning and Analysis', 'Robert Wilson', 'robert@example.com', 'Finance');


EXEC spAddForm
    @pCourse = 1,
    @pBenotung = 90,
    @pBest = 'Excellent work on the project.',
    @pSchlecht = 'Lack of participation in group discussions.',
    @pVerbesser = 'Encourage active engagement during class sessions.';




