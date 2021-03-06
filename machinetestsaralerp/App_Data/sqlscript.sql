USE [master]
GO
/****** Object:  Database [testsaralerp]    Script Date: 4/15/2021 5:39:52 PM ******/
CREATE DATABASE [testsaralerp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testsaralerp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\testsaralerp.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'testsaralerp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\testsaralerp_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [testsaralerp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testsaralerp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testsaralerp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testsaralerp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testsaralerp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testsaralerp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testsaralerp] SET ARITHABORT OFF 
GO
ALTER DATABASE [testsaralerp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testsaralerp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testsaralerp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testsaralerp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testsaralerp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testsaralerp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testsaralerp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testsaralerp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testsaralerp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testsaralerp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [testsaralerp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testsaralerp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testsaralerp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testsaralerp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testsaralerp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testsaralerp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testsaralerp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testsaralerp] SET RECOVERY FULL 
GO
ALTER DATABASE [testsaralerp] SET  MULTI_USER 
GO
ALTER DATABASE [testsaralerp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testsaralerp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testsaralerp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testsaralerp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [testsaralerp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'testsaralerp', N'ON'
GO
USE [testsaralerp]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/15/2021 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[rowid] [bigint] IDENTITY(1,1) NOT NULL,
	[userId] [bigint] NULL,
	[name] [nvarchar](200) NULL,
	[details] [nvarchar](300) NULL,
	[DateOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 4/15/2021 5:39:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[rowid] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[sales] ON 

INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (1, 1, N'2 for 6 inch', N'ManKind', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (2, 1, N'polly 4inch 3cm', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (3, 2, N'okay lorium ipsum', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (4, 1, N'ss', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (5, 1, N'2 for 6 inch', N'ManKind', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (6, 2, N'polly 4inch 3cm', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (7, 1, N'okay lorium ipsum', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[sales] ([rowid], [userId], [name], [details], [DateOn]) VALUES (8, 2, N'ss', N'okay lorium ipsum', CAST(N'2020-12-12 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[sales] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([rowid], [name]) VALUES (1, N'Raju')
INSERT [dbo].[users] ([rowid], [name]) VALUES (2, N'Rajesh')
INSERT [dbo].[users] ([rowid], [name]) VALUES (3, N'Manish')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[users] ([rowid])
GO
USE [master]
GO
ALTER DATABASE [testsaralerp] SET  READ_WRITE 
GO
