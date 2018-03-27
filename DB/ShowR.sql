USE [master]
GO
/****** Object:  Database [ShowroomMVC_DB]    Script Date: 12-Feb-18 2:38:17 PM ******/
CREATE DATABASE [ShowroomMVC_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShowroomMVC_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShowroomMVC_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShowroomMVC_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ShowroomMVC_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShowroomMVC_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShowroomMVC_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShowroomMVC_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShowroomMVC_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShowroomMVC_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShowroomMVC_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShowroomMVC_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShowroomMVC_DB] SET  MULTI_USER 
GO
ALTER DATABASE [ShowroomMVC_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShowroomMVC_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShowroomMVC_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShowroomMVC_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShowroomMVC_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShowroomMVC_DB] SET QUERY_STORE = OFF
GO
USE [ShowroomMVC_DB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ShowroomMVC_DB]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12-Feb-18 2:38:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Origin] [varchar](200) NULL,
	[Description] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12-Feb-18 2:38:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](2000) NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12-Feb-18 2:38:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 12-Feb-18 2:38:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 12-Feb-18 2:38:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ip] [varchar](50) NOT NULL,
	[DateTime] [datetime] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12-Feb-18 2:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Code] [varchar](200) NOT NULL,
	[BuyPrice] [float] NULL,
	[SellPrice] [float] NOT NULL,
	[Quantity] [float] NOT NULL,
	[DateTime] [datetime] NULL,
	[Warrenty] [varchar](200) NULL,
	[Description] [varchar](2000) NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
	[SizeId] [int] NULL,
	[ColorId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReturn]    Script Date: 12-Feb-18 2:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReturn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNumber] [varchar](200) NULL,
	[DateTime] [datetime] NULL,
	[VoucherId] [int] NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 12-Feb-18 2:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [float] NOT NULL,
	[ProductId] [int] NULL,
	[VoucherId] [int] NULL,
	[Warrenty] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12-Feb-18 2:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12-Feb-18 2:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Contact] [varchar](15) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[Gender] [int] NULL,
	[JoinDate] [datetime] NOT NULL,
	[Ip] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address] [varchar](500) NULL,
	[IdNumber] [varchar](200) NOT NULL,
	[Image] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 12-Feb-18 2:38:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNumber] [varchar](200) NULL,
	[UserId] [int] NULL,
	[Discount] [float] NULL,
	[DateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Origin], [Description]) VALUES (1, N'A', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description], [CategoryId]) VALUES (1, N'A', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Name], [Description]) VALUES (1, N'A', NULL)
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Code], [BuyPrice], [SellPrice], [Quantity], [DateTime], [Warrenty], [Description], [CategoryId], [BrandId], [SizeId], [ColorId]) VALUES (1, N'a', N'asdf', 234, 234, 23, CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'sadf', N'sfd', 1, 1, 1, 1)
INSERT [dbo].[Product] ([Id], [Name], [Code], [BuyPrice], [SellPrice], [Quantity], [DateTime], [Warrenty], [Description], [CategoryId], [BrandId], [SizeId], [ColorId]) VALUES (2, N'Product B', N'BBBB', 20, 15, 5, CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'1 months', N'NA', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([Id], [Quantity], [ProductId], [VoucherId], [Warrenty]) VALUES (1, 2, 2, 6, NULL)
INSERT [dbo].[Sale] ([Id], [Quantity], [ProductId], [VoucherId], [Warrenty]) VALUES (2, 5, 1, 6, NULL)
INSERT [dbo].[Sale] ([Id], [Quantity], [ProductId], [VoucherId], [Warrenty]) VALUES (3, 1, 2, 7, NULL)
SET IDENTITY_INSERT [dbo].[Sale] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Name], [Description]) VALUES (1, N'A', NULL)
SET IDENTITY_INSERT [dbo].[Size] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Contact], [Email], [Password], [Gender], [JoinDate], [Ip], [DateOfBirth], [Address], [IdNumber], [Image]) VALUES (1, N'dfg', N'123123', N'fdgd@gmail.com', N'1232', 1, CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'1', CAST(N'2001-01-01' AS Date), N'FSA', N'123', N'DS')
INSERT [dbo].[Users] ([Id], [Name], [Contact], [Email], [Password], [Gender], [JoinDate], [Ip], [DateOfBirth], [Address], [IdNumber], [Image]) VALUES (2, N'Osan Shaon', N'01910778228', N'abcd@gmail.com', N'12345', 1, CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'2', CAST(N'2012-01-01' AS Date), N'Dhaka', N'23132', N'DS')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([Id], [CustomerNumber], [UserId], [Discount], [DateTime]) VALUES (6, N'12345678902', 1, 0, CAST(N'2018-02-12T02:32:54.877' AS DateTime))
INSERT [dbo].[Voucher] ([Id], [CustomerNumber], [UserId], [Discount], [DateTime]) VALUES (7, N'12', 1, 50, CAST(N'2018-02-12T02:33:56.233' AS DateTime))
SET IDENTITY_INSERT [dbo].[Voucher] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Brand__737584F6779B9A64]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Brand] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Category__737584F60682BA13]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Category] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Color__737584F66E17D33A]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Color] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__737584F65F497EB7]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Product] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__A25C5AA7773D1767]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Product] ADD UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Size__737584F6811CBE41]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Size] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534346741EA]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__F7C04665F625F270]    Script Date: 12-Feb-18 2:38:25 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoginHistory] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[ProductReturn] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ColorId])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([SizeId])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[ProductReturn]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductReturn]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ProductReturn]  WITH CHECK ADD FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
USE [master]
GO
ALTER DATABASE [ShowroomMVC_DB] SET  READ_WRITE 
GO
