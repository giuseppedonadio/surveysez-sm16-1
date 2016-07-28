#books-07272016.sql

/*
  when we are done, all sql commands will go inside a comment tag like this one:
*/

#sql for a books list page
select * from sm16_Books

#sql for a book view page
select * from sm16_Books where BookId = 3

#sql for a books list, joined to show category
SELECT BookTitle,Category, sm16_Books.Description
FROM sm16_Books inner join sm16_Categories
ON sm16_Books.CategoryID = sm16_Categories.CategoryID

#sql for a books list, joined to show category
SELECT BookTitle,Category, sm16_Books.Description as `BookDescription`
FROM sm16_Books inner join sm16_Categories
ON sm16_Books.CategoryID = sm16_Categories.CategoryID

#sql for a books list, joined to show category with aliases
SELECT BookTitle,Category, b.Description as `BookDescription`
FROM sm16_Books as b inner join sm16_Categories as c
ON b.CategoryID = c.CategoryID

#sql for a books list on category 3
SELECT BookTitle,Category, b.Description `BookDescription`
FROM sm16_Books b inner join sm16_Categories c
ON b.CategoryID = c.CategoryID
WHERE b.CategoryID = 3

#Sql for books list on category3 order by book title
SELECT BookTitle,Category, b.Description `BookDescription`
FROM sm16_Books b inner join sm16_Categories c
ON b.CategoryID = c.CategoryID
WHERE b.CategoryID = 3
ORDER BY BookTitle asc

#sql for books list SHOWS HOW MANY BOOKS WE HAVE FOR EACH CATEGORY
SELECT count(c.CategoryID) as `NumberOfBooks`, Category
FROM sm16_Books b inner join sm16_Categories c
ON b.CategoryID = c.CategoryID
GROUP BY Category
ORDER BY Category;

#
SELECT count(c.CategoryID) as `NumberOfBooks`, Category 
FROM sm16_Books b inner join sm16_Categories c
ON b.CategoryID = c.CategoryID
GROUP BY Category
HAVING `NumberOfBooks` >=3
ORDER BY `NumberOfBooks` desc;
