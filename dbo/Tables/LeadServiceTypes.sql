CREATE TABLE [dbo].[LeadServiceTypes] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (128) NOT NULL,
    CONSTRAINT [PK_LeadServiceTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

