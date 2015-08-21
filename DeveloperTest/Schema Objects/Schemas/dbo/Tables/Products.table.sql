CREATE TABLE [dbo].[Products] (
    [ProductId]   INT          IDENTITY (1, 1) NOT NULL,
    [ProductName] VARCHAR (50) NOT NULL,
    [CostPrice]   MONEY        NOT NULL,
    [SellPrice]   MONEY        NOT NULL,
    [BrandId]     INT          NULL,
    [ColourId]    INT          NULL,
    [SizeId]      INT          NULL
);

