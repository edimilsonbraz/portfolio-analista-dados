-- Deve bater com a medida [Total Vendas] sem filtros: R$ 29.358.677,22
SELECT SUM(SalesAmount) AS TotalVendas
FROM FactInternetSales;
