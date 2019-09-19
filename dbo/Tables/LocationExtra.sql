CREATE TABLE [dbo].[LocationExtra] (
    [LocationExtraID] INT          IDENTITY (1, 1) NOT NULL,
    [LocationID]      INT          NOT NULL,
    [CustomFieldID]   INT          NOT NULL,
    [Value]           VARCHAR (50) NOT NULL,
    [LookupDetailID]  INT          NULL,
    CONSTRAINT [PK_tblLocationExtra] PRIMARY KEY CLUSTERED ([LocationExtraID] ASC)
);

