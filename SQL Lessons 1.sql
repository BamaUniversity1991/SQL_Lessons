/*
"Case notes"
	ifiweretowriteasentencelikethisitwouldbehardtoread

	pascalCaseIsWhereYouCapEveryFirstLetterExceptTheFirstWord
	CamelCaseIsAlmostTheSameExceptTheFirstWordIsAlsoCap

	officeIstGut
	Ist = is
	Gut = Good

"Comment Notes"
	Green words mean IT DOESN'T EXECUTE...
		"It's just directions"
	 it's just a note for you
	By "green words" I really mean "a programming comment"

	2 ways to "Comment" in SQL
	line-comments are denoted by --
	block-comments are denoted by /**/

"String"
	Something in english? it's a sentence.
	It's a collection of alphanumeric values.
		Alpha - letters
		numeric - numbers
		alphanumeric - letters and numbers
	String Examples:
		'Hello World'
		'123456789'
		'123lakd@12#'

	
	Strings in SQL are 'single-quote encapsualed'
	encapsualed means surrounded by something
	Examples:
	 Parenthesis encapsulated:    (test)
	 square braket encapsulated:  [test]
	 single quote : '
	 double quote : "
	 He said, "Hi sir!"

DataTypes:
	TINYINT : 1 byte, 0-255
	INT : A number 4 byte, up to 2billion
	VARCHAR(100) : A variable length string  (size of string + 2 for variable length)
	CHAR(9) : a specific length string
	MONEY : a number with 2 decimal places
	/*if you want to learn about more datatypes,
		then google:  'MSDN SQL DATATYPE'
	*/

Vocabulary Notes:
	Variables:   Variables are a common tool in programming.
			They allow you to store a value, so that it can be used later.

		Variables in SQL are denoted by an @ stymbol:
			Example:
				@someDynamicWord VARCHAR(100) 'Hello World';
				@someDynamicNumber INT = 12345;

TRANSACTIONS
	takebacks.

	
*/

--SELECT
--	List.firstColumn,
--	List.secondColumn
--FROM
--	(
--		VALUES
--			('','World'),
--			('1','else'),
--			('123456789','el456#$se'),
--			('918273621','el456#$se'),
--			('an1ythi3ng','el456#$se'),
--			('an1ythi3ng','el456#$se'),
--			('David''s','Money')
--	) AS List (firstColumn, secondColumn)


--DECLARE
--	@someDynamicNumber INT = NULL;

--SELECT
--	@someDynamicNumber = 99
--SELECT
--	@someDynamicNumber

--Print
--	@someDynamicNumber


BEGIN TRANSACTION
--DROP TABLE dbo.MyFirstTable
CREATE TABLE dbo.MyFirstTable
(
	personName VARCHAR(100),
	debtAmount MONEY
)

INSERT INTO dbo.MyFirstTable
(
	personName,
	debtAmount
)
VALUES
	('Tom',100),
	('Dick',200),
	('Harry',9999),
	('Vero',420)

SELECT * FROM dbo.MyFirstTable

PRINT 'ROLLBACK';ROLLBACK TRANSACTION
--PRINT 'COMMIT';COMMIT TRANSACTION