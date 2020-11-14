# COmmon Business Oriented Language

## 1. Estrutura da Linguagem

#### IDE
- OpenCobolIDE

#### Estrutura do Curso
- Níveis de Variáveis
- Comandos de Decisão
- Comandos de Repetição
- Aproveitamento de Código
- Padrões de Mercado

#### Glot
- Ambiente para trabalhar online.
- Diversas linguagens disponíveis.
- URL: https://glot.io

#### Jdoodle
- Ambiente para trabalhar online.
- Permite salvar projetos e ter galerias por linguagem.
- URL: https://www.jdoodle.com

#### Paiza
- Ambiente para trabalhar online.
- URL: https://paiza.io/en

#### OpenCobolIDE
Linux
- URL: https://pypi.org/project/OpenCobolIDE/#files

Instalação via terminal:
<pre>
# apt-get update
# apt-get install open-cobol
# cobc -V
# pip3 install OpenCobolIDE --upgrade
</pre>

Windows e Debian
- URL: https://launchpad.net/cobcide/+download
- Instalação: Next, next... finish.

#### Configurando o Ambiente
- Preferences, atalho: F2
- Font Size: Alterado para 14.
- Output Directory: Alterado para o diretório de preferência.

#### Hierarquia de um programa COBOL

<pre>
1. PROGRAMA COBOL
    1.1 DIVISION
        1.1.1 SECTION
            1.1.1.1 PARAGRAPH
                1.1.1.1.1 SENTENCE
                    1.1.1.1.1 STATEMENT
</pre>

#### A escrita do COBOL deve obedecer algumas regras de posicionamento:

....|....1....|....2....|....3....|....4....|....5....|....6....|....7....|....80

#### O que é permitido em cada coluna:

##### Colunas de 1 a 6:
- Área livre - Remarks

##### Coluna 7:
- Área de indicação
- comentário = *
- continuação de linha = -

##### Colunas de 8 a 11:
- Área A
- divisões, seções, parágrafos e declaração de variáveis

##### Colunas de 12 a 72:
- Área B
- Comandos

##### Colunas de 73 a 80:
- Numeração interna do COBOL

#### Divisões:
O COBOL possui 4 divisões:

- **Identification Division** -> Básico
- **Enviroment Division** -> Exemplo: Separador decimal não é o ponto e sim a vírgula.
- ****Data Division**** -> Variáveis
- ****Procedure Division****

###### DifIcilmente um programa nao irá ter as 4.

<pre>
IDENTIFICATION DIVISION.
    PROGRAM-ID.     nome-programa.
    AUTHOR.     autor.
</pre>

- Nome do programa é obrigatório.
- Geralmente o nome da fonte é o nome do programa.

<pre>
ENVIROMENT DIVISION.

CONFIGURATION SECTION.
SPECIAL-NAMES.
    DECIMAL POINT IS COMMA.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
</pre>

- COMMA = Virgula
- Seção diz que o ponto decimal é vírgula no lugar do ponto que é o padrão.
- Segunda seção é responsável pela entrada e saída de arquivos.

<pre>
DATA DIVISION.

FILE SECTION.
WORKING-STORAGE SECTION.
LINKAGE SECTION.
</pre>

- Divisao dos dados.
- 3 seções.
- Primeira: Variáveis que vão se relacionar com arquivos.
- Segunda: Variáveis abertas/públicas/locais.
- Terceira: Variáveis usadas para trocar entre programas, um programa chama o outro e na hora que chama passa um valor.

<pre>
PROCEDURE DIVISION.

100-PARÁGRAFO-A.
    comando
    comando
    comando.
    200-PARAGRAFO-E.
        comandos.
300-PARÁGRAFO-I.
    comandos
    comandos.
400-PARÁGRAFO-O.
    comando
    comando
    comando.
    comandos
    comandos.
</pre>

- O que o programa deve fazer.
- Lógica vai estar aqui.
- Seção que dá vida ao programa.

##### Essas 4 divisões compoem as divisões básicas do COBOL.
