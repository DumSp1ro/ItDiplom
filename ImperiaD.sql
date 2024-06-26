USE [master]
GO
/****** Object:  Database [ImperiaD]    Script Date: 09.04.2024 21:27:02 ******/
CREATE DATABASE [ImperiaD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ImperiaD', FILENAME = N'K:\SSMS\MSSQL15.DOZO\MSSQL\DATA\ImperiaD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ImperiaD_log', FILENAME = N'K:\SSMS\MSSQL15.DOZO\MSSQL\DATA\ImperiaD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ImperiaD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ImperiaD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ImperiaD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ImperiaD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ImperiaD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ImperiaD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ImperiaD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ImperiaD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ImperiaD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ImperiaD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ImperiaD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ImperiaD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ImperiaD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ImperiaD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ImperiaD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ImperiaD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ImperiaD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ImperiaD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ImperiaD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ImperiaD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ImperiaD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ImperiaD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ImperiaD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ImperiaD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ImperiaD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ImperiaD] SET  MULTI_USER 
GO
ALTER DATABASE [ImperiaD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ImperiaD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ImperiaD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ImperiaD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ImperiaD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ImperiaD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ImperiaD] SET QUERY_STORE = OFF
GO
USE [ImperiaD]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NULL,
	[LoginDateTime] [datetime] NULL,
	[TypeVxod] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merch]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [text] NULL,
	[name] [nvarchar](50) NOT NULL,
	[size] [text] NOT NULL,
	[brend] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_merch] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[code] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NULL,
	[total_cost] [int] NULL,
	[delivery_days] [int] NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_RIO]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_RIO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_users] [int] NOT NULL,
	[id_status] [int] NOT NULL,
	[id_point] [int] NOT NULL,
	[order_date] [date] NOT NULL,
	[code] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[discount] [int] NOT NULL,
	[total_cost] [int] NOT NULL,
	[delivery_days] [int] NOT NULL,
 CONSTRAINT [PK_Orders_RIO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[point]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[point](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_point] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sostav]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sostav](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orders] [int] NOT NULL,
	[id_merch] [int] NOT NULL,
	[count] [int] NULL,
	[quantity] [int] NULL,
	[total_cost] [int] NULL,
	[discount] [int] NULL,
 CONSTRAINT [PK_sostav] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_user]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 09.04.2024 21:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[photo] [text] NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1, 3, CAST(N'2023-12-24T19:01:39.283' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2, 2, CAST(N'2023-12-24T19:02:29.773' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3, 1, CAST(N'2023-12-24T19:02:39.547' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4, 3, CAST(N'2023-12-24T19:07:03.723' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5, 3, CAST(N'2023-12-24T19:07:08.097' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6, 1, CAST(N'2023-12-24T19:07:29.933' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (7, 3, CAST(N'2023-12-24T19:08:43.363' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (8, 3, CAST(N'2023-12-24T19:41:34.910' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (9, 1, CAST(N'2023-12-24T19:41:47.380' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (10, 1, CAST(N'2023-12-24T19:43:24.773' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (11, 1, CAST(N'2023-12-24T19:51:00.160' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (12, 1, CAST(N'2023-12-24T19:59:36.930' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (13, 1, CAST(N'2023-12-24T20:00:41.033' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (14, 3, CAST(N'2023-12-24T20:02:11.183' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (15, 2, CAST(N'2023-12-24T20:02:32.617' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (16, 3, CAST(N'2024-02-02T19:08:57.140' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (17, 1, CAST(N'2024-02-02T19:13:52.940' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (18, 3, CAST(N'2024-02-02T19:15:47.460' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (19, NULL, CAST(N'2024-02-02T19:16:16.343' AS DateTime), N'Не успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (20, 3, CAST(N'2024-02-02T19:16:18.417' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (21, 1, CAST(N'2024-02-02T19:20:49.593' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (22, 1, CAST(N'2024-02-02T19:27:48.620' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (23, 1, CAST(N'2024-02-02T21:53:39.240' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (24, 1, CAST(N'2024-02-02T21:55:12.613' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (25, 1, CAST(N'2024-02-02T21:56:04.503' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (26, 3, CAST(N'2024-02-02T21:57:18.990' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (27, 1, CAST(N'2024-02-02T21:59:45.717' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (28, 3, CAST(N'2024-02-02T22:00:30.020' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (29, 1, CAST(N'2024-02-02T22:00:48.220' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (30, 1, CAST(N'2024-02-02T22:35:45.880' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (31, 1, CAST(N'2024-02-02T22:37:24.827' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (32, 1, CAST(N'2024-02-02T22:39:29.923' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (33, 1, CAST(N'2024-02-02T22:43:51.443' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (34, 1, CAST(N'2024-02-02T22:45:27.213' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (35, 1, CAST(N'2024-02-02T22:53:16.987' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (36, 1, CAST(N'2024-02-02T22:55:55.660' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (37, 1, CAST(N'2024-02-02T22:57:32.253' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (38, 1, CAST(N'2024-02-02T22:59:38.220' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (39, 1, CAST(N'2024-02-02T23:01:36.820' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (40, 1, CAST(N'2024-02-02T23:04:19.220' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (41, 1, CAST(N'2024-02-02T23:07:24.380' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (42, 1, CAST(N'2024-02-02T23:08:53.380' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (43, 4, CAST(N'2024-02-02T23:19:28.927' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1043, 1, CAST(N'2024-02-05T15:15:19.023' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1044, 1, CAST(N'2024-02-05T15:19:56.960' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1045, 1, CAST(N'2024-02-05T15:26:27.423' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1046, 1, CAST(N'2024-02-05T15:28:03.747' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1047, 1, CAST(N'2024-02-05T15:29:42.233' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1048, 1, CAST(N'2024-02-05T15:37:15.097' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1049, 1, CAST(N'2024-02-05T15:51:14.933' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1050, 1, CAST(N'2024-02-05T15:51:39.843' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1051, 1, CAST(N'2024-02-05T16:05:23.903' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1052, 1, CAST(N'2024-02-05T16:15:07.273' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1053, 1, CAST(N'2024-02-05T16:22:51.703' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1054, 1, CAST(N'2024-02-05T16:24:15.283' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1055, 1, CAST(N'2024-02-05T16:28:47.480' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1056, 1, CAST(N'2024-02-05T16:32:44.637' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1057, 1, CAST(N'2024-02-05T16:34:47.610' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1058, 1, CAST(N'2024-02-05T16:39:29.387' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1059, 3, CAST(N'2024-02-05T16:40:10.373' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1060, 1, CAST(N'2024-02-05T16:42:23.450' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1061, 1, CAST(N'2024-02-05T16:46:24.283' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1062, NULL, CAST(N'2024-02-05T16:48:25.643' AS DateTime), N'Не успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1063, NULL, CAST(N'2024-02-05T16:48:26.530' AS DateTime), N'Не успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1064, NULL, CAST(N'2024-02-05T16:48:27.593' AS DateTime), N'Не успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1065, 1, CAST(N'2024-02-05T16:48:30.547' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1066, 1, CAST(N'2024-02-05T17:04:05.857' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1067, 3, CAST(N'2024-02-05T17:05:25.540' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1068, 1, CAST(N'2024-02-05T17:05:39.960' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1069, 1, CAST(N'2024-02-05T17:10:23.597' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1070, 1, CAST(N'2024-02-05T17:12:01.767' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1071, 1, CAST(N'2024-02-05T17:14:46.950' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1072, 1, CAST(N'2024-02-05T17:16:21.130' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1073, 3, CAST(N'2024-02-05T17:47:36.653' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1074, 1, CAST(N'2024-02-05T17:47:48.157' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1075, 3, CAST(N'2024-02-05T17:47:56.610' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1076, 1, CAST(N'2024-02-05T17:50:22.923' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1077, 1, CAST(N'2024-02-05T17:53:19.630' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1078, 3, CAST(N'2024-02-05T18:05:25.783' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1079, 3, CAST(N'2024-02-05T18:07:06.650' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1080, 3, CAST(N'2024-02-05T18:07:59.887' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1081, 3, CAST(N'2024-02-05T18:10:06.410' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1082, 3, CAST(N'2024-02-05T18:13:51.370' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1083, 3, CAST(N'2024-02-05T19:41:55.240' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1084, 3, CAST(N'2024-02-05T19:43:14.990' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1085, 3, CAST(N'2024-02-05T20:14:22.930' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1086, 3, CAST(N'2024-02-05T20:17:58.637' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1087, 3, CAST(N'2024-02-05T20:24:15.363' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1088, 3, CAST(N'2024-02-05T20:25:17.557' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1089, 3, CAST(N'2024-02-05T20:26:25.420' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1090, 3, CAST(N'2024-02-05T20:34:15.660' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1091, 3, CAST(N'2024-02-05T20:40:21.937' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1092, 3, CAST(N'2024-02-05T20:41:16.487' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1093, 3, CAST(N'2024-02-05T20:57:05.920' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1094, 3, CAST(N'2024-02-05T21:28:59.187' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1095, 3, CAST(N'2024-02-05T21:32:26.463' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1096, 3, CAST(N'2024-02-05T21:33:42.630' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1097, 3, CAST(N'2024-02-05T21:40:51.287' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1098, 3, CAST(N'2024-02-05T21:41:45.967' AS DateTime), N'Успешно')
GO
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1099, 3, CAST(N'2024-02-05T21:45:16.010' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1100, 1, CAST(N'2024-02-05T21:45:34.247' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1101, 3, CAST(N'2024-02-05T22:02:11.373' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (1102, 3, CAST(N'2024-02-05T22:05:26.947' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2043, 3, CAST(N'2024-02-06T22:09:11.310' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2044, 3, CAST(N'2024-02-06T22:25:56.240' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2045, 1, CAST(N'2024-02-06T22:37:04.870' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2046, 3, CAST(N'2024-02-06T22:38:25.433' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (2047, 1, CAST(N'2024-02-06T22:38:36.360' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3043, 3, CAST(N'2024-02-07T23:08:25.057' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3044, 3, CAST(N'2024-02-07T23:15:49.617' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3045, 3, CAST(N'2024-02-07T23:17:26.103' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3046, 3, CAST(N'2024-02-07T23:19:43.663' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3047, 3, CAST(N'2024-02-07T23:20:28.463' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3048, 3, CAST(N'2024-02-07T23:25:08.943' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3049, 3, CAST(N'2024-02-07T23:33:58.650' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3050, 3, CAST(N'2024-02-07T23:35:05.403' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3051, 3, CAST(N'2024-02-07T23:35:24.520' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3052, 3, CAST(N'2024-02-07T23:48:50.713' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3053, 1, CAST(N'2024-02-07T23:49:15.553' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3054, 1, CAST(N'2024-02-07T23:49:46.173' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3055, 1, CAST(N'2024-02-07T23:51:35.907' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3056, 1, CAST(N'2024-02-07T23:54:28.987' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3057, 1, CAST(N'2024-02-08T00:06:27.363' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3058, 3, CAST(N'2024-02-08T22:21:40.903' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (3059, 1, CAST(N'2024-02-08T22:22:03.047' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4043, 3, CAST(N'2024-02-09T18:27:18.260' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4044, 3, CAST(N'2024-02-09T18:29:34.530' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4045, 1, CAST(N'2024-02-09T18:30:48.303' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4046, 1, CAST(N'2024-02-09T18:34:14.277' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4047, 3, CAST(N'2024-02-09T18:51:05.397' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4048, 3, CAST(N'2024-02-09T18:52:19.867' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4049, 3, CAST(N'2024-02-09T18:59:46.100' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4050, 3, CAST(N'2024-02-09T19:07:40.253' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4051, 1, CAST(N'2024-02-09T19:28:27.867' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4052, 1, CAST(N'2024-02-09T19:31:50.040' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4053, 1, CAST(N'2024-02-09T19:44:29.370' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4054, 3, CAST(N'2024-02-09T20:52:50.373' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4055, 1, CAST(N'2024-02-09T21:05:01.943' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4056, 1, CAST(N'2024-02-09T21:18:09.903' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4057, 1, CAST(N'2024-02-09T21:21:24.030' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4058, 1, CAST(N'2024-02-09T21:22:19.367' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4059, 1004, CAST(N'2024-02-09T21:22:50.913' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4060, 1, CAST(N'2024-02-09T21:23:04.530' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (4061, 1, CAST(N'2024-02-09T21:24:14.277' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5043, 1, CAST(N'2024-03-26T16:31:22.517' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5044, 1, CAST(N'2024-03-26T16:42:07.070' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5045, 2, CAST(N'2024-03-26T16:42:51.380' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5046, 1, CAST(N'2024-03-26T16:42:58.973' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5047, 1, CAST(N'2024-03-26T16:53:19.253' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5048, 3, CAST(N'2024-03-26T16:54:17.613' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5049, 1, CAST(N'2024-03-26T16:55:34.507' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5050, 1, CAST(N'2024-03-26T17:01:34.677' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5051, 1, CAST(N'2024-03-26T17:02:41.733' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5052, 1, CAST(N'2024-03-26T17:03:00.517' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5053, 1, CAST(N'2024-03-26T17:03:04.253' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5054, 1, CAST(N'2024-03-26T17:03:25.207' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5055, 3, CAST(N'2024-03-26T17:14:38.030' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5056, 1, CAST(N'2024-03-26T17:15:06.327' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5057, 1, CAST(N'2024-03-26T17:23:02.077' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5058, 1, CAST(N'2024-03-26T17:23:33.557' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5059, 1, CAST(N'2024-03-26T17:30:50.673' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5060, 1, CAST(N'2024-03-26T17:34:20.813' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5061, 1, CAST(N'2024-03-26T17:43:02.583' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5062, 1, CAST(N'2024-03-26T17:43:20.407' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5063, 3, CAST(N'2024-03-26T17:43:30.510' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5064, 1, CAST(N'2024-03-26T17:47:08.130' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5065, 1, CAST(N'2024-03-26T17:52:48.607' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5066, 3, CAST(N'2024-03-26T17:52:58.577' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5067, 1, CAST(N'2024-03-26T17:53:07.230' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5068, 1, CAST(N'2024-03-26T17:56:11.563' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5069, 1, CAST(N'2024-03-26T18:00:08.520' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5070, 1, CAST(N'2024-03-26T18:00:37.760' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5071, 1, CAST(N'2024-03-26T18:40:44.760' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5072, 1, CAST(N'2024-03-26T18:42:27.657' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5073, 3, CAST(N'2024-03-26T18:44:42.823' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5074, 1, CAST(N'2024-03-26T18:44:56.007' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5075, 1, CAST(N'2024-03-26T18:49:18.673' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5076, 1, CAST(N'2024-03-26T18:49:39.447' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5077, 1, CAST(N'2024-03-26T18:52:34.763' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5078, 1, CAST(N'2024-03-26T18:55:16.650' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5079, 1, CAST(N'2024-03-26T18:56:09.890' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5080, 1, CAST(N'2024-03-26T18:59:34.857' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5081, 1, CAST(N'2024-03-26T19:04:03.983' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5082, 3, CAST(N'2024-03-26T19:07:03.387' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5083, 1, CAST(N'2024-03-26T19:07:19.553' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5084, 1, CAST(N'2024-03-26T19:12:47.613' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (5085, 3, CAST(N'2024-03-27T21:58:46.357' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6049, 3, CAST(N'2024-04-06T16:54:45.747' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6050, 1, CAST(N'2024-04-06T16:55:58.030' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6051, 1, CAST(N'2024-04-06T17:01:00.710' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6052, 1, CAST(N'2024-04-06T17:04:54.893' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6053, 1, CAST(N'2024-04-06T17:14:54.830' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6054, 1, CAST(N'2024-04-06T17:15:37.200' AS DateTime), N'Успешно')
INSERT [dbo].[LoginHistory] ([id], [id_users], [LoginDateTime], [TypeVxod]) VALUES (6055, 1, CAST(N'2024-04-07T00:51:52.833' AS DateTime), N'Успешно')
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[merch] ON 

INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (1, N'/photo/kurtkaDiesel.jpeg', N'Куртка ', N'150', N'DIESEL', 16880, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (2, N'/photo/tolstDiesel.png', N'Толстовка', N'160', N'DIESEL', 16100, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (3, N'/photo/kurtkaBarKids.jpeg', N'Куртка', N'152', N'BARROW KIDS', 32290, 10)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (4, N'/photo/dzinsPinko.jpg', N'Джинсы', N'170', N'PINKO', 16640, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (5, N'/photo/rukzDiesel.png', N'Рюкзак', N'uni', N'DIESEL', 16830, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (6, N'/photo/tolstBarrow.png', N'Толстовка', N'160', N'BARROW KIDS', 19560, NULL)
INSERT [dbo].[merch] ([id], [photo], [name], [size], [brend], [price], [discount]) VALUES (7, N'C:\Users\vipev\Downloads\ab6434ca-a3c1-4483-b3ff-6edf2b8cec18.jpeg', N'Тест', N'3', N'1', 33, NULL)
SET IDENTITY_INSERT [dbo].[merch] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (1, 3, 3, 1, CAST(N'2023-12-24' AS Date), 666, 32290, 10, 32280, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (2, 3, 3, 8, CAST(N'2024-02-02' AS Date), 453, 16770, 0, 16770, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (3, 3, 2, 2, CAST(N'2024-02-02' AS Date), 565, 32290, 10, 32280, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (4, 4, 3, 8, CAST(N'2024-02-05' AS Date), 986, 16880, 0, 16880, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (1004, 1004, 3, 4, CAST(N'2024-02-09' AS Date), 990, 16100, 0, 16100, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (2004, 3, 3, 3, CAST(N'2024-03-26' AS Date), 666, 16880, 0, 16880, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (2005, 3, 3, 1, CAST(N'2024-03-26' AS Date), 926, 16880, 0, 16880, 6)
INSERT [dbo].[orders] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (2006, 3, 3, 6, CAST(N'2024-03-26' AS Date), 972, 16100, 0, 16100, 6)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_RIO] ON 

INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (17, 3, 1, 2, CAST(N'2024-02-02' AS Date), 565, 32290, 10, 32280, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (18, 3, 1, 1, CAST(N'2024-03-26' AS Date), 926, 16880, 0, 16880, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (19, 3, 1, 1, CAST(N'2023-12-24' AS Date), 666, 32290, 10, 32280, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (20, 3, 1, 3, CAST(N'2024-03-26' AS Date), 666, 16880, 0, 16880, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (21, 3, 1, 1, CAST(N'2023-12-24' AS Date), 666, 32290, 10, 32280, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (22, 3, 1, 1, CAST(N'2024-03-26' AS Date), 926, 16880, 0, 16880, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (23, 3, 1, 1, CAST(N'2023-12-24' AS Date), 666, 32290, 10, 32280, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (24, 3, 1, 1, CAST(N'2023-12-24' AS Date), 666, 32290, 10, 32280, 6)
INSERT [dbo].[Orders_RIO] ([id], [id_users], [id_status], [id_point], [order_date], [code], [cost], [discount], [total_cost], [delivery_days]) VALUES (25, 3, 1, 6, CAST(N'2024-03-26' AS Date), 972, 16100, 0, 16100, 6)
SET IDENTITY_INSERT [dbo].[Orders_RIO] OFF
GO
SET IDENTITY_INSERT [dbo].[point] ON 

INSERT [dbo].[point] ([id], [name]) VALUES (1, N'ЦЕНТРАЛЬНЫЙ ДЕТСКИЙ МАГАЗИН')
INSERT [dbo].[point] ([id], [name]) VALUES (2, N'ТРЦ ЕВРОПЕЙСКИЙ')
INSERT [dbo].[point] ([id], [name]) VALUES (3, N'ТРЦ РИО')
INSERT [dbo].[point] ([id], [name]) VALUES (4, N'ТРЦ "Океания" 3 этаж')
INSERT [dbo].[point] ([id], [name]) VALUES (5, N'Outlet Village Белая Дача')
INSERT [dbo].[point] ([id], [name]) VALUES (6, N'ТЦ "АЭРОБУС"')
INSERT [dbo].[point] ([id], [name]) VALUES (7, N'Vnukovo Premium Outlet')
INSERT [dbo].[point] ([id], [name]) VALUES (8, N'ТРК "ВЕГАС"')
INSERT [dbo].[point] ([id], [name]) VALUES (9, N'Сочи

- ТГ GRAND MARINA')
INSERT [dbo].[point] ([id], [name]) VALUES (10, N'Вологда
-
Магия Детства, ТЦ Форум, 3 этаж')
SET IDENTITY_INSERT [dbo].[point] OFF
GO
SET IDENTITY_INSERT [dbo].[sostav] ON 

INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (1, 1, 3, 1, 1, 32290, 10)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (2, 2, 1, 1, 1, 16770, 0)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (3, 3, 3, 1, 1, 32290, 10)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (4, 4, 1, 1, 1, 16880, 0)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (1004, 1004, 2, 1, 1, 16100, 0)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (2004, 2004, 1, 1, 1, 16880, 0)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (2005, 2005, 1, 1, 1, 16880, 0)
INSERT [dbo].[sostav] ([id], [id_orders], [id_merch], [count], [quantity], [total_cost], [discount]) VALUES (2006, 2006, 2, 1, 1, 16100, 0)
SET IDENTITY_INSERT [dbo].[sostav] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [status_name]) VALUES (1, N'Новый
')
INSERT [dbo].[status] ([id], [status_name]) VALUES (2, N'Отменен')
INSERT [dbo].[status] ([id], [status_name]) VALUES (3, N'Завершен')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[type_user] ON 

INSERT [dbo].[type_user] ([id], [role]) VALUES (1, N'Администратор')
INSERT [dbo].[type_user] ([id], [role]) VALUES (2, N'Менеджер')
INSERT [dbo].[type_user] ([id], [role]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[type_user] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (1, N'halida', N'12345', N'Халида', N'/res/hal.png', 1)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (2, N'elena', N'12345', N'Елена', N'/res/lena.png', 2)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (3, N'dozo', N'12345', N'dozopravka', N'/res/dp.png', 3)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (4, N'dozop', N'12345', N'do', N'C:\Users\vipev\Downloads\36a15939-56bd-47f3-80cc-966ce896cc43.jpeg', 3)
INSERT [dbo].[users] ([id], [login], [password], [name], [photo], [id_type]) VALUES (1004, N'gr', N'2020', N'gr', NULL, 3)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_users]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_point] FOREIGN KEY([id_point])
REFERENCES [dbo].[point] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_point]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([id_users])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_merch] FOREIGN KEY([id_merch])
REFERENCES [dbo].[merch] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_merch]
GO
ALTER TABLE [dbo].[sostav]  WITH CHECK ADD  CONSTRAINT [FK_sostav_orders] FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[sostav] CHECK CONSTRAINT [FK_sostav_orders]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type_user] FOREIGN KEY([id_type])
REFERENCES [dbo].[type_user] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type_user]
GO
USE [master]
GO
ALTER DATABASE [ImperiaD] SET  READ_WRITE 
GO
