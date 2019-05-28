SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sales] (
		[stor_id]      [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ord_num]      [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ord_date]     [datetime] NOT NULL,
		[qty]          [smallint] NOT NULL,
		[payterms]     [varchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[title_id]     [dbo].[tid] NOT NULL,
		CONSTRAINT [UPKCL_sales]
		PRIMARY KEY
		CLUSTERED
		([stor_id], [ord_num], [title_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[sales]
	WITH CHECK
	ADD CONSTRAINT [FK__sales__stor_id__36B12243]
	FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
ALTER TABLE [dbo].[sales]
	CHECK CONSTRAINT [FK__sales__stor_id__36B12243]

GO
ALTER TABLE [dbo].[sales]
	WITH CHECK
	ADD CONSTRAINT [FK__sales__title_id__37A5467C]
	FOREIGN KEY ([title_id]) REFERENCES [dbo].[titles] ([title_id])
ALTER TABLE [dbo].[sales]
	CHECK CONSTRAINT [FK__sales__title_id__37A5467C]

GO
CREATE NONCLUSTERED INDEX [titleidind]
	ON [dbo].[sales] ([title_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[sales] SET (LOCK_ESCALATION = TABLE)
GO
