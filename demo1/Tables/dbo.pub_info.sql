SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pub_info] (
		[pub_id]      [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[logo]        [image] NULL,
		[pr_info]     [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [UPKCL_pubinfo]
		PRIMARY KEY
		CLUSTERED
		([pub_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[pub_info]
	WITH CHECK
	ADD CONSTRAINT [FK__pub_info__pub_id__4316F928]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
ALTER TABLE [dbo].[pub_info]
	CHECK CONSTRAINT [FK__pub_info__pub_id__4316F928]

GO
ALTER TABLE [dbo].[pub_info] SET (LOCK_ESCALATION = TABLE)
GO
