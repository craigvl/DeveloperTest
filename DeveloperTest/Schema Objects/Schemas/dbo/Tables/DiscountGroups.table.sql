CREATE TABLE [dbo].[DiscountGroups] (
    [DiscountGroupId]    INT          IDENTITY (1, 1) NOT NULL,
    [DiscountGroupName]  VARCHAR (50) NOT NULL,
    [DiscountPercentage] TINYINT      NOT NULL
);

