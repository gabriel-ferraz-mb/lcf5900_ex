# lcf5900_ex

Repositório com os exercícios desenvolvidos na disciplina **LCF5900 — Processamento Reproduzível e Aberto de Dados Científicos** (ESALQ/USP, 2026), reunindo dois exercícios de análise de dados abertos: dados climáticos e vulnerabilidade climática de florestas do Sul dos Apalaches.

## Estrutura do repositório

- `/clima` — organização e análise dos dados climáticos disponibilizados no material da disciplina.
- `/dado_externo` — análise do dataset externo **knb-lter-cwt.1047.14**, sobre vulnerabilidade climática de florestas do Sul dos Apalaches.

---

## Exercício 1 — Clima

Dados climáticos organizados a partir do material disponibilizado na disciplina ("Organizando Dados Climáticos"), com tratamento, estruturação e exploração da série para fins de reprodutibilidade da análise.

---

## Exercício 2 — Apalaches: Vulnerabilidade Climática de Florestas do Sul dos Apalaches

Este exercício contém scripts e análises relacionadas ao dataset **knb-lter-cwt.1047.14**, focado na vulnerabilidade climática das florestas do Sul dos Apalaches. O projeto investiga como as mudanças climáticas afetam a dinâmica populacional de espécies arbóreas, incluindo crescimento, mortalidade e reprodução.

### Pergunta de pesquisa

> Como a dinâmica de crescimento, mortalidade e reprodução das espécies arbóreas nos Apalaches do Sul varia em resposta às condições ambientais ao longo do tempo, e quais espécies demonstram maior resiliência ou vulnerabilidade?

### Descrição do dataset (knb-lter-cwt.1047.14)

O dataset *"Climate Vulnerability of Southern Appalachian Forests"*, identificado pelo código `knb-lter-cwt.1047.14`, é parte do programa de Pesquisa Ecológica de Longa Duração de Coweeta (CWT-LTER). O estudo, liderado pelo Dr. James S. Clark (Duke University), investiga como as mudanças climáticas — especificamente variações de temperatura e umidade — afetam a biodiversidade florestal, focando nas respostas individuais das árvores em termos de fecundidade, crescimento e sobrevivência, permitindo prever mudanças na composição das espécies conforme o clima evolui.

### Escopo e metodologia

| Atributo | Descrição |
|---|---|
| Período temporal | 1º de janeiro de 2011 a 31 de dezembro de 2017 |
| Localização geográfica | Laboratório Hidrológico de Coweeta, Carolina do Norte, EUA (incluindo Clingmans Dome e Purchase Knob) |
| Metodologia de censo | Mapeamento e monitoramento de árvores com altura superior a 2 m, marcadas com etiquetas de alumínio |
| Coleta de sementes | Armadilhas de sementes (25 por parcela), visitadas duas vezes ao ano (primavera e outono) |

### Estrutura dos dados e variáveis-chave

O banco de dados é estruturado em tabelas que separam dados de censo arbóreo e dados de produção de sementes:

- **Dados de censo de árvores**: identificadores únicos (`ID`, `tag`), espécie (`species`), status de vida (`growinyr`, `censinyr`, `deathyr`), localização espacial (`postX`, `postY`, `UTM_Easting`, `UTM_Northing`) e medições físicas (ex.: `diam2011`, `diam2014` para DBH).
- **Dados de produção de sementes**: contagens de sementes por espécie (ex.: `abieFras`, `acerSpic`, `piceRube`, `sorbAmer`) e notas (`notes`).

Os metadados seguem o padrão **EML 2.1.0** (Ecological Metadata Language), garantindo interoperabilidade e riqueza de detalhes sobre coleta e processamento dos dados.

### Análises e visualizações

O script `knb-lter-cwt.1047.14.r` baixa e prepara os dados; `analysis_and_viz.R` realiza a síntese ecológica, integrando dados demográficos individuais com padrões reprodutivos de longo prazo. Primeiro é feito o processamento longitudinal para calcular incremento diamétrico (crescimento) e taxas de mortalidade anual, identificando tendências de vigor biológico entre espécies. Em seguida, a análise espacial mapeia a distribuição das comunidades, permitindo investigar padrões de competição e ocupação de nicho dentro das parcelas.

Também são processadas as séries temporais de produção de sementes, correlacionando o sucesso reprodutivo com as janelas de observação. As visualizações — boxplots de crescimento, gráficos de tendências anuais — transformam os dados tabulares em indicadores visuais da saúde do ecossistema, servindo de base para modelar a vulnerabilidade climática da floresta.

Principais análises em `analysis_and_viz.R`:

- Tendência temporal da produção de sementes (gráfico de linhas, contagem anual por espécie).
- Crescimento de árvores — DBH por espécie (boxplot, mudança entre 2011 e 2014).
- Taxa de mortalidade de árvores (gráfico de barras, mortes registradas por ano).
- Distribuição espacial das árvores (dispersão das coordenadas UTM por espécie).

### Como usar

**Pré-requisitos**: ter o R instalado.

**Pacotes R**:

```r
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
```

**Download dos dados**: o script `knb-lter-cwt.1047.14.r` já inclui a lógica para baixar os dados diretamente do repositório EDI.

**Executar**: abra `knb-lter-cwt.1047.14.r` no RStudio (ou outro ambiente R) e execute-o. Certifique-se de que `analysis_and_viz.R` esteja no mesmo diretório, ou ajuste o caminho conforme necessário.

**Resultados**: os gráficos gerados são salvos como arquivos PNG no diretório de trabalho do script.

---

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests com melhorias, correções ou novas análises.

## Licença

Este projeto é distribuído sob a licença MIT.
