CREATE TABLE [dbo].[Cart] (
    [CartId]     INT   IDENTITY (1, 1) NOT NULL,
    [UserId]     INT   NOT NULL,
    [ProdId]     INT   NOT NULL,
    [Quantity]   INT   NOT NULL,
    [TotalPrice] MONEY NOT NULL,
    PRIMARY KEY CLUSTERED ([CartId] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
    FOREIGN KEY ([ProdId]) REFERENCES [dbo].[Products] ([ProdId])
);

