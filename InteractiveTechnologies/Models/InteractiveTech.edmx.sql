
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2018 08:42:59
-- Generated from EDMX file: C:\Users\Stephen\Desktop\InteractiveTechnologies\InteractiveTechnologies\Models\InteractiveTech.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [InteractiveTech];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRole];
GO
IF OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CartItems_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carts] DROP CONSTRAINT [FK_CartItems_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_MembersPage_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MembersPages] DROP CONSTRAINT [FK_MembersPage_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_MembersPage_Images]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MembersPages] DROP CONSTRAINT [FK_MembersPage_Images];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Order_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetail_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetail_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDetail_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT [FK_OrderDetail_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCategories_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCategories_Products]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Products];
GO
IF OBJECT_ID(N'[dbo].[FK_Products_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Category];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Carts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carts];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Images];
GO
IF OBJECT_ID(N'[dbo].[MembersPages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MembersPages];
GO
IF OBJECT_ID(N'[dbo].[News]', 'U') IS NOT NULL
    DROP TABLE [dbo].[News];
GO
IF OBJECT_ID(N'[dbo].[OrderDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderDetails];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[ProductCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductCategories];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'


-- Creating table 'C_MigrationHistory'
CREATE TABLE [dbo].[_MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO



-- Creating table 'Carts'
CREATE TABLE [dbo].[Carts] (
    [ItemID] int IDENTITY(1,1) NOT NULL,
    [CartID] nvarchar(128)  NOT NULL,
    [ProductID] int  NOT NULL,
    [Quantity] int  NOT NULL,
    [DateCreated] datetime  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [CategoryID] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(50)  NULL
);
GO

-- Creating table 'Images'
CREATE TABLE [dbo].[Images] (
    [ImageID] int IDENTITY(1,1) NOT NULL,
    [ImageName] nvarchar(125)  NULL,
    [Description] nvarchar(500)  NULL,
    [ImageAlt] nvarchar(100)  NULL,
    [ImageSrc] nvarchar(75)  NULL
);
GO

-- Creating table 'MembersPages'
CREATE TABLE [dbo].[MembersPages] (
    [PageID] int IDENTITY(1,1) NOT NULL,
    [RoleId] nvarchar(128)  NOT NULL,
    [DateCreated] datetime  NOT NULL,
    [PageTitle] nvarchar(200)  NOT NULL,
    [DisplayDate] bit  NOT NULL,
    [ImageID] int  NULL,
    [BodyText] nvarchar(max)  NULL
);
GO

-- Creating table 'News'
CREATE TABLE [dbo].[News] (
    [ArticleID] int IDENTITY(1,1) NOT NULL,
    [ArticleHeaderText] nvarchar(300)  NULL,
    [ArticleDate] datetime  NOT NULL,
    [DisplayDate] bit  NOT NULL,
    [ArticleText] nvarchar(max)  NOT NULL,
    [ArticleOrder] int  NOT NULL
);
GO

-- Creating table 'OrderDetails'
CREATE TABLE [dbo].[OrderDetails] (
    [OrderDetailID] int  NOT NULL,
    [OrderID] int  NOT NULL,
    [ProductID] int  NOT NULL,
    [Quantity] int  NOT NULL,
    [UnitPrice] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderID] int  NOT NULL,
    [UserID] nvarchar(128)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(100)  NOT NULL,
    [Company] nvarchar(max)  NULL,
    [City] nvarchar(50)  NOT NULL,
    [PostalCode] nvarchar(50)  NOT NULL,
    [State] nvarchar(50)  NOT NULL,
    [Country] nvarchar(50)  NULL,
    [PhoneNumber] nvarchar(50)  NULL,
    [Email] nvarchar(256)  NOT NULL,
    [Total] decimal(19,4)  NOT NULL,
    [OrderDate] datetime  NOT NULL
);
GO

-- Creating table 'ProductCategories'
CREATE TABLE [dbo].[ProductCategories] (
    [ProductCategoryID] int IDENTITY(1,1) NOT NULL,
    [CategoryID] int  NOT NULL,
    [ProductID] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductID] int IDENTITY(1,1) NOT NULL,
    [CategoryID] int  NOT NULL,
    [ProductName] nvarchar(150)  NOT NULL,
    [ProductDescription] nvarchar(max)  NULL,
    [Price] decimal(19,4)  NOT NULL,
    [ProductImage] nvarchar(50)  NULL,
    [DisplayProduct] bit  NOT NULL,
    [ProductOrder] int  NOT NULL
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

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [MigrationId], [ContextKey] in table 'C_MigrationHistory'
ALTER TABLE [dbo].[C_MigrationHistory]
ADD CONSTRAINT [PK_C_MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ItemID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [PK_Carts]
    PRIMARY KEY CLUSTERED ([ItemID] ASC);
GO

-- Creating primary key on [CategoryID] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([CategoryID] ASC);
GO

-- Creating primary key on [ImageID] in table 'Images'
ALTER TABLE [dbo].[Images]
ADD CONSTRAINT [PK_Images]
    PRIMARY KEY CLUSTERED ([ImageID] ASC);
GO

-- Creating primary key on [PageID] in table 'MembersPages'
ALTER TABLE [dbo].[MembersPages]
ADD CONSTRAINT [PK_MembersPages]
    PRIMARY KEY CLUSTERED ([PageID] ASC);
GO

-- Creating primary key on [ArticleID] in table 'News'
ALTER TABLE [dbo].[News]
ADD CONSTRAINT [PK_News]
    PRIMARY KEY CLUSTERED ([ArticleID] ASC);
GO

-- Creating primary key on [OrderDetailID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [PK_OrderDetails]
    PRIMARY KEY CLUSTERED ([OrderDetailID] ASC);
GO

-- Creating primary key on [OrderID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderID] ASC);
GO

-- Creating primary key on [ProductCategoryID] in table 'ProductCategories'
ALTER TABLE [dbo].[ProductCategories]
ADD CONSTRAINT [PK_ProductCategories]
    PRIMARY KEY CLUSTERED ([ProductCategoryID] ASC);
GO

-- Creating primary key on [ProductID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RoleId] in table 'MembersPages'
ALTER TABLE [dbo].[MembersPages]
ADD CONSTRAINT [FK_MembersPage_AspNetRoles]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MembersPage_AspNetRoles'
CREATE INDEX [IX_FK_MembersPage_AspNetRoles]
ON [dbo].[MembersPages]
    ([RoleId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [UserID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_AspNetUsers]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_AspNetUsers'
CREATE INDEX [IX_FK_Order_AspNetUsers]
ON [dbo].[Orders]
    ([UserID]);
GO

-- Creating foreign key on [ProductID] in table 'Carts'
ALTER TABLE [dbo].[Carts]
ADD CONSTRAINT [FK_CartItems_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CartItems_Products'
CREATE INDEX [IX_FK_CartItems_Products]
ON [dbo].[Carts]
    ([ProductID]);
GO

-- Creating foreign key on [CategoryID] in table 'ProductCategories'
ALTER TABLE [dbo].[ProductCategories]
ADD CONSTRAINT [FK_ProductCategories_Category]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories]
        ([CategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductCategories_Category'
CREATE INDEX [IX_FK_ProductCategories_Category]
ON [dbo].[ProductCategories]
    ([CategoryID]);
GO

-- Creating foreign key on [CategoryID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_Category]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories]
        ([CategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_Category'
CREATE INDEX [IX_FK_Products_Category]
ON [dbo].[Products]
    ([CategoryID]);
GO

-- Creating foreign key on [ImageID] in table 'MembersPages'
ALTER TABLE [dbo].[MembersPages]
ADD CONSTRAINT [FK_MembersPage_Images]
    FOREIGN KEY ([ImageID])
    REFERENCES [dbo].[Images]
        ([ImageID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MembersPage_Images'
CREATE INDEX [IX_FK_MembersPage_Images]
ON [dbo].[MembersPages]
    ([ImageID]);
GO

-- Creating foreign key on [OrderID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetail_Order]
    FOREIGN KEY ([OrderID])
    REFERENCES [dbo].[Orders]
        ([OrderID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetail_Order'
CREATE INDEX [IX_FK_OrderDetail_Order]
ON [dbo].[OrderDetails]
    ([OrderID]);
GO

-- Creating foreign key on [ProductID] in table 'OrderDetails'
ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetail_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDetail_Products'
CREATE INDEX [IX_FK_OrderDetail_Products]
ON [dbo].[OrderDetails]
    ([ProductID]);
GO

-- Creating foreign key on [ProductID] in table 'ProductCategories'
ALTER TABLE [dbo].[ProductCategories]
ADD CONSTRAINT [FK_ProductCategories_Products]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[Products]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductCategories_Products'
CREATE INDEX [IX_FK_ProductCategories_Products]
ON [dbo].[ProductCategories]
    ([ProductID]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUser'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUser]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------