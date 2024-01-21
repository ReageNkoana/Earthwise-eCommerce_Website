CREATE TABLE [dbo].[Products] (
    [ProdId]          INT             IDENTITY (1, 1) NOT NULL,
    [ProdName]        VARCHAR (50)    NOT NULL,
    [ProdDescription] VARCHAR (MAX)   NOT NULL,
    [ProdPrice]       NUMERIC (10, 2) NOT NULL,
    [ProdCategory]    VARCHAR (50)    NOT NULL,
    [ProdImage]       VARCHAR (255)   NOT NULL,
    [Active]          INT             NOT NULL,
    [OnSpecial]       INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([ProdId] ASC)
);

