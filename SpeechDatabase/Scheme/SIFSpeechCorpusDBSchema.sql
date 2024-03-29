USE [SibIngrFiCorpus]
GO
/****** Object:  Table [dbo].[DBUser]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](300) NULL,
	[MiddleName] [nvarchar](300) NULL,
	[Surname] [nvarchar](300) NULL,
	[Role] [nvarchar](300) NULL,
 CONSTRAINT [PK_DBUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldWorkFile]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FieldWorkFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[FileSize] [nvarchar](20) NULL,
	[Duration] [time](7) NULL,
	[FileHash] [nvarchar](1000) NULL,
	[FileVersion] [nvarchar](20) NULL,
	[IsStereo] [bit] NULL,
	[SamplingRate] [nvarchar](10) NULL,
	[FileType] [nvarchar](20) NULL,
	[OtherFileNames] [nvarchar](1000) NULL,
	[Comments] [nvarchar](1000) NULL,
	[IdRecDevice] [int] NOT NULL,
	[IdRecContext] [int] NOT NULL,
	[IdLicense] [int] NULL,
	[AnnotatedFileName] [nvarchar](300) NULL,
	[AnnotatedFileCreate] [datetime] NULL,
	[AnnotatedFileAuthor] [nvarchar](300) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_FieldWorkFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_FieldWorkFile_FileName] UNIQUE NONCLUSTERED 
(
	[FileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GeneralFragment]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GeneralFragment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FragmentName] [nvarchar](300) NOT NULL,
	[Start] [int] NOT NULL,
	[Finish] [int] NOT NULL,
	[DBComments] [nvarchar](1000) NULL,
	[FileNameFieldWorkFile] [varchar](50) NOT NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_GeneralFragment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interviewer]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Interviewer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonalCode] [varchar](12) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Affiliation] [nvarchar](1000) NULL,
	[DBComments] [nvarchar](1000) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_Interviewer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Interviewer_PersonalCode] UNIQUE NONCLUSTERED 
(
	[PersonalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InterviewerSpeech]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InterviewerSpeech](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGeneralFragment] [int] NOT NULL,
	[Start] [int] NOT NULL,
	[Finish] [int] NOT NULL,
	[InterviewerSpeech] [nvarchar](max) NULL,
	[InterviewerSpeechEnTranslation] [nvarchar](max) NULL,
	[InterviewerPersonalCode] [varchar](12) NOT NULL,
	[DBComments] [nvarchar](1000) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_InterviewerSpeech] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[License]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseShortName] [nvarchar](100) NULL,
	[LicenseName] [nvarchar](1000) NOT NULL,
	[LicenseText] [nvarchar](max) NULL,
	[LicenseVersion] [nvarchar](50) NULL,
	[SpecialConditions] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecContext]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecContext](
	[Id] [int] NOT NULL,
	[Place] [nvarchar](1000) NULL,
	[FieldWorkDate] [date] NULL,
	[Circumstances] [nvarchar](max) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_RecContext] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecDevice]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecDevice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[DeviceCharacteristics] [nvarchar](1000) NULL,
	[Comments] [nvarchar](1000) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_RecDevice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Session]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DBUserID] [int] NOT NULL,
	[SessionDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Speaker]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Speaker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonalCode] [varchar](12) NOT NULL,
	[FirstNameEncrypted] [nvarchar](300) NULL,
	[MiddleNameEncrypted] [nvarchar](300) NULL,
	[SurnameEncrypted] [nvarchar](300) NULL,
	[YearOfBirth] [int] NULL,
	[PlaceOfBirth] [nvarchar](300) NULL,
	[BirthplaceOfParents] [nvarchar](300) NULL,
	[ParentsNationality] [nvarchar](300) NULL,
	[Nationality] [nvarchar](300) NULL,
	[СurrentPlaceOfResidence] [nvarchar](300) NULL,
	[DBComment] [nvarchar](1000) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_Speaker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_Speaker_PersonalCode] UNIQUE NONCLUSTERED 
(
	[PersonalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SpeakerSpeech]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SpeakerSpeech](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGeneralFragment] [int] NOT NULL,
	[Start] [int] NOT NULL,
	[Finish] [int] NOT NULL,
	[Speech] [nvarchar](max) NULL,
	[SpeechEnTranslation] [nvarchar](max) NULL,
	[SpeechRuTranslation] [nvarchar](max) NULL,
	[SpeakerPersonalCode] [varchar](12) NOT NULL,
	[DBComments] [nvarchar](1000) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_SpeakerSpeech] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Word]    Script Date: 22.05.2022 17:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Word](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSpeakerSpeech] [int] NOT NULL,
	[Start] [int] NOT NULL,
	[Finish] [int] NOT NULL,
	[Word] [nvarchar](max) NOT NULL,
	[Lemma] [nvarchar](100) NULL,
	[WordEnTranslation] [nvarchar](max) NULL,
	[WordRuTranslation] [nvarchar](max) NULL,
	[PartOfSpeech] [nvarchar](max) NULL,
	[WordComments] [nvarchar](max) NULL,
	[DBComments] [nvarchar](max) NULL,
	[IdSession] [int] NULL,
 CONSTRAINT [PK_Word] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[FieldWorkFile]  WITH CHECK ADD  CONSTRAINT [FK_FieldWorkFile_License] FOREIGN KEY([IdLicense])
REFERENCES [dbo].[License] ([Id])
GO
ALTER TABLE [dbo].[FieldWorkFile] CHECK CONSTRAINT [FK_FieldWorkFile_License]
GO
ALTER TABLE [dbo].[FieldWorkFile]  WITH CHECK ADD  CONSTRAINT [FK_FieldWorkFile_RecContext] FOREIGN KEY([IdRecContext])
REFERENCES [dbo].[RecContext] ([Id])
GO
ALTER TABLE [dbo].[FieldWorkFile] CHECK CONSTRAINT [FK_FieldWorkFile_RecContext]
GO
ALTER TABLE [dbo].[FieldWorkFile]  WITH CHECK ADD  CONSTRAINT [FK_FieldWorkFile_RecDevice] FOREIGN KEY([IdRecDevice])
REFERENCES [dbo].[RecDevice] ([Id])
GO
ALTER TABLE [dbo].[FieldWorkFile] CHECK CONSTRAINT [FK_FieldWorkFile_RecDevice]
GO
ALTER TABLE [dbo].[GeneralFragment]  WITH CHECK ADD  CONSTRAINT [FK_GeneralFragment_FieldWorkFile] FOREIGN KEY([FileNameFieldWorkFile])
REFERENCES [dbo].[FieldWorkFile] ([FileName])
GO
ALTER TABLE [dbo].[GeneralFragment] CHECK CONSTRAINT [FK_GeneralFragment_FieldWorkFile]
GO
ALTER TABLE [dbo].[InterviewerSpeech]  WITH CHECK ADD  CONSTRAINT [FK_InterviewerSpeech_GeneralFragment] FOREIGN KEY([IdGeneralFragment])
REFERENCES [dbo].[GeneralFragment] ([Id])
GO
ALTER TABLE [dbo].[InterviewerSpeech] CHECK CONSTRAINT [FK_InterviewerSpeech_GeneralFragment]
GO
ALTER TABLE [dbo].[InterviewerSpeech]  WITH CHECK ADD  CONSTRAINT [FK_InterviewerSpeech_Interviewer] FOREIGN KEY([InterviewerPersonalCode])
REFERENCES [dbo].[Interviewer] ([PersonalCode])
GO
ALTER TABLE [dbo].[InterviewerSpeech] CHECK CONSTRAINT [FK_InterviewerSpeech_Interviewer]
GO
ALTER TABLE [dbo].[SpeakerSpeech]  WITH CHECK ADD  CONSTRAINT [FK_SpeakerSpeech_GeneralFragment] FOREIGN KEY([IdGeneralFragment])
REFERENCES [dbo].[GeneralFragment] ([Id])
GO
ALTER TABLE [dbo].[SpeakerSpeech] CHECK CONSTRAINT [FK_SpeakerSpeech_GeneralFragment]
GO
ALTER TABLE [dbo].[SpeakerSpeech]  WITH CHECK ADD  CONSTRAINT [FK_SpeakerSpeech_Speaker] FOREIGN KEY([SpeakerPersonalCode])
REFERENCES [dbo].[Speaker] ([PersonalCode])
GO
ALTER TABLE [dbo].[SpeakerSpeech] CHECK CONSTRAINT [FK_SpeakerSpeech_Speaker]
GO
ALTER TABLE [dbo].[Word]  WITH CHECK ADD  CONSTRAINT [FK_Word_SpeakerSpeech] FOREIGN KEY([IdSpeakerSpeech])
REFERENCES [dbo].[SpeakerSpeech] ([Id])
GO
ALTER TABLE [dbo].[Word] CHECK CONSTRAINT [FK_Word_SpeakerSpeech]
GO
