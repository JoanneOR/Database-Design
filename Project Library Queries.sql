/* Name: Joanne O Riordan*/
/*Student Number: R00219398*/
/*Programme of Study: Comp1 CX*/
/* I declare that this project is all my own work.*/

/* Question 5 (b)*/
select * from loaned_books where Date_of_Loan >= '2022-01-01' and Date_of_Loan <= '2022-04-30';
select * from members where Overdue_Cost_Owed is null;
select * from book where Year_of_Publication >= '1990';
select * from members where Name like 'D%';

/* Question 5 (c) Join Queries*/
select name, m.member_id, l.book_id, book_title, book_genre
from members m, book b, loaned_books l
where m.Member_ID = l.Member_ID and
l.Book_ID = b.Book_ID and Book_Genre = 'Fiction';

select name,m.member_id,b.book_id,book_title
from members m, book b, loaned_books l
where m.member_id = l.member_id and
l.book_id = b.book_id and adult_or_child = 'adult'
order by m.member_id and b.book_id;

select name, b.book_id,date_of_loan, m.member_id, book_title
from members m, book b, loaned_books l
where l.book_id = b.book_id and 
m.member_id = l.member_id and Date_of_Loan >= '2022-02-01'
order by date_of_loan, member_id;

select m.member_id, author, b.book_id
from  book b, members m, loaned_books l
where m.member_id = l.member_id 
and l.book_id = b.book_id and author like 'J%';