CREATE TABLE [dbo].[BillingAddress] (
    [BillingAddressId] INT IDENTITY(1, 1) PRIMARY KEY,
    [UserId] INT NOT NULL,
    [Name] VARCHAR(50) NOT NULL,
    [Email] VARCHAR(255) NOT NULL,
    [Address] VARCHAR(255) NOT NULL,
    [Phone] VARCHAR(20) NOT NULL,
    [Message] VARCHAR(255),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId]) 
);
