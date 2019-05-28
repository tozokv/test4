SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stores] (
		[stor_id]          [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[stor_name]        [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[stor_address]     [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city]             [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state]            [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[zip]              [char](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [UPK_storeid]
		PRIMARY KEY
		CLUSTERED
		([stor_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[stores] SET (LOCK_ESCALATION = TABLE)
GO
