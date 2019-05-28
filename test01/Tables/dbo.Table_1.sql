SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_1] (
		[Col1]     [int] NOT NULL,
		[Col2]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Col3]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[01]       [int] NULL,
		[fsd]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[sfd]      [int] NULL,
		[dsa]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_Table_1]
		PRIMARY KEY
		CLUSTERED
		([Col1])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[Table_1] SET (LOCK_ESCALATION = TABLE)
GO
