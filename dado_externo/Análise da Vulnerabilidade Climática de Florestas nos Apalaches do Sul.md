# Análise da Vulnerabilidade Climática de Florestas nos Apalaches do Sul

Este repositório contém scripts e análises relacionadas ao dataset `knb-lter-cwt.1047.14`, focado na vulnerabilidade climática das florestas nos Apalaches do Sul. O projeto investiga como as mudanças climáticas afetam a dinâmica populacional de espécies arbóreas, incluindo crescimento, mortalidade e reprodução.

## Pergunta de Pesquisa

> **"Como a dinâmica de crescimento, mortalidade e reprodução das espécies arbóreas nos Apalaches do Sul varia em resposta às condições ambientais ao longo do tempo, e quais espécies demonstram maior resiliência ou vulnerabilidade?"**

## Descrição do Dataset (`knb-lter-cwt.1047.14`)

O dataset **"Climate Vulnerability of Southern Appalachian Forests"** (Vulnerabilidade Climática das Florestas do Sul dos Apalaches), identificado pelo código `knb-lter-cwt.1047.14`, é parte do programa de Pesquisa Ecológica de Longa Duração de Coweeta (**CWT-LTER**). Este estudo, liderado pelo **Dr. James S. Clark** da Duke University, investiga como as mudanças climáticas — especificamente variações de temperatura e umidade — afetam a biodiversidade florestal. O foco principal é entender as respostas individuais das árvores em termos de **fecundidade, crescimento e sobrevivência**, permitindo prever como a composição das espécies pode mudar à medida que o clima evolui.

### Escopo e Metodologia

| Atributo | Descrição |
|:---|:---|
| **Período Temporal** | 1º de janeiro de 2011 a 31 de dezembro de 2017. |
| **Localização Geográfica** | Laboratório Hidrológico de Coweeta, Carolina do Norte, EUA (incluindo locais como Clingmans Dome e Purchase Knob). |
| **Metodologia de Censo** | Mapeamento e monitoramento de árvores com altura superior a 2 metros, marcadas com etiquetas de alumínio. |
| **Coleta de Sementes** | Uso de armadilhas de sementes (25 por parcela) visitadas duas vezes ao ano (primavera e outono) para quantificar a reprodução. |

### Estrutura dos Dados e Variáveis Chave

O banco de dados é estruturado em tabelas que separam dados de censo arbóreo e dados de produção de sementes. As principais variáveis incluem:

-   **Dados de Censo de Árvores:** Identificadores únicos (`ID`, `tag`), espécie (`species`), status de vida (`growinyr`, `censinyr`, `deathyr`), localização espacial (`postX`, `postY`, `UTM_Easting`, `UTM_Northing`) e medições físicas (e.g., `diam2011`, `diam2014` para DBH).
-   **Dados de Produção de Sementes:** Contagens de sementes para diversas espécies (e.g., `abieFras`, `acerSpic`, `piceRube`, `sorbAmer`) e notas (`notes`).

Os metadados seguem o padrão **EML 2.1.0** (Ecological Metadata Language), garantindo a interoperabilidade e a riqueza de detalhes sobre a coleta e processamento dos dados.

## Análises e Visualizações

O script R (`knb-lter-cwt.1047.14.r` e `analysis_and_viz.R`) realiza uma síntese ecológica integrando dados demográficos individuais com padrões reprodutivos de longo prazo. Primeiramente, é executado um processamento de dados longitudinais para calcular o incremento diamétrico (crescimento) e as taxas de mortalidade anual, permitindo identificar tendências de vigor biológico entre as diferentes espécies monitoradas. Complementarmente, a análise espacial mapeia a distribuição das comunidades, o que possibilita investigar padrões de competição e ocupação de nicho dentro das parcelas experimentais.

Além da demografia, o script processa as séries temporais de produção de sementes, correlacionando o sucesso reprodutivo com as janelas temporais de observação. As visualizações geradas, que incluem *boxplots* de crescimento e gráficos de tendências anuais, transformam dados tabulares complexos em indicadores visuais claros sobre a saúde do ecossistema. Essa abordagem integrada fornece uma base robusta para modelar a vulnerabilidade climática da floresta, destacando as variações específicas em como cada espécie responde às pressões ambientais do período estudado.

### Trechos de Código para Análise e Visualização

O arquivo `analysis_and_viz.R` contém os seguintes tipos de análises e visualizações:

1.  **Tendência Temporal da Produção de Sementes:** Gráfico de linhas mostrando a variação anual na contagem de sementes por espécie.
2.  **Crescimento de Árvores (DBH) por Espécie:** Boxplot da mudança no DBH entre 2011 e 2014 para diferentes espécies.
3.  **Taxa de Mortalidade de Árvores:** Gráfico de barras do número de mortes de árvores registradas por ano.
4.  **Distribuição Espacial das Árvores:** Gráfico de dispersão das coordenadas UTM das árvores por espécie.

## Como Usar

Para replicar as análises e gerar as visualizações:

1.  **Pré-requisitos:** Certifique-se de ter o R instalado em seu sistema.
2.  **Pacotes R:** Instale os pacotes necessários executando os seguintes comandos no console R, se ainda não os tiver: `R     install.packages("dplyr")     install.packages("ggplot2")     install.packages("tidyr")`
3.  **Download dos Dados:** O script `knb-lter-cwt.1047.14.r` já inclui a lógica para baixar os dados diretamente do repositório EDI.
4.  **Executar o Script:** Abra o arquivo `knb-lter-cwt.1047.14.r` no RStudio ou em seu ambiente R preferido e execute-o. Certifique-se de que o arquivo `analysis_and_viz.R` esteja no mesmo diretório ou que o caminho para ele esteja corretamente especificado.
5.  **Resultados:** Os gráficos gerados serão salvos como arquivos PNG no diretório de trabalho do seu script.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir *issues* ou enviar *pull requests* com melhorias, correções ou novas análises.

## Licença

Este projeto é distribuído sob a licença [MIT](https://opensource.org/licenses/MIT).
