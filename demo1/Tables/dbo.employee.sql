SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee] (
		[emp_id]        [dbo].[empid] NOT NULL,
		[fname]         [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[minit]         [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[lname]         [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[job_id]        [smallint] NOT NULL,
		[job_lvl]       [tinyint] NULL,
		[pub_id]        [char](4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[hire_date]     [datetime] NOT NULL,
		CONSTRAINT [PK_emp_id]
		PRIMARY KEY
		NONCLUSTERED
		([emp_id])
	ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [CK_emp_id]
	CHECK
	([emp_id] like '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR [emp_id] like '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]')
GO
ALTER TABLE [dbo].[employee]
CHECK CONSTRAINT [CK_emp_id]
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__job_id__46E78A0C]
	DEFAULT ((1)) FOR [job_id]
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__job_lv__48CFD27E]
	DEFAULT ((10)) FOR [job_lvl]
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__pub_id__49C3F6B7]
	DEFAULT ('9952') FOR [pub_id]
GO
ALTER TABLE [dbo].[employee]
	ADD
	CONSTRAINT [DF__employee__hire_d__4BAC3F29]
	DEFAULT (getdate()) FOR [hire_date]
GO
ALTER TABLE [dbo].[employee]
	WITH CHECK
	ADD CONSTRAINT [FK__employee__job_id__47DBAE45]
	FOREIGN KEY ([job_id]) REFERENCES [dbo].[jobs] ([job_id])
ALTER TABLE [dbo].[employee]
	CHECK CONSTRAINT [FK__employee__job_id__47DBAE45]

GO
ALTER TABLE [dbo].[employee]
	WITH CHECK
	ADD CONSTRAINT [FK__employee__pub_id__4AB81AF0]
	FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
ALTER TABLE [dbo].[employee]
	CHECK CONSTRAINT [FK__employee__pub_id__4AB81AF0]

GO
CREATE CLUSTERED INDEX [employee_ind]
	ON [dbo].[employee] ([lname], [fname], [minit])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee] SET (LOCK_ESCALATION = TABLE)
GO
