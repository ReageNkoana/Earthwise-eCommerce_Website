CREATE TABLE [dbo].[Invoices] (
    [InvoiceId]     INT          IDENTITY (1, 1) NOT NULL,
    [TransactionId] INT          NOT NULL,
    [InvoiceNumber] VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([InvoiceId] ASC),
    FOREIGN KEY ([TransactionId]) REFERENCES [dbo].[Transactions] ([TransactionId])
);

