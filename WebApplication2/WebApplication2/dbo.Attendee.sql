CREATE TABLE [dbo].[Attendee] (
    [CareerCode]      NVARCHAR (50)  NOT NULL,
    [FirstName]       NVARCHAR (50)  NULL,
    [LastName]        NVARCHAR (50)  NULL,
    [Email]           NVARCHAR (50)  NULL,
    [PhoneNo]         INT            NULL,
    [Degree]          NVARCHAR (50)  NULL,
    [Major]           NVARCHAR (50)  NULL,
    [GradMonth]       NVARCHAR (50)  NULL,
    [GradYear]        INT            NULL,
    [DreamRole]       NVARCHAR (50)  NULL,
    [JobAvailability] NVARCHAR (50)  NULL,
    [LinkedIn]        NVARCHAR (MAX) NULL
);

