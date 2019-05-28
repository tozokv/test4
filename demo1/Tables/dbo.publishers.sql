SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[publishers] (
		[pub_id]       [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[pub_name]     [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[city]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[state]        [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[country]      [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [UPKCL_pubind]
		PRIMARY KEY
		CLUSTERED
		([pub_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[publishers]
	ADD
	CONSTRAINT [CK__publisher__pub_i__286302EC]
	CHECK
	([pub_id]='1756' OR [pub_id]='1622' OR [pub_id]='0877' OR [pub_id]='0736' OR [pub_id]='1389' OR [pub_id] like '99[0-9][0-9]')
GO
ALTER TABLE [dbo].[publishers]
CHECK CONSTRAINT [CK__publisher__pub_i__286302EC]
GO
ALTER TABLE [dbo].[publishers]
	ADD
	CONSTRAINT [DF__publisher__count__29572725]
	DEFAULT ('USA') FOR [country]
GO
ALTER TABLE [dbo].[publishers] SET (LOCK_ESCALATION = TABLE)
GO
