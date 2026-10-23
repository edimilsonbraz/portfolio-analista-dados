/* Uma linha por cliente, com métricas e segmento */
WITH ResumoCliente AS (
    SELECT
        c.CustomerKey,
        c.FirstName,
        c.LastName,
        c.Gender,
        c.YearlyIncome,
        c.EnglishOccupation                  AS Ocupacao,
        COUNT(DISTINCT f.SalesOrderNumber)   AS FrequenciaPedidos,  -- pedidos distintos, não itens
        SUM(f.SalesAmount)                   AS ValorTotal,
        MAX(d.FullDateAlternateKey)          AS UltimaCompra
    FROM FactInternetSales AS f
    INNER JOIN DimCustomer AS c ON f.CustomerKey  = c.CustomerKey
    INNER JOIN DimDate     AS d ON f.OrderDateKey = d.DateKey
    GROUP BY c.CustomerKey, c.FirstName, c.LastName,
             c.Gender, c.YearlyIncome, c.EnglishOccupation
)
SELECT
    *,
    CASE
        WHEN ValorTotal >= 10000 THEN 'ALTO VALOR'
        WHEN ValorTotal >= 3000  THEN 'MEDIO VALOR'
        ELSE 'BAIXO VALOR'
    END AS Segmento
FROM ResumoCliente
ORDER BY ValorTotal DESC;
