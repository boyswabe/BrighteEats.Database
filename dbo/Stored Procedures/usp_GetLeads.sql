
CREATE PROCEDURE [dbo].[usp_GetLeads]
	--@LeadName VARCHAR(128),
	--@Email VARCHAR(128),
	--@Mobile VARCHAR(32),
	--@PostalCode VARCHAR(16),
	--@ServiceTypeId AS INT
AS

SELECT
	a.Id,
	a.[Name],
	a.Email,
	a.Mobile,
	a.PostCode,
	ServiceType = b.[Name]
FROM [dbo].[Leads] a
INNER JOIN [dbo].[LeadServiceTypes] b ON
	b.Id = a.ServiceTypeId
--WHERE a.[Name] LIKE ISNULL('%' + @LeadName + '%', a.[Name])
--AND a.Email LIKE ISNULL('%' + @Email + '%', a.Email)
--AND a.Mobile LIKE ISNULL('%' + @LeadName + '%', a.Mobile)
--AND a.PostCode LIKE ISNULL('%' + @LeadName + '%', a.PostCode)
--AND b.Id LIKE ISNULL('%' + @ServiceTypeId + '%', b.Id)