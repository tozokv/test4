SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discounts] (
		[discounttype]     [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[stor_id]          [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[lowqty]           [smallint] NULL,
		[highqty]          [smallint] NULL,
		[discount]         [decimal](4, 2) NOT NULL
)
GO
ALTER TABLE [dbo].[discounts]
	WITH CHECK
	ADD CONSTRAINT [FK__discounts__stor___3B75D760]
	FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
ALTER TABLE [dbo].[discounts]
	CHECK CONSTRAINT [FK__discounts__stor___3B75D760]

GO
ALTER TABLE [dbo].[discounts] SET (LOCK_ESCALATION = TABLE)
GO
