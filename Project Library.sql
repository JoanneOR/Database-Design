/* Name: Joanne O Riordan*/
/*Student Number: R00219398*/
/*Programme of Study: Comp1 CX*/
/* I declare that this project is all my own work.*/


Create database Library; 
Use Library;
Create table Book (
Book_Title varchar(30) NOT NULL,
Book_ID varchar(5) NOT NULL,
Author varchar(20),
Book_Genre varchar(20),
Year_of_Publication int,
Primary Key (Book_ID));

insert into Book values ('Harry Potter', 10, 'J.K. Rowling', 'Fiction', 1997);
insert into Book values ('Lord of the Rings', 11, 'J.R.R. Tolkien', 'Fiction', 1954);
insert into Book values ('Pride & Predjudice', 12, 'Jane Austen', 'Romance', 1813);
insert into Book values ('The Blind Side', 13, 'Michael Lewis', 'Non-Fiction', 2006);
insert into Book values ('Wuthering Heights', 14, 'Emily Bronte', 'Romance', 1847);
select*from book;

Create table Members (
Name varchar(20) NOT NULL,
Member_ID varchar(5) NOT NULL,
Adult_or_Child varchar(5),
Overdue_Cost_Owed decimal(10,2),
Primary Key (Member_ID));

insert into Members values ('Dave Smith', 53000, 'Adult', 5.00);
insert into Members values ('Mary Murphy', 53111, 'Child', 2.50);
insert into Members values ('Joe Smith', 53688, 'Adult', 14.50);
insert into Members values ('David Moore', 53831, 'Child', null);
insert into Members values ('Jane Doe', 53562, 'Adult', 6.25);
select*from Members;

CREATE TABLE  Loaned_Books (
Book_ID varchar(5) NOT NULL,
Member_ID varchar(5) NOT NULL,
Date_of_Loan DATE,
Primary KEY (Book_ID),   /*Only book ID can be the primary key here instead of member_id as a member can loan out many books at a time.*/
FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID));

insert into Loaned_Books values (10, 53000, '2022-03-01');
insert into Loaned_Books values (11, 53111, '2022-04-20');
insert into Loaned_Books values (12, 53688, '2022-01-12');
insert into Loaned_Books values (13, 53831, '2022-05-10');
select*from loaned_books;



