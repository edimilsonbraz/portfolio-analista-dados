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

## ➡️ Visuais do Dashboard

O dashboard foi estruturado em três níveis de análise:

### 1️⃣ Visão Executiva (Topo)

* Faturamento Total

* Faturamento Loja

* Faturamento Online

* Participação do Online (%)

➡️ Permite leitura rápida do cenário geral

### 2️⃣ Análise Comparativa

* Evolução mensal: Loja vs Online

* Ranking de faturamento por categoria

* Performance percentual por categoria

➡️ Identifica diferenças de comportamento entre canais

### 3️⃣ Análise de Tendência e Variação

* Tendência de crescimento mensal

* Variação % do online em relação à loja

* Cores semânticas:

🟢 Crescimento

🔴 Queda

➡️ Apoia decisões estratégicas baseadas em tendência

## ➡️ Principais Insights Encontrados

* O canal online representa cerca de 20% do faturamento total

* Algumas categorias apresentam maior aderência ao canal online

* Há oscilações na participação do online ao longo dos anos

* O faturamento da loja física ainda lidera, mas o online mostra potencial de crescimento em períodos específicos


## ➡️ Próximos Passos (Evoluções Futuras)

* Inclusão de análise por região

* Análise de ticket médio

* Comparação YoY (Year over Year)

* Simulação de cenários

## 👤 Autor

Edimilson de Sousa <br/>
Analista de Dados em formação <br/>
Foco em Power BI, DAX e análise de negócios
