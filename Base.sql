USE [master]
GO
/****** Object:  Database [DestinyDatabase]    Script Date: 10/22/2021 10:38:10 PM ******/
CREATE DATABASE [DestinyDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DestinyDatabase', FILENAME = N'D:\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\DestinyDatabase.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DestinyDatabase_log', FILENAME = N'D:\SQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\DestinyDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DestinyDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DestinyDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DestinyDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DestinyDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DestinyDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DestinyDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DestinyDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DestinyDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DestinyDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DestinyDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DestinyDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DestinyDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DestinyDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DestinyDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DestinyDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DestinyDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DestinyDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DestinyDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DestinyDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DestinyDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DestinyDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DestinyDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DestinyDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DestinyDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DestinyDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DestinyDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [DestinyDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DestinyDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DestinyDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DestinyDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DestinyDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DestinyDatabase]
GO
/****** Object:  Table [dbo].[Detailers]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detailers](
	[TaxNumber] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Local] [nvarchar](50) NULL,
	[PhonNumber] [int] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Detailers] PRIMARY KEY CLUSTERED 
(
	[TaxNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Distributor]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributor](
	[TaxNumber] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Local] [nvarchar](50) NULL,
	[PhoneNumber] [int] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Distributor] PRIMARY KEY CLUSTERED 
(
	[TaxNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[ID] [int] NOT NULL,
	[TypeUser] [nchar](10) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionOfStaff]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionOfStaff](
	[ID] [int] NOT NULL,
	[IDUser] [int] NULL,
	[IDStaff] [int] NULL,
	[IDPermission] [int] NULL,
 CONSTRAINT [PK_PermissionOfStaff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product of detailers]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product of detailers](
	[ID] [int] NOT NULL,
	[TaxNumber] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Expdate] [date] NULL,
	[DateOfManufacture] [date] NULL,
	[LotNumber] [int] NULL,
	[Price] [money] NULL,
	[ImportPrice] [money] NULL,
 CONSTRAINT [PK_Product of detailers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductOfDistributes]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOfDistributes](
	[ID] [nchar](10) NOT NULL,
	[TaxNumber] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Expdate] [date] NULL,
	[Dateofmanufacture] [date] NULL,
	[LotNumber] [int] NULL,
	[Price] [money] NULL,
	[RecommendRetailPrice] [money] NULL,
 CONSTRAINT [PK_ProductOfDistributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ID] [int] NOT NULL,
	[IDDistributor] [int] NULL,
	[DateCreate] [date] NULL,
	[Detailers] [int] NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/22/2021 10:38:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[PhoneNumber] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TaxNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[PhoneNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Distributor] FOREIGN KEY([IDDistributor])
REFERENCES [dbo].[Distributor] ([TaxNumber])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Distributor]
GO
USE [master]
GO
ALTER DATABASE [DestinyDatabase] SET  READ_WRITE 
GO
