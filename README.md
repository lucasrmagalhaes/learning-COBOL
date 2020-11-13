# Cobol - COmmon Business Oriented Language

## 1. Estrutura da Linguagem

### IDE
- OpenCobolIDE

### Estrutura do Curso
- Niveis de Variaveis
- Comandos de Decisao
- Comandos de Repeticao
- Aproveitamento de Codigo
- Padroes de Mercado

### Glot
- Ambiente para trabalhar online.
- Diversas linguagens disponiveis.
- URL: https://glot.io

### Jdoodle
- Ambiente para trabalhar online.
- Permite salvar projetos e ter galerias por linguagem.
- URL: https://www.jdoodle.com

### Paiza
- Ambiente para trabalhar online.
- URL: https://paiza.io/en

### OpenCobolIDE
- Linux
- URL: https://pypi.org/project/OpenCobolIDE/#files
- Windows e Debian
- URL: https://launchpad.net/cobcide/+download
- Instalacao: Next, next... finish.

### Configurando o Ambiente
- Preferences, atalho: F2
- Font Size: Alterado para 14.
- Output Directory: Alterado para o diretorio de preferencia.

### Hierarquia de um programa COBOL
1. PROGRAMA COBOL
    1.1 DIVISION
        1.1.1 SECTION
            1.1.1.1 PARAGRAPH
                1.1.1.1.1 SENTENCE
                    1.1.1.1.1 STATEMENT

- A escrita do COBOL deve obedecer algumas regras de posicionamento:

....|....1....|....2....|....3....|....4....|....5....|....6....|....7....|....80

- O que e permitido em cada coluna:

Colunas de 1 a 6:
Area livre - Remarks

Coluna 7:
Area de indicacao
* comentario
- continuacao de linha

Colunas de 8 a 11:
Area A
divisoes, secoes, paragrafos e declaracao de Variaveis

Colunas de 12 a 72:
Area B
Comandos

Colunas de 73 a 80:
Numeracao interna do COBOL

### Divisoes
- O COBOL possui 4 divisoes:

Identification Division -> Basico
Enviroment Division -> Exemplo: Separador decimal nao e o ponto e a virgula.
Data Division -> Variaveis
Procedure Division

- Dificilmente um programa nao ira ter as 4.

IDENTIFICATION DIVISION.
    PROGRAM-ID.     nome-programa.
    AUTHOR.     autor.

- Nome do programa e obrigatorio.
- Geralmente o nome da fonte e o nome do programa.

ENVIROMENT DIVISION.

CONFIGURATION SECTION.
SPECIAL-NAMES.
    DECIMAL POINT IS COMMA.
INPUT-OUTPUT SECTION.
FILE-CONTROL.

- COMMA = Virgula
- Secao diz que o ponto decimal e virgual no lugar do ponto que e o padrao.
- Segunda secao e responsavel pela entrada e saida de arquivos.

DATA DIVISION.

FILE SECTION.
WORKING-STORAGE SECTION.
LINKAGE SECTION.

- Divisao dos dados.
- 3 secoes.
- Primeira: Variaveis que vao se relacionar com arquivos.
- Segunda: Variaveis abertas/publicas/locais.
- Terceira: Variaveis usadas para trocar entre programas, um programa chama o outro e na hora que chama passa um valor.valor

PROCEDURE DIVISION.

100-PARAGRACO-A.
    comando
    comando
    comando.
    200-PARAGRAFO-E.
        comandos.
300-PARAGRAFO-I.
    comandos
    comandos.
400-PARAGRAFO-O.
    comando
    comando
    comando.
    comandos
    comandos.

- O que o programa deve fazer.
- Logica vai estar aqui.
- Secao que da vida ao programa.

- Essas 4 divisoes elas compoem as divisoes basicas do COBOL.
