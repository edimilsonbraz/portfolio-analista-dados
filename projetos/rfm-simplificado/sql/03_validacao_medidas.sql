-- Deve bater com a medida [Total Vendas] sem filtros: US$ 29.358.677,22
SELECT SUM(SalesAmount) AS TotalVendas
FROM FactInternetSales;
