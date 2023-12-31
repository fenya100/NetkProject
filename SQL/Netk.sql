USE [Netk]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 28.12.2023 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[IdStudent] [int] NULL,
	[IdTeacher] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 28.12.2023 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 28.12.2023 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NULL,
	[GroupNumber] [nchar](20) NULL,
	[Adress] [nvarchar](50) NULL,
	[FullYears] [int] NULL,
	[IdStudent] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 28.12.2023 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Expereince] [nvarchar](50) NULL,
	[Post] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NULL,
	[IdTeacher] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 28.12.2023 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[IDRole] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Директор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Зам директора')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (1, N'Иванов Иван Иванович', N'Арзамас             ', N'23', NULL, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (3, N'Априн Иван Иванович', N'33П                 ', N'Арзамас улица кольцова 1', 18, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (4, N'Орлан Иван Иванович', N'41П                 ', N'Арзамас улица кольцова 2', 20, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (5, N'Емелев Иван Иванович', N'32Ю                 ', N'Арзамас улица кольцова 3', 19, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (6, N'Арсунов Иван Иванович', N'12П                 ', N'Арзамас улица кольцова 6', 15, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (7, N'Илюшина Анна Ивановна', N'21Ю                 ', N'Арзамас улица кольцова 11', 17, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (9, N'Абрамова Анастасия ', N'23Ю                 ', N'Арзамас улица кольцова 12', 17, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (10, N'Петров Петя Петрович', N'33Ю                 ', N'Арзамас улица кольцова 55', 19, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (11, N'Петрянков Иван Иванович', N'41П                 ', N'Арзамас улица кольцова 44', 18, NULL)
INSERT [dbo].[Student] ([ID], [Name], [GroupNumber], [Adress], [FullYears], [IdStudent]) VALUES (12, N'Акулаев Иван Иванович', N'31П                 ', N'Арзамас улица кольцова 56', 19, NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (1, N'Иванов Иван Иванович', N'20', N'Преподователь', N'Арзамас', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (2, N'Априн Иван Иванович', N'23', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (3, N'Орлан Иван Иванович', N'5', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (4, N'Емелев Иван Иванович', N'6', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (5, N'Арсунов Иван Иванович', N'20', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (6, N'Илюшина Анна Ивановна', N'13', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (7, N'Абрамова Анастасия ', N'10', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (8, N'Петров Петя Петрович', N'11', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (9, N'Петрянков Иван Иванович', N'12', N'Преподователь', N'Арзамас ул Кольцова', NULL)
INSERT [dbo].[Teacher] ([ID], [Name], [Expereince], [Post], [Adress], [IdTeacher]) VALUES (10, N'Акулаев Иван Иванович', N'7', N'Преподователь', N'Арзамас ул Кольцова', NULL)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Login], [Password], [IDRole]) VALUES (1, N'дир       ', N'дир       ', 1)
INSERT [dbo].[User] ([ID], [Login], [Password], [IDRole]) VALUES (2, N'зам       ', N'зам       ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Group] FOREIGN KEY([IdTeacher])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Group]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
