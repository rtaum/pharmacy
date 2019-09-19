CREATE TABLE [dbo].[Location] (
    [HPSAUniqueID]     NVARCHAR (50) NULL,
    [AccountName]      NVARCHAR (50) NULL,
    [Address1]         NVARCHAR (50) NULL,
    [Address2]         NVARCHAR (50) NULL,
    [PO]               NVARCHAR (50) NULL,
    [City]             NVARCHAR (50) NULL,
    [PostalCode]       NVARCHAR (50) NULL,
    [MainPhone]        NVARCHAR (50) NULL,
    [RegionalDistrict] NVARCHAR (50) NULL,
    [Zones]            INT           NULL,
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    [Code] INT NOT NULL, 
    CONSTRAINT [pk_LocationID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

