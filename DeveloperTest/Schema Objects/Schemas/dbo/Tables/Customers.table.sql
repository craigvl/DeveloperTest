CREATE TABLE [dbo].[Customers] (
    [CustomerId]      INT          IDENTITY (1, 1) NOT NULL,
    [CustomerName]    VARCHAR (50) NOT NULL,
    [DiscountGroupId] INT          NOT NULL
);

