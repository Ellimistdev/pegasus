/****** Object:  Database [HorseBird]    Script Date: 9/16/2019 3:16:28 PM ******/
--CREATE DATABASE [HorseBird]  ;
--GO
ALTER DATABASE [HorseBird] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HorseBird] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HorseBird] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HorseBird] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HorseBird] SET ARITHABORT OFF 
GO
ALTER DATABASE [HorseBird] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HorseBird] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HorseBird] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HorseBird] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HorseBird] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HorseBird] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HorseBird] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HorseBird] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HorseBird] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HorseBird] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HorseBird] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HorseBird] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HorseBird] SET  MULTI_USER 
GO
ALTER DATABASE [HorseBird] SET QUERY_STORE = OFF
GO
/****** Object:  Table [dbo].[CommunicationLabel]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommunicationLabel](
	[LabelId] [tinyint] NOT NULL,
	[Label] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[LabelId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactEmail]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactEmail](
	[EmailId] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](30) NULL,
	[LabelId] [tinyint] NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactField]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactField](
	[FieldId] [uniqueidentifier] NOT NULL,
	[FieldTitle] [nvarchar](30) NULL,
	[FieldData] [nvarchar](30) NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactLocation]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactLocation](
	[LocationId] [uniqueidentifier] NOT NULL,
	[Country] [nvarchar](40) NULL,
	[Address1] [nvarchar](40) NULL,
	[Address2] [nvarchar](40) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPersonal]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPersonal](
	[PersonalId] [uniqueidentifier] NOT NULL,
	[Prefix] [nvarchar](10) NULL,
	[FirstName] [nvarchar](30) NULL,
	[MiddleName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Suffix] [nvarchar](10) NULL,
	[Birthday] [date] NULL,
	[Image] [nvarchar](30) NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonalId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPhone]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPhone](
	[PhoneId] [uniqueidentifier] NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[LabelId] [tinyint] NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhoneId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactWork]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactWork](
	[WorkId] [uniqueidentifier] NOT NULL,
	[Company] [nvarchar](30) NULL,
	[JobTitle] [nvarchar](20) NULL,
	[Department] [nvarchar](30) NULL,
	[ContactId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserIdentity]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserIdentity](
	[IdentityId] [uniqueidentifier] NOT NULL,
	[Provider] [nvarchar](20) NULL,
	[Uid] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdentityId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/16/2019 3:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](30) NULL,
	[PasswordHash] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ContactEmail] ADD  DEFAULT (newid()) FOR [EmailId]
GO
ALTER TABLE [dbo].[ContactField] ADD  DEFAULT (newid()) FOR [FieldId]
GO
ALTER TABLE [dbo].[ContactLocation] ADD  DEFAULT (newid()) FOR [LocationId]
GO
ALTER TABLE [dbo].[ContactPersonal] ADD  DEFAULT (newid()) FOR [PersonalId]
GO
ALTER TABLE [dbo].[ContactPhone] ADD  DEFAULT (newid()) FOR [PhoneId]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (newid()) FOR [ContactId]
GO
ALTER TABLE [dbo].[ContactWork] ADD  DEFAULT (newid()) FOR [WorkId]
GO
ALTER TABLE [dbo].[UserIdentity] ADD  DEFAULT (newid()) FOR [IdentityId]
GO
ALTER TABLE [dbo].[ContactEmail]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactEmail]  WITH CHECK ADD FOREIGN KEY([LabelId])
REFERENCES [dbo].[CommunicationLabel] ([LabelId])
GO
ALTER TABLE [dbo].[ContactField]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactLocation]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactPersonal]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactPhone]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[ContactPhone]  WITH CHECK ADD FOREIGN KEY([LabelId])
REFERENCES [dbo].[CommunicationLabel] ([LabelId])
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[ContactWork]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[UserIdentity]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER DATABASE [HorseBird] SET  READ_WRITE 
GO
