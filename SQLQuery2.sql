

SELECT Number_Of_Copies, Title
FROM Book_Copies
INNER JOIN Books
ON Book_Copies.BookID = Books.BookID
WHERE BranchID = 2 AND Title = 'The Lost Tribe';

SELECT Number_Of_Copies AS 'Quantity', BranchName AS 'Branch Name'
FROM Book_Copies
FULL OUTER JOIN Library_Branch
ON Book_Copies.BranchID = Library_Branch.BranchID
WHERE BookID = 1;



Select *
FROM Borrower
WHERE NOT EXISTS (
	SELECT *
	FROM Book_Loans
	WHERE Book_Loans.CardNo= Borrower.CardNo 
);


SELECT B.Title, R.Name, R.Address
FROM Books B, BORROWER R, BOOK_LOANS BL, LIBRARY_BRANCH LB
WHERE LB.BranchName='Sharpstown' AND Lb.BranchId=bl.BranchId AND
bl.DateDue='8/21/2019' AND BL.CardNo=R.CardNo AND BL.BookId=B.BookId;

SELECT l.BranchName, COUNT(*)
FROM Book_Copies B, Library_Branch L
WHERE B.BranchId = L.BranchId
GROUP BY L.BranchName;SELECT B.CardNo, B.CardNo, B.Name, B.Address, COUNT(*)FROM BORROWER B, BOOK_LOANS L WHERE B.CardNo = L.CardNo GROUP BY B.CardNo, B.Name, B.Address HAVING COUNT(*) > 5;SELECT Title, Number_Of_Copies, BranchName
FROM Books AS BK
FULL OUTER JOIN BOOK_COPIES AS BC ON BK.BookID = BC.BookID
FULL OUTER JOIN LIBRARY_BRANCH AS LB ON BC.BranchId = LB.BranchId
FULL OUTER JOIN BOOK_AUTHORS AS BA ON BK.BookID = BA.BookId
WHERE BranchName = 'Central'
AND AuthorName = 'Stephen King'

					



