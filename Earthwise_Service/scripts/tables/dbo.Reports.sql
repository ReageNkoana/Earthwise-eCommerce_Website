CREATE TABLE [dbo].[Reports] (
    [ReportId]             INT             IDENTITY (1, 1) NOT NULL,
    [ReportDate]           DATE            NOT NULL,
    [ReportType]           VARCHAR (50)    NOT NULL,
    [NumProductsSold]      INT             NOT NULL,
    [ProductOnHandInfo]    VARCHAR (MAX)   NOT NULL,
    [NumRegisteredUsers]   INT             NOT NULL,
    [CarbonEmissionsSaved] DECIMAL (18, 2) NULL,
    [TopSellingProducts]   VARCHAR (MAX)   NULL,
    [MonthlySalesTrends]   VARCHAR (MAX)   NULL,
    [ProductAvailability]  VARCHAR (MAX)   NULL,
    PRIMARY KEY CLUSTERED ([ReportId] ASC)
);

