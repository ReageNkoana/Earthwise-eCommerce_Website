CREATE TABLE [dbo].[Users] (
    [UserId]   INT           IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50)  NOT NULL,
    [Surname]  VARCHAR (50)  NOT NULL,
    [Email]    VARCHAR (50)  NOT NULL,
    [Password] VARCHAR (MAX) NOT NULL,
    [UserType] VARCHAR (8)   NOT NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

