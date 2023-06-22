create database TrainingCourseForm;

use TrainingCourseForm;

create table TrainingCourses(
	TrainingCourseID integer not null primary key,
    Kursname varchar(50),
    KursleiterName varchar(50),
    KursleiterEMail varchar(50),
    Fachbereich varchar(50)
);

create table ComplatedForms(
	CompletedFormID integer not null primary key,
    Zeitstempel timestamp,
    Datum date,
    Benotung tinyint,
    SchlechtestesTeil text,
    BestesTeil text,
    Verbesserungsvorschlag text,
    CONSTRAINT chk_Benotung CHECK (Benotung in (1, 2, 3, 4, 5, 6))
    );
