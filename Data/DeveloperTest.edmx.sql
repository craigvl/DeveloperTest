
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 08/21/2015 16:42:17
-- Generated from EDMX file: C:\Users\craig\Documents\Visual Studio 2013\Projects\DeveloperTest\Data\DeveloperTest.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DeveloperTest];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Customers_DiscountGroups]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_DiscountGroups];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_Colours]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Colours];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_Sizes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Sizes];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Brands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Brands];
GO
IF OBJECT_ID(N'[dbo].[Colours]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Colours];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[DiscountGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiscountGroups];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Sizes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sizes];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Brands'
CREATE TABLE [dbo].[Brands] (
    [BrandId] int IDENTITY(1,1) NOT NULL,
    [BrandName] varchar(20)  NOT NULL
);
GO

-- Creating table 'Colours'
CREATE TABLE [dbo].[Colours] (
    [ColourId] int IDENTITY(1,1) NOT NULL,
    [ColourName] varchar(20)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerId] int IDENTITY(1,1) NOT NULL,
    [CustomerName] varchar(50)  NOT NULL,
    [DiscountGroupId] int  NOT NULL
);
GO

-- Creating table 'DiscountGroups'
CREATE TABLE [dbo].[DiscountGroups] (
    [DiscountGroupId] int IDENTITY(1,1) NOT NULL,
    [DiscountGroupName] varchar(50)  NOT NULL,
    [DiscountPercentage] tinyint  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductId] int IDENTITY(1,1) NOT NULL,
    [ProductName] varchar(50)  NOT NULL,
    [CostPrice] decimal(19,4)  NOT NULL,
    [SellPrice] decimal(19,4)  NOT NULL,
    [BrandId] int  NULL,
    [ColourId] int  NULL,
    [SizeId] int  NULL
);
GO

-- Creating table 'Sizes'
CREATE TABLE [dbo].[Sizes] (
    [SizeId] int IDENTITY(1,1) NOT NULL,
    [SizeName] varchar(20)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BrandId] in table 'Brands'
ALTER TABLE [dbo].[Brands]
ADD CONSTRAINT [PK_Brands]
    PRIMARY KEY CLUSTERED ([BrandId] ASC);
GO

-- Creating primary key on [ColourId] in table 'Colours'
ALTER TABLE [dbo].[Colours]
ADD CONSTRAINT [PK_Colours]
    PRIMARY KEY CLUSTERED ([ColourId] ASC);
GO

-- Creating primary key on [CustomerId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerId] ASC);
GO

-- Creating primary key on [DiscountGroupId] in table 'DiscountGroups'
ALTER TABLE [dbo].[DiscountGroups]
ADD CONSTRAINT [PK_DiscountGroups]
    PRIMARY KEY CLUSTERED ([DiscountGroupId] ASC);
GO

-- Creating primary key on [ProductId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [SizeId] in table 'Sizes'
ALTER TABLE [dbo].[Sizes]
ADD CONSTRAINT [PK_Sizes]
    PRIMARY KEY CLUSTERED ([SizeId] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BrandId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_Brands]
    FOREIGN KEY ([BrandId])
    REFERENCES [dbo].[Brands]
        ([BrandId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_Brands'
CREATE INDEX [IX_FK_Products_Brands]
ON [dbo].[Products]
    ([BrandId]);
GO

-- Creating foreign key on [ColourId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_Colours]
    FOREIGN KEY ([ColourId])
    REFERENCES [dbo].[Colours]
        ([ColourId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_Colours'
CREATE INDEX [IX_FK_Products_Colours]
ON [dbo].[Products]
    ([ColourId]);
GO

-- Creating foreign key on [DiscountGroupId] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_Customers_DiscountGroups]
    FOREIGN KEY ([DiscountGroupId])
    REFERENCES [dbo].[DiscountGroups]
        ([DiscountGroupId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Customers_DiscountGroups'
CREATE INDEX [IX_FK_Customers_DiscountGroups]
ON [dbo].[Customers]
    ([DiscountGroupId]);
GO

-- Creating foreign key on [SizeId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_Sizes]
    FOREIGN KEY ([SizeId])
    REFERENCES [dbo].[Sizes]
        ([SizeId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_Sizes'
CREATE INDEX [IX_FK_Products_Sizes]
ON [dbo].[Products]
    ([SizeId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------