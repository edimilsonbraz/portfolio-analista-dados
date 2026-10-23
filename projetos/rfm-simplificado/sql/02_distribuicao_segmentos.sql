/* Quantidade de clientes e receita por segmento */
WITH Segmentos AS (
    SELECT
        CustomerKey,
        CASE
            WHEN SUM(SalesAmount) >= 10000 THEN 'ALTO VALOR'
            WHEN SUM(SalesAmount) >= 3000  THEN 'MEDIO VALOR'
            ELSE 'BAIXO VALOR'
        END AS Segmento,
        SUM(SalesAmount) AS ValorTotal
    FROM FactInternetSales
    GROUP BY CustomerKey
)
SELECT
    Segmento,
    COUNT(*)                                                                      AS QtdClientes,
    CAST(100.0 * COUNT(*) / SUM(COUNT(*)) OVER () AS DECIMAL(5,2))                AS PctClientes,
    SUM(ValorTotal)                                                               AS Receita,
    CAST(100.0 * SUM(ValorTotal) / SUM(SUM(ValorTotal)) OVER () AS DECIMAL(5,2))  AS PctReceita
FROM Segmentos
GROUP BY Segmento
ORDER BY Receita DESC;
