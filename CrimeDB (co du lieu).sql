USE [master]
GO
/****** Object:  Database [CrimeDB]    Script Date: 7/26/2018 6:37:08 AM ******/
CREATE DATABASE [CrimeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrimeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CrimeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CrimeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CrimeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CrimeDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrimeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrimeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrimeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrimeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrimeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrimeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrimeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrimeDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CrimeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrimeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrimeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrimeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrimeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrimeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrimeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrimeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrimeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrimeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrimeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrimeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrimeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrimeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrimeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrimeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrimeDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CrimeDB] SET  MULTI_USER 
GO
ALTER DATABASE [CrimeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrimeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrimeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrimeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CrimeDB', N'ON'
GO
USE [CrimeDB]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[WantedID] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CrimeType]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrimeType](
	[CrimeTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CrimeTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CrimeType] PRIMARY KEY CLUSTERED 
(
	[CrimeTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MissionUnit]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MissionUnit](
	[MissionUnitID] [int] IDENTITY(1,1) NOT NULL,
	[MissionUnitName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MissionUnit] PRIMARY KEY CLUSTERED 
(
	[MissionUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prison]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prison](
	[PrisonID] [int] IDENTITY(1,1) NOT NULL,
	[PrisonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Prison] PRIMARY KEY CLUSTERED 
(
	[PrisonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wanted]    Script Date: 7/26/2018 6:37:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wanted](
	[WantedID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CrimeName] [nvarchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Country] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Offense] [nvarchar](max) NOT NULL,
	[CrimeTypeID] [int] NULL,
	[MissionUnitID] [int] NULL,
	[WantedDate] [date] NOT NULL,
	[CatchedDate] [date] NULL,
	[PrisonID] [int] NULL,
	[Status] [varchar](10) NOT NULL,
	[Detail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Wanted] PRIMARY KEY CLUSTERED 
(
	[WantedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CrimeType] ON 

INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (1, N'Antisocial behaviour')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (2, N'Arson')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (3, N'Burglary')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (6, N'Childhood abuse')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (7, N'Crime abroad')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (8, N'Cyber crime')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (9, N'Domestic abuse')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (10, N'Fraud')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (11, N'Hate crime')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (12, N'Murder or manslaughter')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (13, N'Rape and sexual assault')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (14, N'Revenge porn')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (15, N'Robbery')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (16, N'Sexual harassment')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (17, N'Stalking and harassment')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (18, N'Terrorism')
INSERT [dbo].[CrimeType] ([CrimeTypeID], [CrimeTypeName]) VALUES (19, N'Violent crime')
SET IDENTITY_INSERT [dbo].[CrimeType] OFF
SET IDENTITY_INSERT [dbo].[MissionUnit] ON 

INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (1, N'Green Berets')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (2, N'The Night Stalkers')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (3, N'FAST')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (4, N'75th Ranger Regiment')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (5, N'Best Rangers competition')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (6, N'Navy SEALs')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (7, N'Delta Force')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (8, N'Force Recon')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (9, N'Force Recon: Geared up')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (10, N'Maritime Safety and Security Teams')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (11, N'MARSOC')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (12, N'Air Force Pararescue')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (14, N'PJs: Heroism in Mogadishu')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (15, N'Special Warfare Combatant-Craft Crewmen')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (16, N'Swick-in-training')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (17, N'Special Operations Weather Technician')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (18, N'ANGLICO')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (19, N'5th ANGLICO training')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (20, N'Air Force Combat Controllers')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (21, N'Công An Xóm')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (22, N'CIA')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (23, N'FBI')
INSERT [dbo].[MissionUnit] ([MissionUnitID], [MissionUnitName]) VALUES (24, N'Cảnh Sát Hình Sự')
SET IDENTITY_INSERT [dbo].[MissionUnit] OFF
SET IDENTITY_INSERT [dbo].[Prison] ON 

INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (1, N'United States Penitentiary Marion')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (2, N'Rikers Island')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (3, N'Louisiana State Penitentiary')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (4, N'Leavenworth Federal Penitentiary')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (5, N'Folsom State Prison')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (6, N'Attica Correctional Facility')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (7, N'United States Penitentiary Atlanta')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (8, N'Sing, Sing')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (9, N'San Quentin State Prison')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (10, N'ADX Florence Facility')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (11, N'FPT')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (12, N'Bien Hoa')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (13, N'Con Dao')
INSERT [dbo].[Prison] ([PrisonID], [PrisonName]) VALUES (14, N'Chau Quy')
SET IDENTITY_INSERT [dbo].[Prison] OFF
INSERT [dbo].[User] ([UserName], [Password], [Type]) VALUES (N'admin', N'admin', N'admin     ')
INSERT [dbo].[User] ([UserName], [Password], [Type]) VALUES (N'user', N'user', N'user      ')
SET IDENTITY_INSERT [dbo].[Wanted] ON 

INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (30, N'image/1.jpg', N'SE03335 	LinhCBKSE03335', N'Female', N'SE03335', CAST(0x833E0B00 AS Date), N'Property crimes typically involve interference with the property of another. Although they may involve physical or mental harm to another, they primarily result in the deprivation of the use or enjoyment of property. Many property crimes are theft crimes, including burglary, larceny, robbery, auto theft, and shoplifting. ', 1, 1, CAST(0x833E0B00 AS Date), CAST(0xC13E0B00 AS Date), 4, N'Catched', N'Property crimes typically involve interference with the property of another. Although they may involve physical or mental harm to another, they primarily result in the deprivation of the use or enjoyment of property. Many property crimes are theft crimes, including burglary, larceny, robbery, auto theft, and shoplifting. ')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (31, N'image/2.jpg', N'SE03684 	BangNVSE03684', N'Female', N'SE03684', CAST(0x833E0B00 AS Date), N'Inchoate crimes refer to those crimes that were initiated but not completed, and acts that assist in the commission of another crime. Inchoate crimes require more than a person simply intending or hoping to commit a crime. Rather, the individual must take a âsubstantial stepâ towards the completion of the crime in order to be found guilty. Inchoate crimes include aiding and abetting, attempt, and conspiracy. In some cases, inchoate crimes can be punished to the same degree that the underlying crime would be punished, while in other cases, the punishment might be less severe.', 2, 2, CAST(0x833E0B00 AS Date), CAST(0xC13E0B00 AS Date), 6, N'Catched', N'Inchoate crimes refer to those crimes that were initiated but not completed, and acts that assist in the commission of another crime. Inchoate crimes require more than a person simply intending or hoping to commit a crime. Rather, the individual must take a âsubstantial stepâ towards the completion of the crime in order to be found guilty. Inchoate crimes include aiding and abetting, attempt, and conspiracy. In some cases, inchoate crimes can be punished to the same degree that the underlying crime would be punished, while in other cases, the punishment might be less severe.')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (32, N'image/3.png', N'SE04013 	VuNHSE04013', N'male', N'SE04013', CAST(0x833E0B00 AS Date), N'SE04013', 3, 3, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (33, N'image/4.png', N'SE04234 	KienNHSE04234', N'male', N'SE04234', CAST(0x833E0B00 AS Date), N'SE04234', 6, 4, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (34, N'image/5.png', N'SE04236 	CongNVSE04236', N'male', N'	SE04236', CAST(0x833E0B00 AS Date), N'	SE04236', 1, 1, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (35, N'image/6.png', N'SE04274 	VinhNTSE04274', N'male', N'	SE04274', CAST(0x833E0B00 AS Date), N'	SE04274', 9, 12, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (36, N'image/9.png', N'SE04275 	TungNXSE04275', N'male', N'	SE04275', CAST(0x833E0B00 AS Date), N'	SE04275', 13, 20, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (37, N'image/27.jpg', N'SE04304 	LongPTSE04304', N'male', N'	SE04304', CAST(0x833E0B00 AS Date), N'	SE04304', 1, 1, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (38, N'image/24.png', N'SE04336 	MinhLQSE04336', N'male', N'	SE04336', CAST(0xA23E0B00 AS Date), N'	SE04336', 12, 7, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (39, N'image/18.jpg', N'SE04411 	YenNTHSE04411', N'male', N'	SE04411', CAST(0xC13E0B00 AS Date), N'	SE04411', 9, 15, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (40, N'image/10.png', N'SE04461 	TuanDDSE04461', N'male', N'	SE04461', CAST(0xDF3E0B00 AS Date), N'	SE04461', 12, 8, CAST(0xC13E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (41, N'image/8.png', N'SE04673 	HiepNASE04673', N'male', N'	SE04673', CAST(0xA23E0B00 AS Date), N'	SE04673', 6, 5, CAST(0xA23E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (42, N'image/17.jpg', N'SE04754 	HaNMSE04754', N'Female', N'	SE04754', CAST(0x653E0B00 AS Date), N'Statutory crimes include those crimes, in addition to the crimes discussed above, which are proscribed by statute. Three significant types of statutory crimes are alcohol related crimes, drug crimes, traffic offenses, and financial/white collar crimes. These crimes are specifically prohibited by statute because society hopes to deter individuals from engaging in them. Alcohol-related crimes include a variety of offenses regarding how and where alcohol can be consumed, such as:', 7, 8, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Statutory crimes include those crimes, in addition to the crimes discussed above, which are proscribed by statute. Three significant types of statutory crimes are alcohol related crimes, drug crimes, traffic offenses, and financial/white collar crimes. These crimes are specifically prohibited by statute because society hopes to deter individuals from engaging in them. Alcohol-related crimes include a variety of offenses regarding how and where alcohol can be consumed, such as:')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (43, N'image/27.jpg', N'SE04766 	ThucDTSE04766', N'male', N'	SE04766', CAST(0x463E0B00 AS Date), N'	SE04766', 7, 6, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (44, N'image/27.jpg', N'SE04914 	HoangTMSE04914', N'male', N'	SE04914', CAST(0xC13E0B00 AS Date), N'	SE04914', 9, 7, CAST(0xA23E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (45, N'image/26.png', N'SE04965 	BacPVSE04965', N'male', N'	SE04965', CAST(0x833E0B00 AS Date), N'	SE04965', 1, 1, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (46, N'image/30.jpg', N'SE04968 	MinhPDSE04968', N'female', N'	SE04968', CAST(0x833E0B00 AS Date), N'	SE04968', 13, 14, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (47, N'image/18.jpg', N'SE05010 	PhuongHNHSE05010', N'male', N'	SE05010', CAST(0xA23E0B00 AS Date), N'	SE05010', 12, 16, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (48, N'image/26.png', N'SE05018 	AnhPLDSE05018', N'male', N'	SE05018', CAST(0x833E0B00 AS Date), N'	SE05018', 11, 16, CAST(0xC13E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (49, N'image/31.jpg', N'SE05100 	DangNGSE05100', N'male', N'	SE05100', CAST(0x833E0B00 AS Date), N'	SE05100', 10, 7, CAST(0x833E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (50, N'image/22.jpg', N'SE05137 	MinhNQSE05137', N'male', N'	SE05137', CAST(0x653E0B00 AS Date), N'	SE05137', 8, 5, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (51, N'image/23.jpg', N'SE05189 	HaoNASE05189', N'male', N'	SE05189', CAST(0x833E0B00 AS Date), N'	SE05189', 9, 10, CAST(0xFE3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (52, N'image/27.jpg', N'SE05151 	AnVVSE05151', N'male', N'	SE05151', CAST(0xC13E0B00 AS Date), N'	SE05151', 1, 1, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (53, N'image/22.jpg', N'SE05351 	LocNXSE05351', N'male', N'	SE05453', CAST(0xC13E0B00 AS Date), N'	SE05453', 1, 1, CAST(0xC13E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (54, N'image/27.jpg', N'SE05481 	ChiTDSE05481', N'male', N'	SE05481', CAST(0x653E0B00 AS Date), N'	SE05481', 10, 17, CAST(0x653E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (55, N'image/26.png', N'SE05559 	DucNMSE05559', N'male', N'	SE05559', CAST(0xA23E0B00 AS Date), N'	SE05559', 1, 1, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (56, N'image/24.png', N'SE05639 	MinhNTSE05639', N'female', N'	SE05639', CAST(0xC13E0B00 AS Date), N'	SE05639', 1, 1, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (57, N'image/6.png', N'SE05692 	DucNHSE05692', N'male', N'sdsadsdda', CAST(0xC13E0B00 AS Date), N'sdsadsdda', 6, 8, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'Detail')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (58, N'image/27.jpg', N'SE06166 	TuanDASE06166', N'Female', N'	SE06166', CAST(0xA23E0B00 AS Date), N'Traffic offenses include crimes that may arise while an individual is driving a vehicle on public roadways. Because a DUI/OWI/DWI involves both alcohol and the use of a vehicle, it is considered both an alcohol related crime and a traffic offense. Additional traffic offenses include driving on a suspended or revoked license, driving without a license, hit-and-run accidents, reckless driving, and vehicular assault. Where a traffic offense results in death, it can be charged as a far more serious crime, such as a form of homicide. ', 2, 6, CAST(0xC13E0B00 AS Date), CAST(0xC13E0B00 AS Date), 7, N'Catched', N'Traffic offenses include crimes that may arise while an individual is driving a vehicle on public roadways. Because a DUI/OWI/DWI involves both alcohol and the use of a vehicle, it is considered both an alcohol related crime and a traffic offense. Additional traffic offenses include driving on a suspended or revoked license, driving without a license, hit-and-run accidents, reckless driving, and vehicular assault. Where a traffic offense results in death, it can be charged as a far more serious crime, such as a form of homicide. ')
INSERT [dbo].[Wanted] ([WantedID], [Image], [CrimeName], [Gender], [Country], [DOB], [Offense], [CrimeTypeID], [MissionUnitID], [WantedDate], [CatchedDate], [PrisonID], [Status], [Detail]) VALUES (59, N'image/26.png', N'SE90179 	HaiTTSE90179', N'female', N'	SE90179', CAST(0xDF3E0B00 AS Date), N'	SE90179', 7, 14, CAST(0xDF3E0B00 AS Date), NULL, NULL, N'Wanted', N'sssssssssss')
SET IDENTITY_INSERT [dbo].[Wanted] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Wanted] FOREIGN KEY([WantedID])
REFERENCES [dbo].[Wanted] ([WantedID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Wanted]
GO
ALTER TABLE [dbo].[Wanted]  WITH CHECK ADD  CONSTRAINT [FK_Wanted_CrimeType] FOREIGN KEY([CrimeTypeID])
REFERENCES [dbo].[CrimeType] ([CrimeTypeID])
GO
ALTER TABLE [dbo].[Wanted] CHECK CONSTRAINT [FK_Wanted_CrimeType]
GO
ALTER TABLE [dbo].[Wanted]  WITH CHECK ADD  CONSTRAINT [FK_Wanted_MissionUnit] FOREIGN KEY([MissionUnitID])
REFERENCES [dbo].[MissionUnit] ([MissionUnitID])
GO
ALTER TABLE [dbo].[Wanted] CHECK CONSTRAINT [FK_Wanted_MissionUnit]
GO
ALTER TABLE [dbo].[Wanted]  WITH CHECK ADD  CONSTRAINT [FK_Wanted_Prison] FOREIGN KEY([PrisonID])
REFERENCES [dbo].[Prison] ([PrisonID])
GO
ALTER TABLE [dbo].[Wanted] CHECK CONSTRAINT [FK_Wanted_Prison]
GO
USE [master]
GO
ALTER DATABASE [CrimeDB] SET  READ_WRITE 
GO
