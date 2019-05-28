SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone_book] (
		[UserID]           [int] NOT NULL,
		[Name]             [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]          [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Street]           [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]             [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Home_phone]       [int] NULL,
		[Mobile_phone]     [int] NULL,
		[ads]              [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[adg]              [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[asf]              [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[dfhj]             [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[dfh]              [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__Phone_bo__1788CCAC6DF29115]
		PRIMARY KEY
		CLUSTERED
		([UserID])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[Phone_book] SET (LOCK_ESCALATION = TABLE)
GO
