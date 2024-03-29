IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WhatsNew]') AND type in (N'U'))
ALTER TABLE [dbo].[WhatsNew] DROP CONSTRAINT IF EXISTS [FK_WhatsNew_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Slideshow]') AND type in (N'U'))
ALTER TABLE [dbo].[Slideshow] DROP CONSTRAINT IF EXISTS [FK_Slideshow_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Services]') AND type in (N'U'))
ALTER TABLE [dbo].[Services] DROP CONSTRAINT IF EXISTS [FK_Services_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT IF EXISTS [FK_ProductCategories_Products]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT IF EXISTS [FK_ProductCategories_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MembersPages]') AND type in (N'U'))
ALTER TABLE [dbo].[MembersPages] DROP CONSTRAINT IF EXISTS [FK_MembersPage_Images]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MembersPages]') AND type in (N'U'))
ALTER TABLE [dbo].[MembersPages] DROP CONSTRAINT IF EXISTS [FK_MembersPage_AspNetRoles]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [IX_FK_Products_Category]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_Products_Category] ON [dbo].[Products]
GO
/****** Object:  Index [IX_FK_ProductCategories_Products]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_ProductCategories_Products] ON [dbo].[ProductCategories]
GO
/****** Object:  Index [IX_FK_ProductCategories_Category]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_ProductCategories_Category] ON [dbo].[ProductCategories]
GO
/****** Object:  Index [IX_FK_MembersPage_Images]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_MembersPage_Images] ON [dbo].[MembersPages]
GO
/****** Object:  Index [IX_FK_MembersPage_AspNetRoles]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_MembersPage_AspNetRoles] ON [dbo].[MembersPages]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP INDEX IF EXISTS [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[WhatsNew]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[WhatsNew]
GO
/****** Object:  Table [dbo].[Slideshow]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[Slideshow]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[Services]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[ProductCategories]
GO
/****** Object:  Table [dbo].[News]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[News]
GO
/****** Object:  Table [dbo].[MembersPages]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[MembersPages]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[Images]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[_MigrationHistory]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[_MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Database [InteractiveTech]    Script Date: 1/10/2019 1:34:48 PM ******/
DROP DATABASE IF EXISTS [InteractiveTech]
GO
/****** Object:  Database [InteractiveTech]    Script Date: 1/10/2019 1:34:48 PM ******/
CREATE DATABASE [InteractiveTech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InteractiveTech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InteractiveTech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InteractiveTech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\InteractiveTech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [InteractiveTech] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InteractiveTech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InteractiveTech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InteractiveTech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InteractiveTech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InteractiveTech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InteractiveTech] SET ARITHABORT OFF 
GO
ALTER DATABASE [InteractiveTech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InteractiveTech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InteractiveTech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InteractiveTech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InteractiveTech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InteractiveTech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InteractiveTech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InteractiveTech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InteractiveTech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InteractiveTech] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InteractiveTech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InteractiveTech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InteractiveTech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InteractiveTech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InteractiveTech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InteractiveTech] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [InteractiveTech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InteractiveTech] SET RECOVERY FULL 
GO
ALTER DATABASE [InteractiveTech] SET  MULTI_USER 
GO
ALTER DATABASE [InteractiveTech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InteractiveTech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InteractiveTech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InteractiveTech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [InteractiveTech] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InteractiveTech', N'ON'
GO
ALTER DATABASE [InteractiveTech] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_MigrationHistory]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/10/2019 1:34:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ReasonForContact] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](125) NULL,
	[Description] [nvarchar](500) NULL,
	[ImageAlt] [nvarchar](100) NULL,
	[ImageSrc] [nvarchar](75) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MembersPages]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MembersPages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[PageTitle] [nvarchar](200) NOT NULL,
	[DisplayDate] [bit] NOT NULL,
	[ImageID] [int] NULL,
	[BodyText] [nvarchar](max) NULL,
 CONSTRAINT [PK_MembersPages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleHeaderText] [nvarchar](300) NULL,
	[ArticleDate] [datetime] NOT NULL,
	[DisplayDate] [bit] NOT NULL,
	[ArticleText] [nvarchar](max) NOT NULL,
	[ArticleOrder] [int] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ImageID] [int] NOT NULL,
	[Image2ID] [int] NULL,
	[Image3ID] [int] NULL,
	[Image4ID] [int] NULL,
	[DisplayProduct] [bit] NOT NULL,
	[ProductOrder] [int] NOT NULL,
	[Download] [nvarchar](75) NULL,
	[Specs] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServicePageID] [int] NOT NULL,
	[Pdf] [nvarchar](75) NULL,
	[ImageID] [int] NULL,
	[BodyText] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServicePageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slideshow]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slideshow](
	[SlideID] [int] IDENTITY(1,1) NOT NULL,
	[ImageID] [int] NOT NULL,
	[SlideLink] [nvarchar](150) NULL,
	[Display] [bit] NOT NULL,
	[SlideOrder] [int] NOT NULL,
 CONSTRAINT [PK_Slideshow] PRIMARY KEY CLUSTERED 
(
	[SlideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhatsNew]    Script Date: 1/10/2019 1:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhatsNew](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HeaderText] [nvarchar](300) NULL,
	[Date] [date] NOT NULL,
	[DisplayDate] [bit] NOT NULL,
	[ImageID] [int] NULL,
	[BodyText] [nvarchar](max) NOT NULL,
	[Display] [bit] NOT NULL,
 CONSTRAINT [PK_WhatsNew] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201812191508374_InitialCreate', N'InteractiveTechnologies.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C596FE4B8117E0F90FF20E82909BC2D1F99C1C468EFC2DB7627467C61DAB3C8DB802DB1DBC2489456A2BC3682FD6579D89FB47F2145893A28923A5AEAC38B0516D33CBE2A16ABC862A9CABFFFEFB7E90FAFBE67BCE028760372619E4C8E4D03133B705CB2BE3013BAFAEE93F9C3F77FFED3F4DAF15F8D9FF271676C1CCC24F185F94C69786E59B1FD8C7D144F7CD78E823858D1891DF8167202EBF4F8F81FD6C9898501C2042CC3987E4E08757D9CFE809FB380D838A409F2EE02077B316F879E458A6ADC231FC721B2F1857943288E904DDD17FC84ED671278C1DAC5F1249B691A979E8B80AB05F656A681080928A2C0F3F997182F681490F5228406E43DBD8518C6AD901763BE96F37278D7651D9FB26559E5C41CCA4E621AF83D014FCEB89CACFAF48DA46D167204495E83C4E91B5B752A4D10A483D3A6CF810702A8133C9F79111B7C61DE15242EE3F01ED3493E719241CE2380FB2588BE4DAA884746E77947855E9D4E8ED97F47C62CF16812E10B82131A21EFC8784C969E6BFF1BBF3D05DF30B9383B59AECE3E7DF8889CB38F7FC7671FAA2B85B5C238A1019A1EA320C411F08657C5FA4DC312E759F589C5B4CA9C4C2AA04B6022A671875E6F3159D367309ED34FA631775FB193B770E5FA425CB0289844A3047EDE279E87961E2EFAAD469AECFF0D544F3F7C1C85EA3D7A71D7E9D6D7E883E14460579FB197F6C6CF6E989997B0DF5FF9B07914F8ECB7A85F59EFD7459044365B4CA01DF284A235A6227753AB54DE4E2ACDA0C657EB1CF5F0559B712AABB772285BD026969093D8B535E4FC6E976E678DBB0C43D8BC54B598449A14AEF9E29AD4908E0CCDF852A54EBAAA1481A5FE914FC8B91BC5B4E598847F7622DD4CE916ED88D02CF04344DEB64F07D479EB4416600ADB17D9678CE280CC8308BC490A76B37582D73E72BD116EE60E5460492B37F271615C3F06700E22D2DB541E511CC3C5E4FC0BC5CFDBDF776C27112818ECBF1F6E9DDAE37340F07DE22FD931BC3B5AA36DCDD32FC11CD43688AE099B3518EF36B0BF0509BD26CE1598DF176AE780ECE793EB770718859D4BDBC6713C0765C6CE2C80F75F0E08F7DCD9696F387647EEDB339E79C8F5D5AE71ED36FF9A0F2DDD63F508C945D60C53B9C94DACDE82EF40BAB19A0FD5B39A8D6865950FEBCB2A03EBC6291FA967341DD0CA67366AB48747BA43E3BF3C52D8C37F7A0CF319756741458C0B3821F13F3101DF9862E71151F09249B9035DCE8D7DF8A8E9F631A2DB77E918A59F90978C4D6A236B480F81F1AD21853D7C6B48D984E617D7615E4987F7783E18E03B8D573FF5DB6DAEC6D9AECD4158E6AE89EFE60CD099CB651C07B69B5A812212CBE36822FFE0C319ED41B56C35F5C01C2C0C14DD65571EB4C0DACCBA523D902BEC618A8D4B3B8B54CF506C234716232CC8E9C1587EA32A182B037422737F936882A6E3884D42EC111483A5BA84CA66E112DB0D91D72AA5DACC8E57185B7B41A3DE7385434C18C156497421AE8EC731060A3AB54D6993D0D4AA685CB3226ABC56DD9EB7B9B0E5BE4B61B29DE8648BEFACD14BEEBF6D45319B25B603E56C16491706B4B1E57D28287FAB745580FAC3E5D014B4F662D2282877A976A2A0A2C4F6A0A0A248DE9D82664FD4AEFB5F7BAF1E9A7A8A0FE5DD5FEB8DE2DA836E0AF23830D5CC7CCF3414EEC25B5956CFAB25EBC4AF54F138033EF9FB2CE6AE6E5D4518F80253316453FABB4A3FD46A06A92B511360A9682DA0FCABB4042419540FE6F2585E2377DC8BE8019BC7DD1A61F9D95F83ADE8808C5DFD3A5F19A8FF865F57CE4EAF8F62658536484ADEE9B150C1512844FDF01217DE4128BAB8AC2C982EBE701F6FB8B230BE190D026AF15C3542CA1733BA9472D56C9792CA21EBE3920D9252CD7DD248295FCCE852E23ADA2E248553D0C32D182422F10A1FC9D8F2484771DB147D532B4BE0E30D534B93E937BD4361E8927525F38FB7188B2CED6FF6DDA27F0E9C9F615876AC48852BB82D28D120426B5CEB65DFE21D9CA6185C218A9688C579668E2F0D53DEAD9AE33F2759BD3EE54DCCEF817C34FB373FDB9B7349847B57764C38DE1C56EB33EF260DA92B74413DDD605999C84391228A3F0BBCC4277A674B3F3BFB96579D9FB5C80853ABC6BFE44C4992935C5E711B3A6D926C205BD8B0C2AFD97CD3F4103AD1E75E6955F83A4F558F9207AEAA28BA60D6DE3651E7E06CBC71753FB2FFBEB5226CC7DE2A395355904A7377AC322BAA0A55B676472AD29EAA4045630F9CF44BA000A2F836D884C07396AA10BCA98749481949827148BDDD9179EA51158E37F5C4A864AF486095BEEEA86282511553ECE9B113621691B02362570F2EABB9420293D58E8DF03412558FE84E41CE0EAAA2CBBD3DAC57CE1312CC58EEDE005BC173BDAF3BAA2295A80AACE8EE8E5DE615D5AFC303F647B46FD3511C922C9431CC23D1606CE76E1BC7A1A9646C081749D9DC138BE7644860BCFD20354BFB9E1F45B3B268D630CDD260E84F2421EF413C901A9335F49842328370E8372573E8F1FAE9EF56B5447ADAD78714D48B277EED293FE5CFEAF6CA3EE99D9D0D318D5C8C70E1BFC514FB133660B2F8D99B792E66C77B3EE00E117785639A25F098A7C727A7B582C0C329CEB3E2D8F11461095D859EB8673BC8C5232F28B29F512467C60C28602B41A58F0E37C4C1AF17E67FD359E769FC8AFD2B6D3E326EE22FC4FD39818EA728C1C6AF72A6EF38053D1D4AC80A467F7D17B559DD457EF39FAFD9D423E32102733A378E6B82DE64FBC58AAD5EDC64530770B3711DD7FBB536A9182A47FE8B8F5EFF5A85DBA4E0691058ADA8691856A570691090509C34084957803408542832522A49EDF0DBBCA668E9D251EA89866D87AA666810A2A22E682CBC5144A8ABFBD9044B5BF3E3C04F9AD6FCF4B47F650DD026AC69EB7F5CD21FAC5EFDD3FD56C967EED1AD50BC857771C3A4726EAD9E18944ABD6F57432AB21876C54885143DE0462D9618E671BEB32284D13C21458DC168D8FBD4FBAD17161C4A2D41F906DB6F09C12EAB061ABE00FFA18A050E20BD5591AEB7FF92805DEB9A2EB87FE079D5FD12FF0F4CD9F835BFFFF4FE5D2B9B2EDE7FE0CAD62B89FFC0746D5FF7E79E35ADF315BAF7947C39BB50F3914EF551A02DE53EFB8202CFFF65004A90799459A5B43AC7B3293FBD856039444F549F5C5A272C198E44571AD14CB6DF5AF985DFB8583EA699AC2625BB89363FFF1B69F331CDB43589CEFB281650A61AAB0A385ACEB1A67CC7F7541C20ACA4A516A5CD676DCCB8784FB500A30845B01E4DB2C0FB49FD1F4524639A4E8F547FF9BB3FDC9D95BFFB0BF777ECAE4B08F6578009B6855BB318734356417E79D738CA87D4223477982207AED4CB88BA2B6453E86601E8F44F3DA4413DF61964899D1BF290D030A1B064EC2F3D21E0C59C8026FA693D83C8F3F42164BFE23196006CBA2C70FF407E4C5CCF29F89E2B62421A08E65DF0702FDB4BCAC2BEEBB702E93E201D81B8F80AA7E809FBA10760F10359A017BC096FA07EB7788DECB73202A80369DF0851ECD32B17AD23E4C71CA39C0F3F41871DFFF5FBFF03C69C1944FE5A0000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'07fa4a22-e398-4986-a33c-4ea7c775d427', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'41103821-87ae-4ad4-a155-663aec6a5411', N'Nautique')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41481115-31f6-4b57-bcc5-b53b81656fd1', N'07fa4a22-e398-4986-a33c-4ea7c775d427')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd4566986-2e61-41e1-9925-f0a61f99b8d4', N'07fa4a22-e398-4986-a33c-4ea7c775d427')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'41481115-31f6-4b57-bcc5-b53b81656fd1', N'41103821-87ae-4ad4-a155-663aec6a5411')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd4566986-2e61-41e1-9925-f0a61f99b8d4', N'41103821-87ae-4ad4-a155-663aec6a5411')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Company], [City], [State], [ReasonForContact], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3db74b0f-6ed2-4f04-9a07-96ef343fd524', N'Generic', N'User', N'Interactive Tech', N'Overland Park', N'KS', N'LEARN', N'mattmartiny12@gmail.com', 1, N'AMw1M9kcXvUz6SoJzGzpTKYOL7AVcNoCuvNPZE4IXIw57CBGqndEoGTUEYG7pBuJAw==', N'a08c5088-c2a7-4707-845a-a77cbc7be198', N'913 438 0277', 0, 0, NULL, 1, 0, N'mattmartiny12@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Company], [City], [State], [ReasonForContact], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'41481115-31f6-4b57-bcc5-b53b81656fd1', N'Matt', N'Martiny', N'Interactive Tech', N'Overland Park', N'KS', N'I want to LEARN', N'mattmartiny@yahoo.com', 1, N'ALoXuyRXhmX4bTuWy/kzQc+3dTKwNV2WyUyjnJQLvv6LHbqToCQCbbRmXkyNzeXVZQ==', N'd210b3fd-3cd0-43e6-91b6-d58eb638044e', N'913 432 1548', 0, 0, NULL, 1, 0, N'mattmartiny@yahoo.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Company], [City], [State], [ReasonForContact], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b19f7ab5-eeeb-4a3e-839e-3a17ae622673', N'Test', N'User', N'Interactive Tech', N'Junction City', N'Kansas', N'Stuff', N'interactive.mail@gmail.com', 0, N'AEUzltYcznZjRAojmtHh0uVYc9Z98kE8pq+v7szWm3nLMlzdt9x5Sqmbs8JjYdoJXA==', N'c96c0bc9-f226-4c04-9253-6fe4b423c710', N'9132825685', 0, 0, NULL, 1, 0, N'interactive.mail@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Company], [City], [State], [ReasonForContact], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b824c031-1d1b-4c7b-81d3-3d876ab7db38', N'John', N'Doe', N'Acme Textile corporation', N'Kansas City', N'MO', N'I''m interested in what interactive technologies has to offer. ', N'nsacommish@gmail.com', 1, N'ALOhWOPPYpuBRkf5PB5sCBUBqYvSin1EtodTvrnXul+kOaKaNZ4s6yv2T3XXQo8AUw==', N'23ddd3fc-8fff-4972-8907-8f9736aa56f9', N'(913) 867-5309', 0, 0, NULL, 1, 0, N'nsacommish@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [Company], [City], [State], [ReasonForContact], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd4566986-2e61-41e1-9925-f0a61f99b8d4', N'Super', N'Admin', N'Interactive Technology', N'Olathe', N'KS', NULL, N'sales@ideasthatfloat.com', 1, N'AK4bbM8D+ByK/FeCo7Izmt4A/jPo36En52KUKMnevnD8jDnXJRCLDMrU7YjFsTjpzQ==', N'a8d6f706-3c12-43f0-942a-03d90c99ebc4', N'888 888 8888', 0, 0, NULL, 1, 0, N'sales@ideasthatfloat.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Remotes/Transmitters')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Receivers')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (1, N'[No Image]', N'DO NOT DELETE', NULL, NULL)
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (11, N'Nautique', N'Nautique image 300x300', N'Nautique', N'logo.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (12, N'Interactive Technology', N'ITI_Logo', N'Interactive Technologies Inc.', N'iti_logo.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (13, N'untitled', N'an untitled image', N'untitled image', N'Untitled.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (14, N'boat and dock', N'boat and dock', N'boat and dock', N'marine.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (15, N'Spa', N'spa', N'spa', N'spa.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (16, N'trucking', N'trucking', N'trucking', N'trucking.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (17, N'racing', N'racing', N'F1 Race Car', N'racing.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (18, N'Medical', N'Medical', N'Medical', N'medical.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (19, N'agriculture', N'agriculture', N'agriculture', N'agriculture.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (20, N'Specialty', N'Special', N'specialty vehicles ', N'special_vehicles.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (21, N'Three Button Remote', N'three button remote', N'three button remote', N'remote1.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (22, N'777', N'777', N'777', N'727.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (23, N'four button', N'four button', N'four button', N'remote8.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (24, N'Five Button Remote', N'Five Button Remote', N'Five Button Remote', N'remote2.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (25, N'Eight button remote', N'Eight Button Remote', N'Eight Button Remote', N'remote10.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (26, N'Hub Remote', N'Hub Remote', N'Hub Remote', N'remote4.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (28, N'18 Button', N'18 Button', N'18 Button', N'18button.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (29, N'LBC', N'LBC', N'LBC', N'lbc.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (30, N'727', N'727', N'727', N'reciever3.jpg')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (46, N'ButtonsModule1', N'ButtonsModule1', N'ButtonsModule1', N'3button1.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (47, N'ButtonsModule2', N'ButtonsModule2', N'ButtonsModule2', N'3button2.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (48, N'ButtonsModule3', N'ButtonsModule3', N'ButtonsModule3', N'3button3.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (49, N'4Butt1', N'4Butt1', N'4Butt1', N'4butt1.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (50, N'4Butt2', N'4Butt2', N'4Butt2', N'4butt2.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (51, N'4Butt3', N'4Butt3', N'4Butt3', N'4butt3.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (52, N'18-1', N'18-1', N'18-1', N'18-1.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (53, N'18-2', N'18-2', N'18-2', N'18-2.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (54, N'Hub1', N'Hub1', N'Hub1', N'Hub1.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (55, N'Hub2', N'Hub2', N'Hub2', N'Hub2.png')
INSERT [dbo].[Images] ([ImageID], [ImageName], [Description], [ImageAlt], [ImageSrc]) VALUES (56, N'Hub3', N'Hub3', N'Hub3', N'hub7.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[MembersPages] ON 

INSERT [dbo].[MembersPages] ([PageID], [RoleId], [DateCreated], [PageTitle], [DisplayDate], [ImageID], [BodyText]) VALUES (1, N'07fa4a22-e398-4986-a33c-4ea7c775d427', CAST(N'2018-12-19T09:32:12.460' AS DateTime), N'Admin', 1, 1, N'this is the dummy Admin page')
INSERT [dbo].[MembersPages] ([PageID], [RoleId], [DateCreated], [PageTitle], [DisplayDate], [ImageID], [BodyText]) VALUES (9, N'07fa4a22-e398-4986-a33c-4ea7c775d427', CAST(N'2019-01-09T14:41:20.570' AS DateTime), N'Admin Page 2', 0, 15, N'This is the text for the second admin page.')
INSERT [dbo].[MembersPages] ([PageID], [RoleId], [DateCreated], [PageTitle], [DisplayDate], [ImageID], [BodyText]) VALUES (1008, N'41103821-87ae-4ad4-a155-663aec6a5411', CAST(N'2019-01-04T15:50:42.580' AS DateTime), N'Nautique Page', 0, 11, N'This is for Nautique')
SET IDENTITY_INSERT [dbo].[MembersPages] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ArticleID], [ArticleHeaderText], [ArticleDate], [DisplayDate], [ArticleText], [ArticleOrder]) VALUES (1, N'Welcome', CAST(N'2018-12-19T00:00:00.000' AS DateTime), 1, N'Interactive Technologies Welcomes you!', 0)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (2, 2, N'Three Button Remote', N'Interactive Technologies three button remote will operate up to eight functions.

Ideal for both indoor and outdoor applications this remote is waterproof and will float.

The receiver module may be customized to allow for momentary or latched control functions.  On/Off and delayed activation protocols can be written into firmware to prevent false triggering. Latched Circuits may also be timed off after a desired length of time. ', 21, 46, 47, 48, 1, 0, NULL, N'RF frequency - 315 MHz, 433.92MHz

Functions - 1 - 3

Environmental conditioning - IP 67, Floats, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 1 x 3v battery - approximate life, 3 years

Dimensions - 71 x 42 x 12mm (without holding clip) 71 x 42 x 18mm

Operating range - 150FT - extended range antenna available with receiver

Receiver - Programmable to all of our receivers')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (3, 3, N'777', N'RF frequency  - 315 MHz, 433.92MHz

Outputs -  1 - 4

Output functions - Momentary, Latching, and Timed

Environmental Conditioning - IP 67, UV Resistant

Code - Digital Pulse Code

Code combinations - 4.294.967.295

Modulation type - Please contact us

Antenna - External

Operating temperature - 0-70 degrees Celsius

Power supply - 12V / 24V DC

Dimensions - 160 x 80 x 57mm

Accepted transmitters - Eight
', 22, NULL, NULL, NULL, 1, 2, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (4, 2, N'Four Button Remote', N'Keyfob Remote

The hub remote offers easy wireless control, available to be customized for you or your companies specific needs.  Customize the button graphics, colors, ad labels to make it fit for you. Control lifts, swim platforms, cables and more with extreme range. ', 23, 49, 50, 51, 1, 2, NULL, N'RF frequency - 315 MHz, 433.92MHz

Functions - 1 - 4

Environmental conditioning - IP 67, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 1 x 12v battery - approximate life, 3 years

Dimensions - 64 x 49 x 10mm

Operating range - 150ft, 1500ft with an extended range antenna available 

Receiver -with receiver. Programmable to all of our receivers
')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (5, 2, N'Five Button Remote', N'The interactive Technologies five button remote will operate up to eight functions.

Ideal for both indoor and outdoor applications, this remote is waterproof and will float.

The receiver module may be customized to allow for momentary or latched control functions. On/Off and delayed activation protocols can be written into firmware to prevent false triggering. Latched circuits may also be timed off after a desired length of time.', 24, 46, 47, 48, 1, 3, NULL, N'RF frequency - 315 MHz, 433.92MHz

Functions - 1 - 5

Environmental conditioning - IP 67, Floats, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 1 x 3v battery - approximate life, 3 years

Dimensions - 71 x 42 x 12mm (without holding clip) 71 x 42 x 18mm

Operating range - 150FT - extended range antenna available with receiver

Receiver - Programmable to all of our receivers')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (6, 2, N'Eight Button Remote', N'Interactive Technologies Eight Button Remote will operate up to eight functions.

Ideal for both indoor and outdoor applications, this remoter is waterproof and will float.  

The receiver module may be customized to allow for momentary or latched control functions.  On/Off and delayed activation protocols can be written into firmware to prevent false triggering. Latched circuits may also be timed off after a desired length of time. ', 25, 46, 47, 48, 1, 4, NULL, N'RF frequency - 315 MHz, 433.92MHz

Functions - 1 - 8

Environmental conditioning - IP 67, Floats, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 1 x 3v battery - approximate life, 3 years

Dimensions - 71 x 42 x 12mm (without holding clip) 71 x 42 x 18mm

Operating range - 150FT - extended range antenna available with receiver

Receiver - Programmable to all of our receivers')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (7, 2, N'Hub Remote', N'The hub remote offers easy control over the most used aspects around your boat. Control stereo functions and speed control and your fingertips. Whether you mount the remote in a standard gauge housing or to fit any marine steering wheel, the hub remote is a necessity for any boat.  ', 26, 54, 55, 56, 1, 5, NULL, N'RF frequency - 315 MHz

Functions - 1 - 8, Customizable overlay available

Environmental conditioning - IP 65, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 1 x 3v battery - approximate life, 3 years

Dimensions - 58mm diameter - Marine steering hub insert

Operating range - N/A if mounted in wheel or dash

Receiver - Programmable to all of our receivers')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (8, 2, N'18 Button Remote', N'The 18 button remote offers a unique design that is both customizable in function and graphically to match the look and feel of your company. Start from a blank canvas and add up to 18 button functions, custom artwork, and end with a complete design fulfilling your RF remote needs.', 28, 52, 53, 1, 1, 6, NULL, N'RF frequency - 315 MHz, 433.92MHz

Functions - 1 - 18, Customized Overlay Available

Environmental conditioning - IP 67, Floats, UV Resistant

Code - Digital pulse code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - internal

Operating temperature 0-70 degrees Celsius

Power supply - 2 x 3v battery - approximate life, 3 years

Dimensions - 115 x 55 x 9mm

Operating range - 150FT - extended range antenna available with receiver

Receiver - Programmable to all of our receivers')
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (9, 3, N'LBC', N'Technical Specifications

RF frequency - 315 MHz, 433.92MHz

Outputs - 2

Output functions - Momentary, Latching, and Timed

Environmental Conditioning - IP 67

Code - Digital Pulse Code

Code combinations - 4.294.967.295

Modulation type - Please Contact us

Antenna - External 

Operating temperature - 0-70 degrees Celsius

Power supply - 12V / 24V DC

Dimensions - 100 x 12 x 12mm

Accepted transmitter - Eight
', 29, NULL, NULL, NULL, 1, 2, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [CategoryID], [ProductName], [ProductDescription], [ImageID], [Image2ID], [Image3ID], [Image4ID], [DisplayProduct], [ProductOrder], [Download], [Specs]) VALUES (10, 3, N'727', N'Technical Specifications

RF frequency - 315 MHz, 433.92MHz

Outputs - 1-4

Output functions - Momentary, Latching, Timed, Switch, and Motor Reverse

Environmental Conditioning - IP 65 - Conformal Coating 

Code - Digital Pulse Code

Code combinations - 4.294.967.295

Modulation type - Please Contact Us

Antenna - External - extended range antenna available

Operating temperature - 0 - 70 degrees Celsius

Power supply - 12V DC

Dimensions - 122 x 75 x 28mm

Accepted transmitters - Eight
', 30, NULL, NULL, NULL, 1, 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Services] ([ServicePageID], [Pdf], [ImageID], [BodyText]) VALUES (1, NULL, 1, N'We offer numerous services.  


Please enjoy our site and look through everything.  Thank you. ')
SET IDENTITY_INSERT [dbo].[Slideshow] ON 

INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (1, 14, N'~/Applications/boatinfo', 1, 0)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (2, 15, N'~/Applications/spainfo', 1, 1)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (3, 16, N'~/Applications/truckinfo', 1, 2)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (4, 17, N'~/Applications/raceinfo', 1, 3)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (5, 18, N'~/Applications/medinfo', 1, 4)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (6, 19, N'~/Applications/agginfo', 1, 5)
INSERT [dbo].[Slideshow] ([SlideID], [ImageID], [SlideLink], [Display], [SlideOrder]) VALUES (7, 20, N'~/Applications/sweepinfo', 1, 6)
SET IDENTITY_INSERT [dbo].[Slideshow] OFF
SET IDENTITY_INSERT [dbo].[WhatsNew] ON 

INSERT [dbo].[WhatsNew] ([ID], [HeaderText], [Date], [DisplayDate], [ImageID], [BodyText], [Display]) VALUES (0, N'This is a dummy what''s new page', CAST(N'2019-01-09' AS Date), 1, 1, N'Something that has to do with a "What''s New" page.', 1)
INSERT [dbo].[WhatsNew] ([ID], [HeaderText], [Date], [DisplayDate], [ImageID], [BodyText], [Display]) VALUES (1, N'This is a larger text Dummy Page', CAST(N'2019-01-07' AS Date), 1, 11, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida euismod erat bibendum sollicitudin. Nullam laoreet justo turpis, vel sollicitudin quam feugiat vitae. Phasellus vel enim accumsan, rutrum ipsum et, convallis sem. Aenean quis tortor rhoncus, fermentum ipsum vitae, sollicitudin dui. Quisque urna lorem, facilisis sit amet sem vitae, tempor tincidunt nibh. Sed convallis eros lacus, eget dignissim dui convallis vel. Cras volutpat dolor sit amet justo ultricies, ultrices dapibus lorem bibendum. Suspendisse pharetra ex nibh, semper molestie sem feugiat et.

Nunc feugiat placerat orci, ac fermentum est tempor id. Mauris lobortis elit et eros mollis, id euismod lectus laoreet. Phasellus hendrerit libero at diam accumsan ultricies. Nulla nec malesuada nisi, ac pretium libero. Aenean consequat sapien at massa consectetur malesuada. Duis id quam at libero volutpat imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. In id lorem risus. Cras volutpat et nisi vel volutpat. Vivamus ut facilisis turpis. Cras in massa et augue condimentum ultrices.

Morbi nec risus a justo posuere mollis quis sed justo. Aliquam nibh ipsum, posuere ac erat vitae, imperdiet molestie nunc. Suspendisse iaculis euismod ullamcorper. Mauris elementum condimentum convallis. Nunc semper diam id mi consequat venenatis. Aliquam egestas sed ante et dapibus. Integer molestie finibus tincidunt. In facilisis rhoncus augue. Praesent massa orci, viverra luctus justo fermentum, vestibulum sodales turpis. Etiam metus nunc, venenatis blandit dui at, viverra laoreet est.

Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque tempus mauris in egestas rutrum. Quisque blandit vitae odio ut lobortis. Fusce auctor, justo ut malesuada suscipit, lacus nisl faucibus purus, non mollis libero sapien non leo. Morbi non pulvinar ligula. Pellentesque posuere malesuada magna quis efficitur. Praesent vitae erat odio. Curabitur bibendum, mi a lobortis sagittis, risus nulla pellentesque dolor, at hendrerit nulla enim sed mi. Nunc dui tellus, convallis in lacinia id, tempor sed ex. Aliquam in euismod lorem. Donec in pellentesque metus, et sagittis ipsum. Fusce efficitur quam sed nulla cursus malesuada. Quisque placerat tempor leo, hendrerit vehicula tortor fringilla sit amet. Donec id nisl sit amet magna fringilla semper sit amet ut nulla. Mauris cursus tincidunt magna eget dignissim.

Nunc consectetur magna convallis tincidunt pretium. Aliquam erat volutpat. Aenean efficitur facilisis dapibus. Vestibulum eleifend nisl et urna facilisis pretium. Vestibulum id sollicitudin arcu. Duis ut eros turpis. Nulla nulla tortor, dictum in consequat non, accumsan nec felis. Quisque varius dolor sed risus dignissim, sed feugiat turpis lacinia. Donec placerat elit ac nunc feugiat, quis pharetra sem consectetur. Ut ac pharetra sem, non bibendum lectus. In lacinia eget metus quis malesuada. Proin sed aliquam nunc, sit amet efficitur tellus.', 1)
INSERT [dbo].[WhatsNew] ([ID], [HeaderText], [Date], [DisplayDate], [ImageID], [BodyText], [Display]) VALUES (6, N'This is just a sample for a 3rd page ', CAST(N'2019-01-09' AS Date), 1, 13, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis consectetur odio, lacinia aliquet est efficitur in. Donec nec lorem odio. Morbi facilisis elementum ultricies. Integer interdum malesuada consectetur. Nunc accumsan eros sit amet vestibulum pharetra. Nunc ornare faucibus interdum. Aliquam sodales ipsum quis sapien viverra laoreet. Nunc dictum a urna nec luctus. Mauris iaculis tortor nulla, eu aliquam sapien dictum id. Vivamus gravida, velit fringilla porttitor sollicitudin, nisi ipsum commodo arcu, nec eleifend turpis augue ut ligula. Donec ut orci nunc.

Nunc scelerisque, enim nec accumsan auctor, nisl elit auctor est, a vulputate nisl dolor eget neque. Suspendisse leo lectus, eleifend et faucibus varius, scelerisque sit amet libero. Cras euismod non ex non tristique. Vivamus ut magna nec lacus sodales euismod. Fusce nulla ante, pretium at accumsan ac, sodales quis nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur urna purus, consectetur nec leo dignissim, porttitor dignissim ex. Aenean faucibus, dui sit amet viverra suscipit, risus nunc mattis leo, vitae tristique ipsum quam quis lorem. Nulla quis sem felis. Morbi vestibulum faucibus augue eget condimentum. Nullam cursus risus quis lorem molestie pretium. Nullam eu erat sit amet magna pellentesque consequat. Cras mattis justo ac dolor commodo elementum. Vestibulum non tempus diam. Mauris tincidunt mauris vel dictum interdum. Vestibulum gravida in risus viverra ultrices.', 1)
INSERT [dbo].[WhatsNew] ([ID], [HeaderText], [Date], [DisplayDate], [ImageID], [BodyText], [Display]) VALUES (7, N'Welcome to our site', CAST(N'2019-01-07' AS Date), 0, 12, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis consectetur odio, lacinia aliquet est efficitur in. Donec nec lorem odio. Morbi facilisis elementum ultricies. Integer interdum malesuada consectetur. Nunc accumsan eros sit amet vestibulum pharetra. Nunc ornare faucibus interdum. Aliquam sodales ipsum quis sapien viverra laoreet. Nunc dictum a urna nec luctus. Mauris iaculis tortor nulla, eu aliquam sapien dictum id. Vivamus gravida, velit fringilla porttitor sollicitudin, nisi ipsum commodo arcu, nec eleifend turpis augue ut ligula. Donec ut orci nunc.

Nunc scelerisque, enim nec accumsan auctor, nisl elit auctor est, a vulputate nisl dolor eget neque. Suspendisse leo lectus, eleifend et faucibus varius, scelerisque sit amet libero. Cras euismod non ex non tristique. Vivamus ut magna nec lacus sodales euismod. Fusce nulla ante, pretium at accumsan ac, sodales quis nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur urna purus, consectetur nec leo dignissim, porttitor dignissim ex. Aenean faucibus, dui sit amet viverra suscipit, risus nunc mattis leo, vitae tristique ipsum quam quis lorem. Nulla quis sem felis. Morbi vestibulum faucibus augue eget condimentum. Nullam cursus risus quis lorem molestie pretium. Nullam eu erat sit amet magna pellentesque consequat. Cras mattis justo ac dolor commodo elementum. Vestibulum non tempus diam. Mauris tincidunt mauris vel dictum interdum. Vestibulum gravida in risus viverra ultrices.', 1)
INSERT [dbo].[WhatsNew] ([ID], [HeaderText], [Date], [DisplayDate], [ImageID], [BodyText], [Display]) VALUES (8, N'this is to make sure our pagination works ', CAST(N'2019-01-09' AS Date), 0, 1, N'Our pagination does work, and this will be on the second page.', 1)
SET IDENTITY_INSERT [dbo].[WhatsNew] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_MembersPage_AspNetRoles]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_MembersPage_AspNetRoles] ON [dbo].[MembersPages]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_MembersPage_Images]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_MembersPage_Images] ON [dbo].[MembersPages]
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_ProductCategories_Category]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ProductCategories_Category] ON [dbo].[ProductCategories]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_ProductCategories_Products]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ProductCategories_Products] ON [dbo].[ProductCategories]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Products_Category]    Script Date: 1/10/2019 1:34:49 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Products_Category] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[MembersPages]  WITH CHECK ADD  CONSTRAINT [FK_MembersPage_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[MembersPages] CHECK CONSTRAINT [FK_MembersPage_AspNetRoles]
GO
ALTER TABLE [dbo].[MembersPages]  WITH CHECK ADD  CONSTRAINT [FK_MembersPage_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[MembersPages] CHECK CONSTRAINT [FK_MembersPage_Images]
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_Category]
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images1] FOREIGN KEY([Image2ID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images2] FOREIGN KEY([Image3ID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images2]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images3] FOREIGN KEY([Image4ID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images3]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Images]
GO
ALTER TABLE [dbo].[Slideshow]  WITH CHECK ADD  CONSTRAINT [FK_Slideshow_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[Slideshow] CHECK CONSTRAINT [FK_Slideshow_Images]
GO
ALTER TABLE [dbo].[WhatsNew]  WITH CHECK ADD  CONSTRAINT [FK_WhatsNew_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ImageID])
GO
ALTER TABLE [dbo].[WhatsNew] CHECK CONSTRAINT [FK_WhatsNew_Images]
GO
ALTER DATABASE [InteractiveTech] SET  READ_WRITE 
GO
