CREATE TABLE [dbo].[Transactions] (
    [TransactionId]       INT          IDENTITY (1, 1) NOT NULL,
    [UserId]              INT          NOT NULL,
    [TransactionDate]     DATE         NOT NULL,
    [TransactionType]     VARCHAR (50) NOT NULL,
    [TotalAmount]         MONEY        NOT NULL,
    [TaxAmount]           MONEY        NOT NULL,
    [DiscountAmount]      MONEY        NOT NULL,
    [ShippingAmount]      MONEY        NOT NULL,
    [LoyaltyPointsEarned] INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([TransactionId] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

