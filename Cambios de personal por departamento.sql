USE AdventureWorks2019
GO

--Se solicita obtener informaci�n de la cantidad de cambios de personal por departamento

SELECT hrd.Name AS Departamento, COUNT(hre.ShiftID) AS Cantidad
FROM HumanResources.EmployeeDepartmentHistory hre
INNER JOIN HumanResources.Department hrd
ON hrd.DepartmentID = hre.BusinessEntityID
GROUP BY Name