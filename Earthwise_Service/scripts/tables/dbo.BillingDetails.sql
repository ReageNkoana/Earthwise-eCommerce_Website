CREATE TABLE [dbo].[BillingDetails] (
    [BillingDetailsId] INT IDENTITY(1, 1) PRIMARY KEY,
    [UserId] INT NOT NULL,
    [CardNumber] VARCHAR(16) NOT NULL,
    [ExpiryDate] VARCHAR(7) NOT NULL,
    [CVV] VARCHAR(3) NOT NULL,
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) 
);
