SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test3] (
		[komsija_id]     [int] NOT NULL,
		[ime]            [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[prezime]        [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[fixni]          [int] NULL,
		CONSTRAINT [PK__komsije__3FD13FBEB81495ED]
		PRIMARY KEY
		CLUSTERED
		([komsija_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[test3] SET (LOCK_ESCALATION = TABLE)
GO
