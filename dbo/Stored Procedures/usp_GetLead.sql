
CREATE PROCEDURE dbo.usp_GetLead
	@LeadId AS UNIQUEIDENTIFIER
AS

SELECT
	a.Id,
	a.[Name],
	a.Email,
	a.Mobile,
	a.PostCode,
	ServiceTypeId = b.Id,
	ServiceType = b.[Name]
FROM [dbo].[Leads] a
LEFT JOIN [dbo].[LeadServiceTypes] b ON
	b.Id = a.ServiceTypeId
WHERE a.Id = @LeadId
