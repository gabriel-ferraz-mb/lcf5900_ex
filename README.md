====== Gabriel Ferraz ======

-----

==== Biografia ====

<html>
<style>
  .contact-links {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 12px;
    margin-bottom: 18px;
  }
  .link-badge {
    display: inline-block;
    padding: 7px 15px;
    border-radius: 6px;
    text-decoration: none !important;
    color: #ffffff !important;
    font-weight: 600;
    font-size: 0.88em;
    letter-spacing: 0.2px;
    transition: opacity 0.2s ease, transform 0.2s ease;
  }
  .link-badge:hover {
    opacity: 0.85;
    transform: translateY(-1px);
  }
  .badge-mail { background-color: #16a085; }
  .badge-git  { background-color: #145a44; }

  .bio-paragraph {
    line-height: 1.65;
    color: #2b2b2b;
    text-align: justify;
    font-size: 1.02em;
  }
</style>

<div class="contact-links">
  <a href="mailto:gabriel.ferraz@usp.br" class="link-badge badge-mail">✉ E-mail</a>
  <a href="https://github.com/gabriel-ferraz-mb" class="link-badge badge-git" target="_blank">🔗 Github</a>
</div>
</html>

{{:opensci:2026:alunos:img_1045.jpg?400|}}

<html>
<p class="bio-paragraph">
  Graduado em Engenharia Agronômica pela ESALQ/USP em 2019, venho atuando no desenvolvimento soluções aplicando técnicas de ciência de dados e geoprocessamento no contexto agrícola, ambiental e ao mercado de carbono. Atualmente sou aluno de mestrado no Programa de Pós-Graduação em Recursos Florestais da ESALQ/USP, desenvolvendo pesquisa em sensoriamento remoto e aprendizado de máquina com foco em Deep Learning.
</p>
</html>

-----

==== Exercícios ====

Apresento aqui o resultado das atividades que desenvolvi durante o curso [[https://edisciplinas.usp.br/course/view.php?id=136806|LCF5900]] (Processamento Reproduzível e Aberto de Dados Científicos, Edição 2026) enquanto explorava diferentes ferramentas de compartilhamento de dados que tornam reproduzíveis as análises que fiz desses dados.

  * **Clima**: dados organizados a partir do material do curso, disponível em [[https://edisciplinas.usp.br/course/view.php?id=127212&section=3#tabs-tree-start|"Organizando Dados Climáticos"]].
  * **Apalaches**: dataset **knb-lter-cwt.1047.14** ("Climate Vulnerability of Southern Appalachian Forests"), do programa de Pesquisa Ecológica de Longa Duração de Coweeta (CWT-LTER), extraído do repositório [[https://edirepository.org/|Environmental Data Initiative]]. Investiga como a dinâmica de crescimento, mortalidade e reprodução de espécies arbóreas nos Apalaches do Sul varia em resposta às condições climáticas.
  * **Araucária**: dados próprios da minha pesquisa de mestrado, voltada à detecção de indivíduos de araucária (Araucaria angustifolia) em imagens de satélite por meio de um modelo de deep learning (YOLO) — veja o repositório [[https://github.com/gabriel-ferraz-mb/araucaria_yolo|araucaria_yolo]].

Os exercícios que criei com base nessas bases de dados podem ser acessados através dos links organizados na tabela abaixo:

<html>
<style>
  .table-container {
    overflow-x: auto;
    margin: 25px 0;
    border-radius: 6px;
    box-shadow: 0 3px 12px rgba(0, 0, 0, 0.1);
  }
  .exercise-table {
    border-collapse: collapse;
    width: 100%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #ffffff;
  }
  .exercise-table thead tr.head-main th {
    background-color: #0d3c2c !important;
    color: #ffffff !important;
  }
  .exercise-table thead tr.head-sub th {
    background-color: #124f39 !important;
    color: #ffffff !important;
    font-size: 0.88em;
  }
  .exercise-table th {
    padding: 12px !important;
    font-weight: 700;
    color: #ffffff !important;
    border: none !important;
  }
  .exercise-table td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #eeeeee;
    vertical-align: middle;
  }
  .exercise-table tbody tr:hover {
    background-color: #f4f9f7;
  }
  .row-label {
    font-weight: 600;
    color: #145a44;
    background-color: #f7faf9;
    border-right: 1px solid #eeeeee;
  }
  .tag {
    display: inline-block;
    padding: 5px 10px;
    margin: 3px 0;
    border-radius: 5px;
    text-decoration: none !important;
    color: #ffffff !important;
    font-weight: 500;
    font-size: 0.85em;
  }
  .tag-doku   { background-color: #2980b9; }
  .tag-git    { background-color: #34495e; }
  .tag-script { background-color: #27ae60; }
  .tag-note   { background-color: #d35400; }
</style>

<div class="table-container">
  <table class="exercise-table">
    <thead>
      <tr class="head-main">
        <th rowspan="2">Ferramenta</th>
        <th colspan="3">Base de Dados</th>
      </tr>
      <tr class="head-sub">
        <th>Clima</th>
        <th>Apalaches</th>
        <th>Araucária</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="row-label">Dokuwiki</td>
        <td><a href="https://guarani.esalq.usp.br/doku.php?id=opensci:2025:modelo:do_1" class="tag tag-doku" target="_blank">📘 do_1</a></td>
        <td><a href="https://guarani.esalq.usp.br/doku.php?id=opensci:2025:modelo:do_2" class="tag tag-doku" target="_blank">📘 do_2</a></td>
        <td><a href="https://guarani.esalq.usp.br/doku.php?id=opensci:2025:modelo:do_3" class="tag tag-doku" target="_blank">📘 do_3</a></td>
      </tr>
      <tr>
        <td class="row-label">Github</td>
        <td><a href="https://github.com/gabriel-ferraz-mb/lcf5900_ex/tree/main/clima" class="tag tag-git" target="_blank">🔗 gi_1</a></td>
        <td><a href="https://github.com/gabriel-ferraz-mb/lcf5900_ex/tree/main/dado_externo" class="tag tag-git" target="_blank">🔗 gi_2</a></td>
        <td><a href="https://github.com/gabriel-ferraz-mb/araucaria_yolo" class="tag tag-git" target="_blank">🔗 gi_3</a></td>
      </tr>
      <tr>
        <td class="row-label">Posit Cloud</td>
        <td><a href="https://posit.cloud/content/12539686" class="tag tag-script" target="_blank">🧮 sc_1</a></td>
        <td><a href="https://posit.cloud/content/12586915" class="tag tag-script" target="_blank">🧮 sc_2</a></td>
        <td><a href="" class="tag tag-script" target="_blank">🧮 sc_3</a></td>
      </tr>
      <tr>
        <td class="row-label">Notebook</td>
        <td><a href="" class="tag tag-note" target="_blank">📔 co_1</a></td>
        <td><a href="" class="tag tag-note" target="_blank">📔 co_2</a></td>
        <td><a href="https://github.com/gabriel-ferraz-mb/araucaria_yolo/blob/main/codes/2_TrainYOLO.py" class="tag tag-note" target="_blank">📔 co_3</a></td>
      </tr>
    </tbody>
  </table>
</div>
</html>

Ao clicar em **do_#**, acessa-se uma página no [[https://www.dokuwiki.org/dokuwiki|Dokuwiki]] com uma explicação detalhada do exercício envolvendo o respectivo conjunto de dados.

Ao clicar em **gi_#**, acessa-se a plataforma [[https://github.com/|GitHub]], que dá acesso aos dados brutos e à documentação complementar do respectivo conjunto de dados.

Ao clicar em **sc_#**, acessa-se a plataforma [[https://posit.cloud/plans/free|Posit Cloud]] com o script utilizado para analisar o respectivo conjunto de dados.

Ao clicar em **co_#**, acessa-se o caderno [[https://colab.google/|Google Colab]] ou [[https://jupyter.org/try|Jupyter Notebook]] com a análise do respectivo conjunto de dados, incluindo o código R ou Python utilizado.
