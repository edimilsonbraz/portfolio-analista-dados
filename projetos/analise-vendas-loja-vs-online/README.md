# Projeto: Análise de Vendas – Loja Física vs Online
## ➡️ Objetivo do Projeto

* Analisar e comparar o desempenho de vendas da loja física vs vendas online, identificando:

* Evolução do faturamento ao longo do tempo

* Participação do canal online no faturamento total

* Diferenças de performance por categoria de produto

* Tendências de crescimento e variação percentual entre os canais

### O objetivo é apoiar a tomada de decisão estratégica, respondendo perguntas de negócio como:
> O canal online está ganhando ou perdendo relevância? <br/>
> Quais categorias performam melhor no online vs loja física?

## Contexto de Negócio

A empresa atua com vendas em dois canais:

🏪 Loja Física

🌐 Loja Online

A gestão precisa entender:

* Se o canal online está crescendo de forma sustentável

* Quais categorias impulsionam o faturamento

* Onde concentrar investimentos e esforços comerciais

## ➡️ Ferramentas Utilizadas

1. Power BI
2. Power Query (tratamento e modelagem dos dados)
3. DAX (medidas e indicadores)
4. Modelagem Dimensional (Star Schema)

## ➡️ Modelagem de Dados

O modelo foi estruturado em estrela, com:

### Tabelas Fato

* Fato Vendas Loja

* Fato Vendas Online

### Tabelas Dimensão

* Dim Calendário

* Dim Produto

* Dim Categoria

### Essa abordagem garante:

* Melhor performance

* Facilidade na criação de medidas

* Escalabilidade do modelo

## ➡️ Principais Métricas Criadas (DAX)

* Faturamento Loja

* Faturamento Online

* Faturamento Total

* Participação do Online no Total (%)

* Variação % do Faturamento Online em relação à Loja

* Ranking de Faturamento por Categoria

* Tendência de Crescimento Mensal

Exemplo de medida:
~~~bash
Participação Online (%) =
DIVIDE(
    [Faturamento Online],
    [Faturamento Total]
)
~~~

## ➡️ Visão Geral do Dashboard
Esta seção apresenta o dashboard consolidado, permitindo uma visão macro do desempenho
de vendas por canal, ao longo do tempo e por categoria.

![Visão Geral do Dashboard](imagens/01_dashboard_visao_geral.png)

> **O que é possível identificar nesta visão:**
> - Receita total por canal
> - Comparação temporal entre loja física e online
> - Categorias com maior participação nas vendas
> - Indicadores de crescimento ou retração

---

## 📈 Evolução das Vendas – Loja Física vs Online
Análise da evolução das vendas ao longo do tempo, comparando os dois canais.

![Evolução Loja vs Online](imagens/02_evolucao_loja_vs_online.png)

**Insight principal:**  
A loja física concentra a maior parte do faturamento, porém apresenta maior volatilidade ao longo do período analisado.
O canal online, apesar de representar um volume menor de vendas, demonstra comportamento mais estável, com variações menos acentuadas ao longo do tempo.

---

## 🏆 Top 5 Categorias por Receita
Identificação das cinco categorias com maior faturamento no período.

![Top 5 Categorias](imagens/03_ranking_categoria.png)

**Insight principal:**  
Poucas categorias concentram a maior parte da receita total.

---

## 📦 Mix de Vendas por Canal e Categoria
Análise da distribuição percentual das vendas entre os canais por categoria.

![Mix por Categoria](imagens/04_mix_canais_categoria.png)

**Insight principal:**  
Algumas categorias apresentam maior vocação para o canal online.

---

## 📉 Variação Percentual – Online vs Loja Física
Comparação percentual de desempenho entre os canais.

![Variação Percentual](imagens/05_variacao_online_vs_loja.png)

**Insight principal:**  
O canal online supera a loja física em determinadas categorias estratégicas.

---

## 🧾 Conclusões e Recomendações
Síntese dos principais aprendizados e possíveis ações de negócio.

- Reforçar investimentos no canal online nas categorias com menos saídas
- Avaliar estratégias de recuperação da loja física
- Monitorar continuamente categorias com variação negativa


## 👤 Autor

Edimilson de Sousa <br/>
Analista de Dados em formação <br/>
Foco em Power BI, DAX e análise de negócios
