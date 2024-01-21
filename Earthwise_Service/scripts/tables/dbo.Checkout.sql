CREATE TABLE [dbo].[Checkout] (
    [CheckoutId] INT IDENTITY(1, 1) PRIMARY KEY,
    [CartId] INT NOT NULL,
    [CheckoutDate] DATE NOT NULL,
    [TotalAmount] NUMERIC(10, 2) NOT NULL,
    [Status] VARCHAR(20) NOT NULL,

    FOREIGN KEY ([CartId]) REFERENCES [dbo].[Cart] ([CartId])

);
