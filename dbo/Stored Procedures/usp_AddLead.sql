
CREATE PROCEDURE [dbo].[usp_AddLead]
	@LeadName VARCHAR(128),
	@Email VARCHAR(128),
	@Mobile VARCHAR(32),
	@PostalCode VARCHAR(16),
	@ServiceTypeId AS INT
AS
DECLARE @NEWID AS UNIQUEIDENTIFIER

SET @NEWID = NEWID()

INSERT [dbo].[Leads] (
	Id,
	[Name],
	Email,
	Mobile,
	PostCode,
	ServiceTypeId
)
SELECT
	@NEWID,
	@LeadName,
	@Email,
	@Mobile,
	@PostalCode,
	@ServiceTypeId

SELECT @NEWID as [NewLeadId]