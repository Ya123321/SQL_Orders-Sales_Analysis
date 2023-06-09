USE [master]
GO
/****** Object:  Database [Orders_data]    Script Date: 13/03/2023 14:29:30 ******/
CREATE DATABASE [Orders_data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Orders_data', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Orders_data.mdf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Orders_data_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Orders_data_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Orders_data] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Orders_data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Orders_data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Orders_data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Orders_data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Orders_data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Orders_data] SET ARITHABORT OFF 
GO
ALTER DATABASE [Orders_data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Orders_data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Orders_data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Orders_data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Orders_data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Orders_data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Orders_data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Orders_data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Orders_data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Orders_data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Orders_data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Orders_data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Orders_data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Orders_data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Orders_data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Orders_data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Orders_data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Orders_data] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Orders_data] SET  MULTI_USER 
GO
ALTER DATABASE [Orders_data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Orders_data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Orders_data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Orders_data] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Orders_data] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Orders_data]
GO
/****** Object:  Table [dbo].[market$]    Script Date: 13/03/2023 14:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[market$](
	[Ord_id] [nvarchar](255) NULL,
	[Prod_id] [nvarchar](255) NULL,
	[Ship_id] [nvarchar](255) NULL,
	[Cust_id] [nvarchar](255) NULL,
	[Sales] [float] NULL,
	[Discount] [float] NULL,
	[Order_Quantity] [float] NULL,
	[Profit] [float] NULL,
	[Shipping_Cost] [float] NULL,
	[Product_Base_Margin] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders$]    Script Date: 13/03/2023 14:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders$](
	[Order_ID] [float] NULL,
	[Order_Date] [datetime] NULL,
	[Order_Priority] [nvarchar](255) NULL,
	[Ord_id] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[prod$]    Script Date: 13/03/2023 14:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prod$](
	[Product_Category] [nvarchar](255) NULL,
	[Product_Sub_Category] [nvarchar](255) NULL,
	[Prod_id] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[shipping$]    Script Date: 13/03/2023 14:29:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipping$](
	[Order_ID] [float] NULL,
	[Ship_Mode] [nvarchar](255) NULL,
	[Ship_Date] [datetime] NULL,
	[Ship_id] [nvarchar](255) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Orders_data] SET  READ_WRITE 
GO
