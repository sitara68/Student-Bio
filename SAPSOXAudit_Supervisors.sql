/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct sup.LastName + ', ' + sup.FirstName, sup.NetworkID, sup.EmpUserID
  FROM [SAPSOXAudit].[dbo].[tblSOX_Audit] aud
  inner join [SAPSOXAudit].[dbo].[tblSOX_Employees] emp on aud.EmpUserID = emp.EmpUserID
  inner join [SAPSOXAudit].[dbo].[tblSOX_Employees] sup on emp.SupervisorID = sup.EmpUserID
