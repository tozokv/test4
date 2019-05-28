SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[My_friends] (
		[FriendID]     [int] NOT NULL,
		[Name]         [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Surname]      [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK__My_frien__A2CF6563C660FD02]
		PRIMARY KEY
		CLUSTERED
		([FriendID])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[My_friends] SET (LOCK_ESCALATION = TABLE)
GO
