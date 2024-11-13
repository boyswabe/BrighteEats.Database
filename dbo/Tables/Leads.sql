CREATE TABLE [dbo].[Leads] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Name]          VARCHAR (128)    NOT NULL,
    [Email]         VARCHAR (128)    NOT NULL,
    [Mobile]        VARCHAR (32)     NOT NULL,
    [PostCode]      VARCHAR (16)     NOT NULL,
    [ServiceTypeId] INT              NOT NULL,
    CONSTRAINT [PK_Leads] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Leads_LeadServiceTypes] FOREIGN KEY ([ServiceTypeId]) REFERENCES [dbo].[LeadServiceTypes] ([Id])
);

