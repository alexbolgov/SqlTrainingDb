CREATE TABLE [dbo].[Product]
(
	ProductID int identity(1,1) NOT NULL constraint PK_Product PRIMARY KEY,
	ProductCode varchar(100) not null constraint UK_Product unique,
	DescriptionRus varchar(100) not null,
	DescriptionEng varchar(100) not null
)
