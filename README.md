# <span style='font-size:200px;'>&#80;</span><span style='font-size:200px;'>&#84;</span> 

## Objetivo

Este projeto teve como principal objetivo consolidar conhecimentos fundamentais de modelação e implementação de bases de dados relacionais. Ao longo do desenvolvimento foram trabalhados conceitos como criação de tabelas, definição de ***chaves primárias*** e ***estrangeiras***, ***normalização de dados***, ***integridade referencial*** e ***aplicação de regras de negócio*** diretamente ao nível da base de dados. Foram ainda exploradas relações do tipo ***um-para-muitos*** e ***muitos-para-muitos***, bem como a utilização de constraints como ***UNIQUE***, ***CHECK***, ***ON DELETE*** e ***ON UPDATE***. Este projeto permitiu desenvolver competências na estruturação lógica de informação, prevenção de inconsistências e construção de modelos de dados robustos e coerentes, aproximando-se de cenários reais de desenvolvimento.

## <span style='font-size:200px;'>&#128193;</span> Ficheiros

[Enunciado](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Enunciado%20Editora.txt)


[Resolução](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Codigo_Resolucao_Editora.sql)

[Inserts](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Inserts.sql)

[Selects](https://github.com/fabiensantos/PostgreSQL/blob/Editora)


## <span style='font-size:200px;'>&#119068;</span> Modelação
<img width="960" height="578" alt="image" src="https://github.com/user-attachments/assets/cef0eb9f-9887-47f2-9097-6a43d214c5cd" />

## <span style='font-size:200px;'>&#129504;</span> Conteudos
  <details>
  <summary>Comandos utilizados</summary>
    <ul>
    <li><b>CREATE DATABASE</b></li>
    <li><b>CREATE TABLE IF NOT EXISTS</b></li>
    <li><b>SERIAL</b></li>
    <li><b>PRIMARY KEY</b></li>
    <li><b>NOT NULL</b></li>
    <li><b>UNIQUE</b></li>
    <li><b>FOREIGN KEY</b></li>
    <li><b>ON DELETE</b></li>
      <ul>
        <li><b>ON DELETE RESTRICT</b></li>
        <li><b>ON DELETE CASCADE</b></li>
        <li><b>ON DELETE SET DEFAULT</b></li>
      </ul>
    <li><b>ON UPDATE CASCADE</b></li>
    <li><b>CHECK</b></li>
    <li><b>DEFAULT</b></li>
    <li><b>INSERT INTO</b></li>
  </ul>
  </details>
  <details>
  <summary>Conceitos</summary>
    <ul>
    <li><b>Modelo Relacional</b></li>
    <li><b>Entidades</b></li>
    <li><b>Tabela Relacional</b></li>
    <li><b>Cardinalidade</b></li>
    <li><b>Integridade Referencial</b></li>
    <li><b>Integridade de Dominio</b></li>
    <li><b>Regras de Negócio</b></li>
      <ul>
        <li><b>Exemplos:</b></li>
        <ul>
            <li><b>Rating entre 1 e 5</b></li>
            <li><b>Email único</b></li>
            <li><b>ISBN único</b></li>
            <li><b>Livro apenas pode ter 1 género</b></li>
            <li><b>Reviews apagadas quando o livro é apagado</b></li>
        </ul>
      </ul>
    </ul>
  </details>
  
<span style='font-size:100px;'>&#127968;</span>[Main](https://github.com/fabiensantos/PostgreSQL/tree/main)



<hr>

# <span style='font-size:200px;'>&#69;</span><span style='font-size:200px;'>&#78;</span><span style='font-size:200px;'>&#71;</span>

## Objective

The main objective of this project was to consolidate fundamental knowledge in the modelling and implementation of relational databases. Throughout the development process, key concepts were explored, such as table creation, definition of ***primary keys*** and ***foreign keys***, ***data normalisation***, ***referential integrity***, and the ***application of business rules*** directly at database level. Relationships of the ***one-to-many*** and ***many-to-many*** types were also implemented, along with the use of constraints such as ***UNIQUE***, ***CHECK***, ***ON DELETE***, and ***ON UPDATE***.

This project enabled the development of skills in logical data structuring, prevention of inconsistencies, and the construction of robust and coherent data models, closely reflecting real-world development scenarios.

## <span style='font-size:200px;'>📁</span> Files

[Specification](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Enunciado%20Editora.txt)

[Solution](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Codigo_Resolucao_Editora.sql)

[Inserts](https://github.com/fabiensantos/PostgreSQL/blob/Editora/Inserts.sql)

[Select Statements](https://github.com/fabiensantos/PostgreSQL/blob/Editora)

## <span style='font-size:200px;'>𝄜</span> Modelling

<img width="960" height="578" alt="image" src="https://github.com/user-attachments/assets/cef0eb9f-9887-47f2-9097-6a43d214c5cd" />

## <span style='font-size:200px;'>🧠</span> Contents

<details>
<summary>Commands Used</summary>
  <ul>
  <li><b>CREATE DATABASE</b></li>
  <li><b>CREATE TABLE IF NOT EXISTS</b></li>
  <li><b>SERIAL</b></li>
  <li><b>PRIMARY KEY</b></li>
  <li><b>NOT NULL</b></li>
  <li><b>UNIQUE</b></li>
  <li><b>FOREIGN KEY</b></li>
  <li><b>ON DELETE</b></li>
    <ul>
      <li><b>ON DELETE RESTRICT</b></li>
      <li><b>ON DELETE CASCADE</b></li>
      <li><b>ON DELETE SET DEFAULT</b></li>
    </ul>
  <li><b>ON UPDATE CASCADE</b></li>
  <li><b>CHECK</b></li>
  <li><b>DEFAULT</b></li>
  <li><b>INSERT INTO</b></li>
</ul>
</details>

<details>
<summary>Concepts</summary>
  <ul>
  <li><b>Relational Model</b></li>
  <li><b>Entities</b></li>
  <li><b>Relational Table</b></li>
  <li><b>Cardinality</b></li>
  <li><b>Referential Integrity</b></li>
  <li><b>Domain Integrity</b></li>
  <li><b>Business Rules</b></li>
    <ul>
      <li><b>Examples:</b></li>
      <ul>
          <li><b>Rating between 1 and 5</b></li>
          <li><b>Unique email</b></li>
          <li><b>Unique ISBN</b></li>
          <li><b>A book can only have one genre</b></li>
          <li><b>Reviews are deleted when the book is deleted</b></li>
      </ul>
    </ul>
  </ul>
</details>

<span style='font-size:200px;'>🏠</span>[Main](https://github.com/fabiensantos/PostgreSQL/tree/main)

