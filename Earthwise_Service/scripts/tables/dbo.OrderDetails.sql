CREATE TABLE [dbo].[OrderDetails] (
    [OrderDetailsId] INT IDENTITY(1, 1) PRIMARY KEY,
    [UserId] INT NOT NULL,
    [ProdId] INT NOT NULL,
    [Quantity] INT NOT NULL,
    [TotalPrice] NUMERIC(10, 2) NOT NULL,
    [CheckoutId] INT NOT NULL, 
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]),
    FOREIGN KEY ([ProdId]) REFERENCES [dbo].[Products] ([ProdId]),
    FOREIGN KEY ([CheckoutId]) REFERENCES [dbo].[Checkout] ([CheckoutId])
);
