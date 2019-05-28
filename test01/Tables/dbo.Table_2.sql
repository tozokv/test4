SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_2] (
		[nova]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[novaaa]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[in]         [int] NULL,
		[fbd]        [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[asdasd]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[asdas]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Table_2] SET (LOCK_ESCALATION = TABLE)
GO
