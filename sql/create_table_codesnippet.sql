create table CodeSnippet(
Id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
Title varchar(255),
Description ntext,
Code ntext,
Metadata varchar(255)
)