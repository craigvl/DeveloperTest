/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

SET IDENTITY_INSERT [dbo].[Brands] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Brands]([BrandId], [BrandName])
SELECT 1, N'Nike' UNION ALL
SELECT 2, N'Adidas' UNION ALL
SELECT 3, N'New Balance' UNION ALL
SELECT 4, N'Saucony'
COMMIT;
RAISERROR (N'[dbo].[Brands]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Brands] OFF;

SET IDENTITY_INSERT [dbo].[Colours] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Colours]([ColourId], [ColourName])
SELECT 1, N'Red' UNION ALL
SELECT 2, N'Orange' UNION ALL
SELECT 3, N'Yellow' UNION ALL
SELECT 4, N'Green' UNION ALL
SELECT 5, N'Blue' UNION ALL
SELECT 6, N'Pink' UNION ALL
SELECT 7, N'Black' UNION ALL
SELECT 8, N'White'
COMMIT;
RAISERROR (N'[dbo].[Colours]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Colours] OFF;

SET IDENTITY_INSERT [dbo].[DiscountGroups] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[DiscountGroups]([DiscountGroupId], [DiscountGroupName], [DiscountPercentage])
SELECT 1, N'Bronze', 5 UNION ALL
SELECT 2, N'Silver', 10 UNION ALL
SELECT 3, N'Gold', 15 UNION ALL
SELECT 4, N'Platinum', 20 UNION ALL
SELECT 5, N'VIP', 25 UNION ALL
SELECT 6, N'None', 0
COMMIT;
RAISERROR (N'[dbo].[DiscountGroups]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[DiscountGroups] OFF;

SET IDENTITY_INSERT [dbo].[Sizes] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Sizes]([SizeId], [SizeName])
SELECT 1, N'XS' UNION ALL
SELECT 2, N'S' UNION ALL
SELECT 3, N'M' UNION ALL
SELECT 4, N'L' UNION ALL
SELECT 5, N'XL' UNION ALL
SELECT 6, N'XXL' UNION ALL
SELECT 7, N'XXXL'
COMMIT;
RAISERROR (N'[dbo].[Sizes]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Sizes] OFF;

SET IDENTITY_INSERT [dbo].[Customers] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Customers]([CustomerId], [CustomerName], [DiscountGroupId])
SELECT 1, N'John Smith', 6 UNION ALL
SELECT 2, N'Peter Jones', 6 UNION ALL
SELECT 3, N'David Stevens', 1 UNION ALL
SELECT 4, N'James Edwards', 5 UNION ALL
SELECT 5, N'Matthew Campbell', 3 UNION ALL
SELECT 6, N'Dean Black', 2 UNION ALL
SELECT 7, N'Michael Davis', 4 UNION ALL
SELECT 8, N'Sharon Fraser', 5 UNION ALL
SELECT 9, N'Megan Gale', 4 UNION ALL
SELECT 10, N'Kelly Radcliffe', 3
COMMIT;
RAISERROR (N'[dbo].[Customers]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF;

SET IDENTITY_INSERT [dbo].[Products] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Products]([ProductId], [ProductName], [CostPrice], [SellPrice], [BrandId], [ColourId], [SizeId])
SELECT 2, N'Dri-FIT Running Vest', 27.0000, 39.9900, 1, 7, 2 UNION ALL
SELECT 3, N'Dri-FIT Running Vest', 28.0000, 39.9900, 1, 7, 3 UNION ALL
SELECT 4, N'Dri-FIT Running Vest', 29.0000, 39.9900, 1, 7, 4 UNION ALL
SELECT 5, N'Dri-FIT Running Vest', 30.0000, 39.9900, 1, 7, 5 UNION ALL
SELECT 6, N'Dri-FIT Running Vest', 31.0000, 39.9900, 1, 7, 6 UNION ALL
SELECT 7, N'Dri-FIT Running Vest', 32.0000, 39.9900, 1, 7, 7 UNION ALL
SELECT 8, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 1 UNION ALL
SELECT 9, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 2 UNION ALL
SELECT 10, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 3 UNION ALL
SELECT 11, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 4 UNION ALL
SELECT 12, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 5 UNION ALL
SELECT 13, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 6 UNION ALL
SELECT 14, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 5, 7 UNION ALL
SELECT 15, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 2 UNION ALL
SELECT 16, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 3 UNION ALL
SELECT 17, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 4 UNION ALL
SELECT 18, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 5 UNION ALL
SELECT 19, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 6 UNION ALL
SELECT 20, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 8, 2 UNION ALL
SELECT 21, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 8, 3 UNION ALL
SELECT 22, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 8, 4 UNION ALL
SELECT 23, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 8, 5 UNION ALL
SELECT 24, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 8, 6 UNION ALL
SELECT 25, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 3, 2 UNION ALL
SELECT 26, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 3, 3 UNION ALL
SELECT 27, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 3, 4 UNION ALL
SELECT 28, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 3, 5 UNION ALL
SELECT 29, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 3, 6 UNION ALL
SELECT 30, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 1 UNION ALL
SELECT 31, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 2 UNION ALL
SELECT 32, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 3 UNION ALL
SELECT 33, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 4 UNION ALL
SELECT 34, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 5 UNION ALL
SELECT 35, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 6 UNION ALL
SELECT 36, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 4, 7 UNION ALL
SELECT 37, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 2 UNION ALL
SELECT 38, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 3 UNION ALL
SELECT 39, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 4 UNION ALL
SELECT 40, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 5 UNION ALL
SELECT 41, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 6 UNION ALL
SELECT 42, N'Epic Run Jacket', 43.0000, 59.9900, 4, 3, 7 UNION ALL
SELECT 43, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 6, 1 UNION ALL
SELECT 44, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 6, 2 UNION ALL
SELECT 45, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 6, 3 UNION ALL
SELECT 46, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 6, 4 UNION ALL
SELECT 47, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 6, 5 UNION ALL
SELECT 48, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 1, 1 UNION ALL
SELECT 49, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 1, 2 UNION ALL
SELECT 50, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 1, 3 UNION ALL
SELECT 51, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 1, 4
COMMIT;
RAISERROR (N'[dbo].[Products]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[Products]([ProductId], [ProductName], [CostPrice], [SellPrice], [BrandId], [ColourId], [SizeId])
SELECT 52, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 1, 5 UNION ALL
SELECT 53, N'Dri-FIT Running Vest', 27.0000, 39.9900, 1, 8, 2 UNION ALL
SELECT 54, N'Dri-FIT Running Vest', 28.0000, 39.9900, 1, 8, 3 UNION ALL
SELECT 55, N'Dri-FIT Running Vest', 29.0000, 39.9900, 1, 8, 4 UNION ALL
SELECT 56, N'Dri-FIT Running Vest', 30.0000, 39.9900, 1, 8, 5 UNION ALL
SELECT 57, N'Dri-FIT Running Vest', 31.0000, 39.9900, 1, 8, 6 UNION ALL
SELECT 58, N'Dri-FIT Running Vest', 32.0000, 39.9900, 1, 8, 7 UNION ALL
SELECT 59, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 1 UNION ALL
SELECT 60, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 2 UNION ALL
SELECT 61, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 3 UNION ALL
SELECT 62, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 4 UNION ALL
SELECT 63, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 5 UNION ALL
SELECT 64, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 6 UNION ALL
SELECT 65, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 6, 7 UNION ALL
SELECT 66, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 2 UNION ALL
SELECT 67, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 3 UNION ALL
SELECT 68, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 4 UNION ALL
SELECT 69, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 5 UNION ALL
SELECT 70, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 6 UNION ALL
SELECT 71, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 1, 2 UNION ALL
SELECT 72, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 1, 3 UNION ALL
SELECT 73, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 1, 4 UNION ALL
SELECT 74, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 1, 5 UNION ALL
SELECT 75, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 1, 6 UNION ALL
SELECT 76, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 4, 2 UNION ALL
SELECT 77, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 4, 3 UNION ALL
SELECT 78, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 4, 4 UNION ALL
SELECT 79, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 4, 5 UNION ALL
SELECT 80, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 4, 6 UNION ALL
SELECT 81, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 1 UNION ALL
SELECT 82, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 2 UNION ALL
SELECT 83, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 3 UNION ALL
SELECT 84, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 4 UNION ALL
SELECT 85, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 5 UNION ALL
SELECT 86, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 6 UNION ALL
SELECT 87, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 5, 7 UNION ALL
SELECT 88, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 2 UNION ALL
SELECT 89, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 3 UNION ALL
SELECT 90, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 4 UNION ALL
SELECT 91, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 5 UNION ALL
SELECT 92, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 6 UNION ALL
SELECT 93, N'Epic Run Jacket', 43.0000, 59.9900, 4, 4, 7 UNION ALL
SELECT 94, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 7, 1 UNION ALL
SELECT 95, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 7, 2 UNION ALL
SELECT 96, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 7, 3 UNION ALL
SELECT 97, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 7, 4 UNION ALL
SELECT 98, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 7, 5 UNION ALL
SELECT 99, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 2, 1 UNION ALL
SELECT 100, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 2, 2 UNION ALL
SELECT 101, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 2, 3
COMMIT;
RAISERROR (N'[dbo].[Products]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[Products]([ProductId], [ProductName], [CostPrice], [SellPrice], [BrandId], [ColourId], [SizeId])
SELECT 102, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 2, 4 UNION ALL
SELECT 103, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 2, 5 UNION ALL
SELECT 104, N'Dri-FIT Running Vest', 27.0000, 39.9900, 1, 1, 2 UNION ALL
SELECT 105, N'Dri-FIT Running Vest', 28.0000, 39.9900, 1, 1, 3 UNION ALL
SELECT 106, N'Dri-FIT Running Vest', 29.0000, 39.9900, 1, 1, 4 UNION ALL
SELECT 107, N'Dri-FIT Running Vest', 30.0000, 39.9900, 1, 1, 5 UNION ALL
SELECT 108, N'Dri-FIT Running Vest', 31.0000, 39.9900, 1, 1, 6 UNION ALL
SELECT 109, N'Dri-FIT Running Vest', 32.0000, 39.9900, 1, 1, 7 UNION ALL
SELECT 110, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 1 UNION ALL
SELECT 111, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 2 UNION ALL
SELECT 112, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 3 UNION ALL
SELECT 113, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 4 UNION ALL
SELECT 114, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 5 UNION ALL
SELECT 115, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 6 UNION ALL
SELECT 116, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 7, 7 UNION ALL
SELECT 117, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 4, 2 UNION ALL
SELECT 118, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 4, 3 UNION ALL
SELECT 119, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 4, 4 UNION ALL
SELECT 120, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 4, 5 UNION ALL
SELECT 121, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 4, 6 UNION ALL
SELECT 122, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 2 UNION ALL
SELECT 123, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 3 UNION ALL
SELECT 124, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 4 UNION ALL
SELECT 125, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 5 UNION ALL
SELECT 126, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 2, 6 UNION ALL
SELECT 127, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 5, 2 UNION ALL
SELECT 128, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 5, 3 UNION ALL
SELECT 129, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 5, 4 UNION ALL
SELECT 130, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 5, 5 UNION ALL
SELECT 131, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 5, 6 UNION ALL
SELECT 132, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 1 UNION ALL
SELECT 133, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 2 UNION ALL
SELECT 134, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 3 UNION ALL
SELECT 135, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 4 UNION ALL
SELECT 136, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 5 UNION ALL
SELECT 137, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 6 UNION ALL
SELECT 138, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 6, 7 UNION ALL
SELECT 139, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 2 UNION ALL
SELECT 140, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 3 UNION ALL
SELECT 141, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 4 UNION ALL
SELECT 142, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 5 UNION ALL
SELECT 143, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 6 UNION ALL
SELECT 144, N'Epic Run Jacket', 43.0000, 59.9900, 4, 5, 7 UNION ALL
SELECT 145, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 8, 1 UNION ALL
SELECT 146, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 8, 2 UNION ALL
SELECT 147, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 8, 3 UNION ALL
SELECT 148, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 8, 4 UNION ALL
SELECT 149, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 8, 5 UNION ALL
SELECT 150, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 3, 1 UNION ALL
SELECT 151, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 3, 2
COMMIT;
RAISERROR (N'[dbo].[Products]: Insert Batch: 3.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[Products]([ProductId], [ProductName], [CostPrice], [SellPrice], [BrandId], [ColourId], [SizeId])
SELECT 152, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 3, 3 UNION ALL
SELECT 153, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 3, 4 UNION ALL
SELECT 154, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 3, 5 UNION ALL
SELECT 155, N'Dri-FIT Running Vest', 27.0000, 39.9900, 1, 2, 2 UNION ALL
SELECT 156, N'Dri-FIT Running Vest', 28.0000, 39.9900, 1, 2, 3 UNION ALL
SELECT 157, N'Dri-FIT Running Vest', 29.0000, 39.9900, 1, 2, 4 UNION ALL
SELECT 158, N'Dri-FIT Running Vest', 30.0000, 39.9900, 1, 2, 5 UNION ALL
SELECT 159, N'Dri-FIT Running Vest', 31.0000, 39.9900, 1, 2, 6 UNION ALL
SELECT 160, N'Dri-FIT Running Vest', 32.0000, 39.9900, 1, 2, 7 UNION ALL
SELECT 161, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 1 UNION ALL
SELECT 162, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 2 UNION ALL
SELECT 163, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 3 UNION ALL
SELECT 164, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 4 UNION ALL
SELECT 165, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 5 UNION ALL
SELECT 166, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 6 UNION ALL
SELECT 167, N'Dri-FIT Shorts', 24.0000, 29.9900, 1, 8, 7 UNION ALL
SELECT 168, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 5, 2 UNION ALL
SELECT 169, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 5, 3 UNION ALL
SELECT 170, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 5, 4 UNION ALL
SELECT 171, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 5, 5 UNION ALL
SELECT 172, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 5, 6 UNION ALL
SELECT 173, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 2 UNION ALL
SELECT 174, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 3 UNION ALL
SELECT 175, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 4 UNION ALL
SELECT 176, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 5 UNION ALL
SELECT 177, N'Response 3-Stripes Tee', 31.0000, 38.9900, 2, 3, 6 UNION ALL
SELECT 178, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 6, 2 UNION ALL
SELECT 179, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 6, 3 UNION ALL
SELECT 180, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 6, 4 UNION ALL
SELECT 181, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 6, 5 UNION ALL
SELECT 182, N'Response 3-Stripes Shorts', 26.0000, 31.9900, 2, 6, 6 UNION ALL
SELECT 183, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 1 UNION ALL
SELECT 184, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 2 UNION ALL
SELECT 185, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 3 UNION ALL
SELECT 186, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 4 UNION ALL
SELECT 187, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 5 UNION ALL
SELECT 188, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 6 UNION ALL
SELECT 189, N'Revel Short Sleeve Tee', 32.0000, 40.9900, 4, 7, 7 UNION ALL
SELECT 190, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 2 UNION ALL
SELECT 191, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 3 UNION ALL
SELECT 192, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 4 UNION ALL
SELECT 193, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 5 UNION ALL
SELECT 194, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 6 UNION ALL
SELECT 195, N'Epic Run Jacket', 43.0000, 59.9900, 4, 6, 7 UNION ALL
SELECT 196, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 1, 1 UNION ALL
SELECT 197, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 1, 2 UNION ALL
SELECT 198, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 1, 3 UNION ALL
SELECT 199, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 1, 4 UNION ALL
SELECT 200, N'HydraLite Short Sleeve', 31.0000, 39.9900, 4, 1, 5 UNION ALL
SELECT 201, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 4, 1
COMMIT;
RAISERROR (N'[dbo].[Products]: Insert Batch: 4.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[Products]([ProductId], [ProductName], [CostPrice], [SellPrice], [BrandId], [ColourId], [SizeId])
SELECT 202, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 4, 2 UNION ALL
SELECT 203, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 4, 3 UNION ALL
SELECT 204, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 4, 4 UNION ALL
SELECT 205, N'CB Tempo Short Sleeve', 32.0000, 39.9900, 3, 4, 5
COMMIT;
RAISERROR (N'[dbo].[Products]: Insert Batch: 5.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Products] OFF;

