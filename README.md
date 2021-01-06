<p align="center">
  <img src="https://github.com/lucasrmagalhaes/learning-COBOL/blob/main/img/COBOL.jpg" alt="COBOL" width=300 height=150>
</p>

<p align="center">
  <strong>CO</strong>mmon <strong>B</strong>usiness <strong>O</strong>riented <strong>L</strong>anguage
</p>

> Linguagem comum orientada a negócios é uma das linguagens de programação mais antigas, pertecendo à segunda geração das linguagens de programação. É muito utilizada em aplicações voltadas para o mundo financeiro, devido à sua precisão e rapidez na aritmética de ponto flutuante.

> Grace Murray Hopper foi almirante e, Analista de Sistemas da Marinha dos Estados Unidos nas décadas de 1940 e 1950, criadora da linguagem de programação de alto nível Flow-Matic — base para a criação do COBOL — e uma das primeiras programadoras do computador Harvard Mark I em 1944.

<details>
    <summary>Cobol: Primeiros Passos</summary>
  
## Estrutura da Linguagem

### Apresentação  
- [Documentação Oficial do Cobol](https://gnucobol.sourceforge.io/guides/GNUCobol2.pdf "Documentação Oficial do Cobol")
- [Conhecendo Melhor Grace Hopper](https://youtu.be/eAlIiKFRryw "Conhecendo melhor Grace Hopper")

### IDE
- OpenCobolIDE

### Estrutura do Curso
- Níveis de Variáveis
- Comandos de Decisão
- Comandos de Repetição
- Aproveitamento de Código
- Padrões de Mercado

### [Glot](https://glot.io "Glot")
- Ambiente para trabalhar online.
- Diversas linguagens disponíveis.

### [Jdoodle](https://www.jdoodle.com "Jdoodle")
- Ambiente para trabalhar online.
- Permite salvar projetos e ter galerias por linguagem.

### [Paiza](https://paiza.io/en "Paiza")
- Ambiente para trabalhar online.

### [OpenCobolIDE](https://pypi.org/project/OpenCobolIDE/#files "OpenCobolIDE")
- [Versão - Windows e Debian](https://launchpad.net/cobcide/+download "Windows e Debian") 
- [Visual Studio: Extensão - Rech Cobol](https://marketplace.visualstudio.com/items?itemName=rechinformatica.rech-editor-cobol "Rech Cobol")

### Maneira rápida de compilar no Linux

- Instalações

<pre>
# apt-get install open-cobol
# apt-get install gedit
</pre>

- Testando

<pre>
# mkdir cobol
# cd cobol
# touch exemplo.cbl
# gedit exemplo.cbl
</pre>

- Rodando

<pre>
cobc -x -o exemplo.exe exemplo.cbl
./exemplo.exe

-x --> Suporte para criar um executável.
-o --> É para especificar a saída do nome de arquivo.
</pre>

### Configurando o Ambiente
- Preferences, atalho: F2
- Font Size: Alterado para 14.
- Output Directory: Alterado para o diretório de preferência.

### Hierarquia de um programa COBOL

<pre>
1. PROGRAMA COBOL
    1.1 DIVISION
        1.1.1 SECTION
            1.1.1.1 PARAGRAPH
                1.1.1.1.1 SENTENCE
                    1.1.1.1.1 STATEMENT
</pre>

### A escrita do COBOL 
- Deve obedecer algumas regras de posicionamento:

....|....1....|....2....|....3....|....4....|....5....|....6....|....7....|....80

### O que é permitido em cada coluna

#### Colunas de 1 a 6
- Área livre - Remarks

#### Coluna 7
- Área de indicação
- comentário = *
- continuação de linha = -

#### Colunas de 8 a 11
- Área A
- divisões, seções, parágrafos e declaração de variáveis

#### Colunas de 12 a 72
- Área B
- Comandos

#### Colunas de 73 a 80
- Numeração interna do COBOL

### Divisões

#### Possui 4 divisões

- Identification Division -> Básico
- Enviroment Division -> Exemplo: Separador decimal não é o ponto e sim a vírgula.
- Data Division -> Variáveis
- Procedure Division
- Difícilmente um programa nao irá ter as 4.

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

Essas 4 divisões compoem as divisões básicas do COBOL.

### Executando um Programa COBOL
- Atualmente, existem dois ambientes onde podemos executar programas escritos em Cobol: Alta plataforma (Mainframe) e Plataforma Open (Windows, Linux).
- No Mainframe, além do programa fonte, o que mais precisamos para compilar/executar rotinas em Cobol em modo Batch ?

***Resposta***
- Rotinas JCL

***Explicação***
- No mainframe, existem dois modos de trabalho: Batch e Online. No Batch, o usuário precisa solicitar (executar) as rotinas, seja em Cobol ou qualquer outra linguagem. Cada execução tem seu controle de acesso, tempo feito pelo JCL.

### Regras de um Programa COBOL
- Na construção de um programa Cobol, quais das regras abaixo precisamos respeitar para executar sem erros?

***Resposta***
- Remarks são utilizados para documentar alterações no código fonte.
- Divisões, Seções e Parágrafos devem iniciar na Área A (colunas 8 a 11).

***Explicação***
- O Cobol não utiliza as colunas 1 a 6, portanto as aproveitamos para fazer marcações de alteração. É uma prática comum de mercado.
- O Cobol tem duas áreas: A (8 a 11) para identificar divisões, seções, parágrafos e B (12 a 72) para comandos.

## Comandos Básicos e Variáveis</summary>

### Criando o primeiro programa

#### PROGCOB01

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB01.
      *****************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = XX/XX/XXXX
      * OBJETIVO: MOSTRAR A STRING HELLO ALURA
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       PROCEDURE DIVISION.
          DISPLAY 'HELLO ALURA'.
          STOP RUN.
</pre>

- DISPLAY - Mostrar o texto.
- STOP RUN - Terminar o programa.

### Variável Nível 77

#### PROGCOB02

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *****************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = XX/XX/XXXX
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME     PIC X(20)  VALUE SPACES. -> Cria. Define o nome e tamanho da variável.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOME FROM CONSOLE. -> Recebe. Recebe o nome do usuário.
          DISPLAY 'NOME: ' WRK-NOME(1:3). -> Mostra. Mostra na tela.
          STOP RUN. -> Termina o programa.
</pre>

- WORKING-STORAGE SECTION -> Declaração das variáveis. Nesse exemplo uma váriavel local.
- PIC ou PICTURA -> Definir a máscara/tipo que a variável irá ter.
- WRK -> Padrão que geralmente as empresas utilizam.
- PIC X(20) -> Tamanho da variável.
- VALUE SPACES -> Boa prática.
- ZEROS ou 0 -> Mais utilizado é ZEROS.
- ACCEPT exemplo FROM CONSOLE -> Nome recebido do Output. FROM CONSOLE é opcional.
- WRK-NOME(1:3) -> Primeira palavra vai pegar 3 letras/posições.
- Tipo A: Conteúdo Alfábetico - somente letras. - não aceita.
- Tipo X: Alfanumérico. Aceita letras, números e símbolos. É o mais indicado.
- Tipo 9: Números - Geralmente operações matemáticas.

### Variável Nível 01

#### PROGCOB03

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = XX/XX/XXXX
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR VARIAVEIS NIVEL 01.02... (ESTRUTURADA)
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04)  VALUE ZEROS.
           02 WRK-MES PIC 9(02)  VALUE ZEROS.
           02 WRK-DIA PIC 9(02)  VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-DATA FROM DATE YYYYMMDD.
          DISPLAY 'DATA ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
          STOP RUN.
</pre>

### Vírgula e Máscara de Edição

#### PROGCOB04

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = 16/11/2020
      * OBJETIVO: RECEBER NOME E SALÁRIO
      * IMPRIMIR FORMATADO - USO DA VÍRGULA
      **************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      * Definindo o ponto como vírgula.
           SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME           PIC X(20) VALUE SPACES.
      * V99
      * V = Vírgula
      * 99 quantidades de casas. = 02 casas. EX.: 000000,00
       77 WRK-SALARIO        PIC 9(06)V99 VALUE ZEROS.
      * Contém os 9 porque caso o número seja 0 é necessário mostrar.
      * 9 irá listar 0. Z irá omitir os zeros.
       77 WRK-SALARIO-ED     PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOME    FROM CONSOLE.
          ACCEPT WRK-SALARIO FROM CONSOLE.
      ************ MOSTRA DADOS
          DISPLAY 'NOME: ' WRK-NOME.
      * Movendo o valor de uma váriavel para outra variável.
          MOVE WRK-SALARIO TO WRK-SALARIO-ED.
          DISPLAY 'SALARIO: ' WRK-SALARIO-ED.
          STOP RUN.
</pre>

- Z -> Máscara Z serve para omitir valores zerados.

### Trabalhando com Variáveis
- Em Cobol, as variáveis devem ser iniciadas com um número de nível associado, determinando que o nível superior será responsável (pai) pelo nível inferior. No exemplo abaixo, quais níveis poderiam ser utilizados para criação de um grupo de variáveis?

a) __ wrk-data.

b) __ wrk-ano  pic x(04).  
b) __ wrk-mes  pic x(02).  
b) __ wrk-dia  pic x(02).  

***Resposta***
- Nivel 01 / b) Nivel 02

***Explicação da Alternativa Correta***
- Nível 01 é o menor nível aceito pelo Cobol. Quando for utilizado como variável de grupo, deverá conter abaixo outras variáveis começando pelo nível 02 até 49 . 
- Se a variável for iniciada com nível 01 e não contiver outras variáveis , torna-se variável simples de um elemento.

***Explicação das Alternativas Incorretas***
a) Nivel 77 / b) Nivel 88
- Nível 77 é utilizado no Cobol para declarar variáveis de um elemento (conteúdo) apenas. 
- Nível 88 é utilizado para valores lógicos. Deve ser associado a uma variável de grupo.

a) Nivel 99 / b) Nivel 100
- Não existe nível 99 em Cobol. Máximo até 88.

### Máscaras de Edição

Z	
- This character can be used in the place of 9, whenever you want to display the value to spool/report. It replace all leading zeros with spaces while printing to output. 
- Example: PIC ZZ999.

$	
- One $ character code can appear on leftmost position of a picture clause. 
- Example: PIC $99999.

`*`	
- This character is similar to code character Z. This character will replace leading zeros with character *. 
- Example: PIC ****99.

`-`	
- Only one - character can be used in one picture clause. This character can appear either at the leftmost or rightmost position of a picture clause. If value is negative, it will display the — sign. If the value is positive, it will display the space in the place of — sign. 
- Example: PIC -9999. PIC 9999-.

`+`	
- This character has the same meaning of — sign. Only difference is it will display the + sign when the value is positive. Note that it will display — sign, when the value is negative. 
- Example: PIC +9999. PIC 9999+.

. (period)	
- This character is used to represent decimal position in a numeric value. 
- Example: PIC 9(4).9(2).

, (comma)	
- This character code is used to display amount values. 
- Example: PIC ZZZ9,99,99.

### CPF

#### PROGCOBCPF

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBCPF.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = 16/11/2020
      * OBJETIVO: RECEBER O CPF
      * IMPRIMIR O CPF FORMATADO
      **************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-CPF     PIC X(11) VALUE ZEROS.
       77 WRK-CPF-ED  PIC ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
          ACCEPT WRK-CPF.
          MOVE WRK-CPF TO WRK-CPF-ED.
          DISPLAY 'CPF: ' WRK-CPF-ED.
</pre>

## Operadores Aritméticos

### Testando os Operadores Aritméticos

#### PROGCOB05

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS LRM
      * DATA: 16/11/2020
      * OBJETIVO: TESTAR OS OPERADORES ARITMETICOS
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2  PIC 9(02)  VALUE ZEROS.
       77 WRK-RESUL PIC 9(04)  VALUE ZEROS.
       77 WRK-RESTO PIC 9(02)  VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NUM1 FROM CONSOLE.
          ACCEPT WRK-NUM2 FROM CONSOLE.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 1: ' WRK-NUM1.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 2: ' WRK-NUM2.
          DISPLAY '=============================='
      *************** SOMA 
          ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** SUBTRACAO
          SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** DIVISAO
          DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
      *************** RESTO
      	  REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO: ' WRK-RESUL.
           DISPLAY 'RESTO: ' WRK-RESTO.
           DISPLAY '=============================='
      *************** MULTIPLICACAO
          MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** MEDIA
          COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA: ' WRK-RESUL.
           DISPLAY '=============================='
          STOP RUN.
</pre>

### Cálculo de Média Aritmética
- Considerando as variáveis N1, N2, N3 e N4 como notas do aluno nos quatro bimestres escolares, qual a sequência correta para calcular sua média na variável Resultado?

***Resposta***
<pre>
ADD N1 N2 N3 N4 TO Resultado
DIVIDE Resultado BY 4 GIVING Resultado
</pre>

***Explicação da Alternativa Correta***
- Correto! Primeiro, faremos a soma das quatro variáveis, acumulando o valor na variável Resultado. 
- Na sequência, dividiremos Resultado por 4, retornando o valor para a própria variável Resultado.

### Valores Positivos e Negativos

#### PROGCOB06

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS LRM
      * DATA: 18/11/2020
      * OBJETIVO: USO DO SINAL - e +
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  	PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2  	PIC 9(02)  VALUE ZEROS.
      *************** SINAL = S
       77 WRK-RESUL 	PIC S9(03) VALUE ZEROS.
      *************** FORMATACAO
       77 WRK-RESUL-ED  PIC -ZZ9   VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NUM1 FROM CONSOLE.
          ACCEPT WRK-NUM2 FROM CONSOLE.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 1: ' WRK-NUM1.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 2: ' WRK-NUM2.
          DISPLAY '=============================='
      *************** SUBTRACAO - PARA FUNCIONAR INVERTER AS VARIAVEIS
          SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL-ED.
           DISPLAY '=============================='
          STOP RUN.
</pre>

## Tomando Decisões e Operadores Relacionais

### Comando IF/ELSE/END-IF

#### PROGCOB07

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 18/11/2020
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR OS COMANDOS IF/ELSE/ENDIF
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOTA1.
          ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             DISPLAY 'NOTA 1: ' WRK-NOTA1
             DISPLAY 'NOTA 2: ' WRK-NOTA2
             DISPLAY 'MEDIA: ' WRK-MEDIA.
               IF WRK-MEDIA >= 7
          	     DISPLAY 'SITUACAO: APROVADO'
          	ELSE
          	      IF WRK-MEDIA >= 2
          	      	  DISPLAY 'SITUACAO: RECUPERACAO'
          	      ELSE 
          	       DISPLAY 'SITUACAO: REPROVADO'
               END-IF.
          DISPLAY 'MEDIA: ' WRK-MEDIA.
          STOP RUN.
</pre>

### Aplicando um Desconto
- Considerando as variáveis Valor (valor do produto) e Bandeira (operadora do cartão), quais rotinas são corretas para aplicarmos desconto de 10% quando o valor for maior ou igual a R$1000,00 e bandeira igual a VISA?

***Resposta***
<pre>
IF Valor >= 1000 
    IF Bandeira = “VISA”
     COMPUTE Desconto = Valor * 0,10
</pre>

<pre>
IF Valor >= 1000 AND Bandeira = “VISA”
     COMPUTE Desconto = Valor * 0,10
</pre>

***Explicação da Alternativa Correta***
- Podemos fazer o teste das condições em dois IFs separados, porém com dependência entre eles.
- Com o uso do operador AND, as duas condições precisam ser verdadeiras para aplicação do desconto.

### Comando EVALUETE

#### PROGCOB08

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 18/11/2020
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR OS COMANDOS IF/ELSE/ENDIF
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOTA1.
          ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             DISPLAY 'MEDIA: ' WRK-MEDIA.
      ************* EVALUETE - IF PESADO
              EVALUATE WRK-MEDIA
              	WHEN 10
              	   DISPLAY 'APROVADO + BONUS'
              	WHEN 7 THRU 10
              		DISPLAY 'SITUACAO: APROVADO'
              	WHEN 2 THRU 6
              		DISPLAY 'RECUPERACAO'
              	WHEN OTHER
              		DISPLAY 'REPROVADO'    
              END-EVALUATE.
          DISPLAY 'MEDIA: ' WRK-MEDIA.
          STOP RUN.
</pre>

### Comparando Valores

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 18/11/2020
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR OS COMANDOS IF/ELSE/ENDIF
      **************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       	   DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOTA1.
          ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             DISPLAY 'MEDIA: ' WRK-MEDIA.
      ************* EVALUETE - IF PESADO
              EVALUATE WRK-MEDIA
              	WHEN 10
              	   DISPLAY 'APROVADO + BONUS'
              	WHEN 6 THRU 9,9
              		DISPLAY 'SITUACAO: APROVADO'
              	WHEN 2 THRU 5,9
              		DISPLAY 'RECUPERACAO'
              	WHEN OTHER
              		DISPLAY 'REPROVADO'    
              END-EVALUATE.
          STOP RUN.
</pre>

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      *******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 27/11/2020
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR O FRETE
      * UTILIZAR COMANDO EVALUATE
      *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO  PIC X(20)       VALUE SPACES.
       77 WRK-UF       PIC X(02)       VALUE SPACES.
       77 WRK-VALOR    PIC 9(06)V99    VALUE ZEROS.
       77 WRK-FRETE    PIC 9(04)V99    VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO: '
           ACCEPT WRK-PRODUTO.

           DISPLAY 'VALOR: '
           ACCEPT WRK-VALOR.

           DISPLAY 'ESTADO A ENTREGAR: '
           ACCEPT WRK-UF.

           EVALUATE WRK-UF
             WHEN 'SP'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,05
             WHEN 'RJ'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,10
             WHEN 'MG'
               COMPUTE WRK-FRETE = WRK-VALOR * 1,15
             WHEN OTHER
               DISPLAY 'NAO PODEMOS ENTREGAR '
             END-EVALUATE.

             DISPLAY '==================='.
               IF WRK-FRETE NOT EQUAL 0

                   DISPLAY 'VALOR DO FRETE COM PRODUTO ' WRK-FRETE
               END-IF.
               STOP RUN.
</pre>

### Variável Nível 88 - Lógica

#### PROGCOB10

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      *******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 27/11/2020
      * OBJETIVO: RECEBER USUARIO E NIVEL
      * UTILIZAR: VARIAVEL NIVEL 88 - LOGICA
      *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO      PIC X(20)   VALUE SPACES.
       77 WRK-NIVEL        PIC 9(02)   VALUE ZEROS.
           88 ADM      VALUE 01.
           88 USER     VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO: '
           ACCEPT WRK-USUARIO.

           DISPLAY 'NIVEL: '
           ACCEPT WRK-NIVEL.
           
           IF ADM
               DISPLAY 'NIVEL - ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NIVEL - USUARIO'
               ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO'
               END-IF
           END-IF.
           STOP RUN.
</pre>

### Operadores Relacionais

#### PROGCOB11

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      *******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 27/11/2020
      * OBJETIVO 1: RECEBER LARGURA E COMPRIMENTO
      * OBJETIVO 2: CALCULAR AREA
      *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA      PIC 9(03)V99   VALUE ZEROS.
       77 WRK-COMPRIMENTO  PIC 9(03)V99   VALUE ZEROS.
       77 WRK-AREA         PIC 9(03)V99   VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'LARGURA: '
           ACCEPT WRK-LARGURA.

           DISPLAY 'COMPRIMENTO: '
           ACCEPT WRK-COMPRIMENTO.
           
           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY '---------------'
               DISPLAY 'AREA: ' WRK-AREA
           ELSE
               DISPLAY 'FALTA INFORMAR ALGO'
           END-IF.

           STOP RUN.
</pre>

### Aumento Salarial

#### PROGCOBAUMENTOSALARIAL

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBAUMENTOSALARIAL.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME           PIC X(30)      VALUE SPACES.
       77 WRK-ANOENTRADA     PIC 9(04)      VALUE ZEROS.
       77 WRK-SALARIO        PIC 9(06)V99   VALUE ZEROS.
       77 WRK-AUMENTO        PIC 9(03)V99   VALUE ZEROS.
       77 WRK-TEMPOCASA      PIC 9(02)      VALUE ZEROS.
       
       01 WRK-DATASISTEMA.
           02 WRK-DATAANO PIC 9(04).
           02 WRK-DATAMES PIC 9(02).
           02 WRK-DATADIA PIC 9(02).

       PROCEDURE DIVISION.
           ACCEPT WRK-DATASISTEMA FROM DATE YYYYMMDD.

           DISPLAY 'NOME DO FUNCIONARIO '.
               ACCEPT WRK-NOME.
           DISPLAY 'ANO DE ENTRADA NA EMPRESA '.
               ACCEPT WRK-ANOENTRADA.
           DISPLAY 'SALARIO ATUAL '
               ACCEPT WRK-SALARIO.

           COMPUTE WRK-TEMPOCASA = WRK-DATAANO - WRK-ANOENTRADA.
           DISPLAY 'TEMPO DE CASA ' WRK-TEMPOCASA ' ANO(S)'.

           EVALUATE WRK-TEMPOCASA
               WHEN 0 THRU 1 
                   COMPUTE WRK-AUMENTO = 0
               WHEN 2 THRU 5
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,05
               WHEN 6 THRU 15
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,10    
               WHEN OTHER
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,15      
           END-EVALUATE.
               DISPLAY 'AUMENTO SALARIO DE  ' WRK-AUMENTO.
               STOP RUN.
</pre>

## Lógica Estruturada e Uso de Parágrafos

### Parágrafos e Lógica Estruturada

#### PROGCOB12

<pre>
        IDENTIFICATION DIVISION.
      	PROGRAM-ID. PROGCOB12.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 28/11/2020
      * OBJETIVO: Parágrafos e Lógica Estruturada
      **************************************************
      	ENVIRONMENT DIVISION.
      	DATA DIVISION.
      	WORKING-STORAGE SECTION.
      	77 WRK-NOTA1     PIC 9(02)      VALUE ZEROS.
      	77 WRK-NOTA2     PIC 9(02)      VALUE ZEROS.
      	77 WRK-MEDIA     PIC 9(02)V9    VALUE ZEROS.
      	
      	PROCEDURE DIVISION.
      	0001-PRINCIPAL.
      		PERFORM 0100-INICIALIZAR.
      		IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
      			PERFORM 0200-PROCESSAR
      		END-IF.
      		PERFORM 0300-FINALIZAR. 
               
           	STOP RUN.
           	
      	0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
           
      	0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           DISPLAY 'MEDIA ' WRK-MEDIA.
           	IF WRK-MEDIA >= 6
           		DISPLAY 'APROVADO'
           	ELSE
           		IF WRK-MEDIA >= 2
           			DISPLAY 'RECUPERACAO'
           		ELSE 
           			DISPLAY 'REPROVADO'
           		END-IF
           END-IF.
           
      	0300-FINALIZAR.
           DISPLAY '-----------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
</pre>

### Aplicando um Desconto
- Aprendemos que a codificação usando lógica estruturada é uma exigência nas empresas em geral.
- Quais das opções abaixo não representa uma vantagem em codificarmos de maneira estruturada ?

***Resposta***
- Velocidade de execução do programa.

***Explicação da Alternativa Correta***
- Não há ganho de performance entre a escrita de um programa sem ou com o uso da lógica estrutura, pelo fato do cobol pré-compilar todo o código antes de rodar.

### Tempo de Casa Estruturado

#### PROGCOBTEMPODECASAESTRUTURADO

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBTEMPODECASAESTRUTURADO.
      *******************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 28/11/2020
      *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME           PIC X(30)      VALUE SPACES.
       77 WRK-ANOENTRADA     PIC 9(04)      VALUE ZEROS.
       77 WRK-SALARIO        PIC 9(06)V99   VALUE ZEROS.
       77 WRK-AUMENTO        PIC 9(03)V99   VALUE ZEROS.
       77 WRK-TEMPOCASA      PIC 9(02)      VALUE ZEROS.
       01 WRK-DATASISTEMA.
       		02 WRK-ANO PIC 9(04)  VALUE ZEROS.
         	02 WRK-MES PIC 9(02)  VALUE ZEROS.
           	02 WRK-DIA PIC 9(02)  VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0000-PRINCIPAL.
       		PERFORM 0100-INICIAR.
        	PERFORM 0200-PROCESSAR.
        	PERFORM 0300-FINALIZAR.
        	STOP RUN.

       0100-INICIAR.
       		ACCEPT WRK-DATASISTEMA FROM DATE YYYYMMDD.
          	DISPLAY '=========================================='
          	DISPLAY 'DATA ATUAL: ' WRK-DIA'/'WRK-MES'/'WRK-ANO.
                DISPLAY '=========================================='
       		DISPLAY 'NOME DO FUNCIONARIO: '. ACCEPT WRK-NOME.
        	DISPLAY 'ANO DE ENTRADA NA EMPRESA '.
        		ACCEPT WRK-ANOENTRADA.
       		DISPLAY 'SALARIO ATUAL '
        		ACCEPT WRK-SALARIO.

       0200-PROCESSAR.
       		COMPUTE WRK-TEMPOCASA = WRK-ANO - WRK-ANOENTRADA.
       		EVALUATE WRK-TEMPOCASA
        		WHEN 0 THRU 1 
        			COMPUTE WRK-AUMENTO = 0
        		WHEN 2 THRU 5
       				COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,05
        		WHEN 6 THRU 15
       				COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,10
       			WHEN OTHER
       				COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,15
       		END-EVALUATE.

       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'TEMPO DE CASA ' WRK-TEMPOCASA ' ANO(S)'.
        	DISPLAY 'AUMENTO DE SALARIO DE ' WRK-AUMENTO.
</pre>

## Repetições e Aproveitamento de Código

### Perform TIMES

#### PROGCOB13

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 29/11/2020
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR O PERFORM
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO	PIC 9(02)	VALUE ZEROS.
       77 WRK-CONTADOR	PIC 9(02)	VALUE 1.
       77 WRK-RESUL	PIC 9(02)	VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-NUMERO > 0 
        		PERFORM 0200-PROCESSAR
        	END-IF.
        	PERFORM 0300-FINALIZAR.
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'DIGITE UM NUMERO PARA REALIZAR A TABUADA: '. 
       	       ACCEPT WRK-NUMERO.
       
       0200-PROCESSAR.
               PERFORM 10 TIMES
     			COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               	DISPLAY WRK-NUMERO ' x ' WRK-CONTADOR ' = ' WRK-RESUL
               	ADD 1 TO WRK-CONTADOR
               
               END-PERFORM.
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
</pre>

### Perform VARYING

#### PROGCOB14

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 29/11/2020
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR O PERFORM - VARYING
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO	PIC 9(02)	VALUE ZEROS.
       77 WRK-CONTADOR	PIC 9(02)	VALUE 1.
       77 WRK-RESUL	PIC 9(02)	VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-NUMERO > 0 
        		PERFORM 0200-PROCESSAR
        	END-IF.
        	PERFORM 0300-FINALIZAR.
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'DIGITE UM NUMERO PARA REALIZAR A TABUADA: '. 
       	       ACCEPT WRK-NUMERO.
       
       0200-PROCESSAR.
      ******************** FROM = COMECA | BY = INCREMENTO | UNTIL = ATE QUANDO
               PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
               		UNTIL WRK-CONTADOR > 10
     		COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               	DISPLAY WRK-NUMERO ' x ' WRK-CONTADOR
               END-PERFORM.
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
</pre>

### Perform UNTIL

#### PROGCOB15

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 29/11/2020
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR O PERFORM - UNTIL
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS	PIC 9(06)V99	VALUE ZEROS.
       77 WRK-QT	PIC 9(03)	VALUE 0.
       77 WRK-ACUM	PIC 9(08)V99	VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-VENDAS > 0 
        		PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
        	END-IF.
        	PERFORM 0300-FINALIZAR
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'QUANTIDADE DE VENDAS NO DIA: '. 
       	       ACCEPT WRK-VENDAS.
       
       0200-PROCESSAR.
               ADD 1 TO WRK-QT.
               ADD WRK-VENDAS TO WRK-ACUM.
               PERFORM 0100-INICIALIZAR.
               
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'TOTAL: ' WRK-ACUM.
       		DISPLAY 'QUANTIDADE DE REGISTROS: ' WRK-QT.
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
</pre>

##### PROGCOB15 - Output

<pre>
QUANTIDADE DE VENDAS NO DIA: 
5
QUANTIDADE DE VENDAS NO DIA: 
6
QUANTIDADE DE VENDAS NO DIA: 
10
QUANTIDADE DE VENDAS NO DIA: 
20
QUANTIDADE DE VENDAS NO DIA: 
36
QUANTIDADE DE VENDAS NO DIA: 
40
QUANTIDADE DE VENDAS NO DIA: 
0
==========================================
TOTAL: 00000117.00
QUANTIDADE DE REGISTROS: 006
</pre>

### COPY

#### PROGCOB15

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 30/11/2020
      * OBJETIVO: RECEBER AS VARIAVEIS DO ARQUIVO BOOK.cob
      * UTILIZANDO O COPY
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      ************************** COPY geralmente utilizado para padronização das variáveis.
      ************************** Importando o conteúdo das variáveis do arquivo "BOOK.cob" - Include.
       		COPY 'BOOK.cob'.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-VENDAS > 0 
        		PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
        	END-IF.
        	PERFORM 0300-FINALIZAR
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'QUANTIDADE DE VENDAS NO DIA: '. 
       	       ACCEPT WRK-VENDAS.
       
       0200-PROCESSAR.
               ADD 1 TO WRK-QT.
               ADD WRK-VENDAS TO WRK-ACUM.
               PERFORM 0100-INICIALIZAR.
               
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'TOTAL: ' WRK-ACUM.
       		DISPLAY 'QUANTIDADE DE REGISTROS: ' WRK-QT.
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
</pre>

### Repetindo Código com Laços
- Quais são as principais formas de uso do comando PERFORM? 
- E quais destas podemos utilizar para ler N valores da console até que o valor digitado seja 99?

***Resposta***
- TIMES, VARYING e UNTIL. Podemos utilizar o UNTIL.

***Explicação da Alternativa Correta***
- TIMES (n vezes), VARYING (N vezes com variável contador) e UNTIL (até que o valor seja igual) são as principais forma de uso do PERFORM. 
- Para ler infinitamente da console até o valor ser 99 usamos o UNTIL (por exemplo: UNTIL variável = 99).

### Investimento Financeiro

#### PROGCOBINVESTIMENTOFINANCEIRO

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBINVESTIMENTOFINANCEIRO.
      **********************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 30/11/2020
      * OBJETIVO: MONTAR UM PROGRAMA QUE SIMULE UM INVESTIMENTO FINANCEIRO
      * DESCRICAO: VALOR INICIAL DE INVESTIMENTO, PERIODO (NUMERO DE MESES) 
      * E TAXAS DE CORRECAO MENSAL. AO FINAL, RECEBEREMOS O VALOR CORRIGIDO
      * EM TELA.
      **********************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       		DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR      PIC 9(06)V99       VALUE ZEROS.
       77 WRK-MESES      PIC 9(03)          VALUE ZEROS.
       77 WRK-TAXA-MES   PIC 9(02)          VALUE ZEROS.
       77 WRK-VALOR-ED   PIC ZZZ.ZZ9,99     VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIAR.
       		PERFORM 0200-PROCESSAR.
       		PERFORM 0300-FINALIZAR.
       
       0100-INICIAR.
       DISPLAY 'VALOR INVESTIDO '.
       		ACCEPT WRK-VALOR.
       DISPLAY  'MESES DE APLICACAO '
       		ACCEPT WRK-MESES.
       DISPLAY 'TAXA MENSAL '
       		ACCEPT WRK-TAXA-MES.
       
       0200-PROCESSAR.
       PERFORM WRK-MESES TIMES
       		COMPUTE WRK-VALOR = WRK-VALOR * (WRK-TAXA-MES / 100 + 1)               
       END-PERFORM.
       
       0300-FINALIZAR.
       MOVE WRK-VALOR TO WRK-VALOR-ED
       DISPLAY 'VALOR CORRIGIDO ' WRK-VALOR-ED.

       STOP RUN.
</pre>

### STRING

- STRING é um comando que serve para concatenar dois ou mais itens em um único, ou alterar o conteúdo de um item.
- A estrutura do comando, é:

<pre>
STRING item-1
       item-2
       DELIMITED BY (SIZE ou SPACE)
       INTO variável-destino
END-STRING.
</pre>

### DELIMITED BY delimitador, ou SIZE, ou SPACE
- SIZE, todo o conteúdo será considerado.
- SPACE será considerado somente o conteúdo até o primeiro espaço encontrado.

#### PROGCOBSTRING

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBSTRING.
      **********************************************************************
      * AUTOR: LUCAS  LRM
      * DATA: 30/11/2020
      **********************************************************************
      * DESCRICAO: TESTANDO STRING e DELIMITED BY
      **********************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 FIB1 PIC 999.
       77 FIB2 PIC 999.
       77 FIB3 PIC 999.
       77 I PIC 99.
       77 FIBST PIC XXX.
       77 RES PIC X(64).

       PROCEDURE DIVISION.
       MOVE 0 TO I 
       MOVE 0 TO FIB1
       MOVE 1 TO FIB2
       MOVE SPACES TO RES
       PERFORM UNTIL I GREATER THAN 15
       	ADD FIB1 TO FIB2 GIVING FIB3
       		MOVE FIB2 TO FIB1
       		MOVE FIB3 TO FIB2
       		MOVE FIB1 TO FIBST
       	STRING RES DELIMITED BY SPACE
       		FIBST DELIMITED BY SIZE
       		","   DELIMITED BY SIZE INTO RES
       		ADD 1 TO I
       END-PERFORM.
       DISPLAY RES "..."
       STOP RUN.
</pre>

##### PROGCOBSTRING - Output

<pre>
001,001,002,003,005,008,013,021,034,055,089,144,233,377,610,987,...
</pre>

## Trabalhando com Variáveis de Índice
    
### Tabela
- MATRIZ | ARRAY | INDICE | TABELA = Todos significam a mesma coisa.

### Criando Variável com Índice

#### PROGCOB16

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
      **************************************************
      * AUTOR: LUCAS LRM
      * DATA: 30/11/2020
      **************************************************
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR: VARIAVEL TIPO TABELA - OCCURS
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           03 WRK-MES 	PIC X(09)  OCCURS 12 TIMES.
       01 WRK-DATASYS.
           02 ANOSYS 	PIC 9(04)  VALUE ZEROS.
           02 MESSYS 	PIC 9(02)  VALUE ZEROS.
           02 DIASYS 	PIC 9(02)  VALUE ZEROS.
           
       PROCEDURE DIVISION.
          ACCEPT WRK-DATASYS FROM DATE YYYYMMDD.
          	PERFORM 0400-MONTAMES.
          DISPLAY 'DATA ' DIASYS ' DE ' WRK-MES(MESSYS) 'DE ' ANOSYS.
          
          STOP RUN.
          
       0400-MONTAMES.
       	  MOVE 'JANEIRO	' 	TO WRK-MES(01).
       	  MOVE 'FEVEIRO	' 	TO WRK-MES(02).
       	  MOVE 'MARCO	' 	TO WRK-MES(03).
       	  MOVE 'ABRIL	' 	TO WRK-MES(04).
       	  MOVE 'MAIO	' 	TO WRK-MES(05).
       	  MOVE 'JUNHO	' 	TO WRK-MES(06).
       	  MOVE 'JULHO	' 	TO WRK-MES(07).
       	  MOVE 'AGOSTO	' 	TO WRK-MES(08).
       	  MOVE 'SETEMBRO' 	TO WRK-MES(09).
       	  MOVE 'OUTUBRO	' 	TO WRK-MES(10).
       	  MOVE 'NOVEMBRO' 	TO WRK-MES(11).
       	  MOVE 'DEZEMBRO' 	TO WRK-MES(12).
          
Output:
DATA 30 DE NOVEMBRO DE 2020
</pre>

### Redefinindo uma Variável com Índice

#### PROGCOB17

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      ******************************************************
      * AUTOR: LUCAS LRM
      * DATA: 01/12/2020
      ******************************************************
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR: VARIAVEL TIPO TABELA - REDEFINES
      ******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WRK-MESES-EXTENSO.
           03 FILLER 	PIC X(03)  VALUE 'JAN'.
           03 FILLER 	PIC X(03)  VALUE 'FEV'.
           03 FILLER 	PIC X(03)  VALUE 'MAR'.
           03 FILLER 	PIC X(03)  VALUE 'ABR'.
           03 FILLER 	PIC X(03)  VALUE 'MAI'.
           03 FILLER 	PIC X(03)  VALUE 'JUN'.
           03 FILLER 	PIC X(03)  VALUE 'JUL'.
           03 FILLER 	PIC X(03)  VALUE 'AGO'.
           03 FILLER 	PIC X(03)  VALUE 'SET'.
           03 FILLER 	PIC X(03)  VALUE 'OUT'.
           03 FILLER 	PIC X(03)  VALUE 'NOV'.
           03 FILLER 	PIC X(03)  VALUE 'DEZ'.
           
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
       	   02 WRK-MES PIC X(3) OCCURS 12 TIMES.
       
       01 WRK-DATASYS.
           02 ANOSYS 	PIC 9(04)  VALUE ZEROS.
           02 MESSYS 	PIC 9(02)  VALUE ZEROS.
           02 DIASYS 	PIC 9(02)  VALUE ZEROS.
           
       PROCEDURE DIVISION.
          ACCEPT WRK-DATASYS FROM DATE YYYYMMDD.
          DISPLAY 'DATA ' DIASYS ' DE ' WRK-MES(MESSYS) ' DE ' ANOSYS.
          
          STOP RUN.
          
Output:
DATA 01 DE DEZ DE 2020
</pre>

### Pergunta - Leitura de Variável Indexada

**Considerando que usaremos a variável N-MES para auxiliar no LOOP dos meses, quais das opções abaixo será capaz de:**
- ler os valores de todos os meses do ano (armazenados na variável indexada MES),
- verificar se existe algum valor e, caso afirmativo imprimir?

**Resposta:**
<pre>
PERFORM VARYING N-MES FROM 1 BY 1 UNTIL N-MES > 12

    IF MES(N-MES) > 0 
             DISPLAY ‘ VALOR DO MES ‘ N-MES ‘ = ‘  MES(N-MES)
    END-IF
END-PERFORM
</pre>

**Explicação:**
- A instrução VARYING inicia (FROM) a variável N-MES como 1, incrementando (BY) por 1 até que chegue a 12.

### Juntando Conceitos
- Lógica Estruturada,
- Perform,
- Variáveis de grupo,
- Indexadas,
- Operadores aritméticos...

#### A proposta
- Criarmos um programa que receba valores de vendas feitas em meses do ano. 
- Serão aceitas várias vendas por mês, acumulando o valor por mês.
- O final do programa acontece quando o mês digitado for igual a 99 (não será nesse caso necessário digitar o valor).

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBVENDASFEITASMESESANO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       		DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
       		02 WRK-MES 	PIC 9(6)V99        OCCURS 12 TIMES.
       77 WRK-MESVENDA  	PIC 9(2)           VALUE ZEROS.
       77 WRK-VALOR     	PIC 9(06)V99       VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0000-PRINCIPAL.
       		PERFORM 0100-INICIAR.
       		PERFORM 0200-PROCESSAR.
       		PERFORM 0300-FINALIZAR.
       		STOP RUN.
       
       0100-INICIAR.
       		DISPLAY 'MES DA VENDA  '
       			ACCEPT WRK-MESVENDA.
       		IF WRK-MESVENDA NOT EQUAL 99
       		DISPLAY 'VALOR DA VENDA '
       			ACCEPT WRK-VALOR
         		ADD WRK-VALOR TO WRK-MES(WRK-MESVENDA)
       		END-IF.
       		
       0200-PROCESSAR.
       PERFORM 0100-INICIAR.
       
       0300-FINALIZAR.
       		PERFORM VARYING WRK-MESVENDA FROM 1 BY 1
                	UNTIL WRK-MESVENDA > 12
       		DISPLAY 'VALOR MES ' WRK-MESVENDA ' = '
                		     WRK-MES(WRK-MESVENDA)
       		END-PERFORM.
          
Output:
MES DA VENDA  
09
VALOR DA VENDA 
200
MES DA VENDA  
10
VALOR DA VENDA 
100
VALOR MES 01 = 000000,00
VALOR MES 02 = 000000,00
VALOR MES 03 = 000000,00
VALOR MES 04 = 000000,00
VALOR MES 05 = 000000,00
VALOR MES 06 = 000000,00
VALOR MES 07 = 000000,00
VALOR MES 08 = 000000,00
VALOR MES 09 = 000200,00
VALOR MES 10 = 000100,00
VALOR MES 11 = 000000,00
VALOR MES 12 = 000000,00
</pre>

</details>

<details>
    <summary>Cobol parte 2: Manipulando Arquivos de Dados</summary>

<h1 align="center">Iniciando o projeto - Telas</h1>

### Formas de Acesso
- Sequential Access
- Random Access

### Projeto
- CREATE (Criar) C
- READ (LER) R
- UPDATE (ATUALIZAR) U
- DELETE (DELETAR) D

### External Terminal
- OpenCobol - Preferences - Run - Run in external terminal [x]

### Construção de Menu 01

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO PIC X(1).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      ************************** LIMPAR A TELA      
               10 BLANK SCREEN.
      ************************** POSICIONA NA LINHA 1 E COLUNA 1        
      ************************** END OF LINE (EOL)
               10 LINE 01 COLUMN 01 ERASE EOL
      ************************** PASSANDO A COR POR NUMERO
      ************************** CORES:
      ************************** 1 - AZUL 
      ************************** 2 - VERDE
      ************************** 3 - AZUL CLARO
      ************************** 4 - VERMELHO
      ************************** 5 - ROXO
      ************************** 6 - DOURADO
      ************************** 7 - CINZA
                   BACKGROUND-COLOR 1.
       
       PROCEDURE DIVISION.
           DISPLAY TELA.
           ACCEPT WRK-OPCAO.
           STOP RUN.
</pre>

### Construção de Menu 02

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO PIC X(1).
       77 WRK-TITULO PIC X(20).
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      ************************** LIMPAR A TELA
               10 BLANK SCREEN.
      ************************** POSICIONA NA LINHA 1 E COLUNA 1
      ************************** END OF LINE (EOL)
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
      ************************** PASSANDO A COR POR NUMERO
      ************************** CORES:
      ************************** 1 - AZUL
      ************************** 2 - VERDE
      ************************** 3 - AZUL CLARO
      ************************** 4 - VERMELHO
      ************************** 5 - ROXO
      ************************** 6 - DOURADO
      ************************** 7 - CINZA
                   BACKGROUND-COLOR 2 FROM WRK-TITULO.
        
       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.
 
       PROCEDURE DIVISION.
           MOVE '- MENU - ' TO WRK-TITULO.
           DISPLAY TELA.
           ACCEPT MENU.
           STOP RUN.
</pre>

### Construção de telas

**Pergunta:**
- A tela baseada no padrão ANSI (American National Standards Institute) possui dimensões de 24 linhas por 80 colunas. 
- Se posicionarmos algo na linha 27, pela Screen Section, o que irá acontecer?

**Dica:**
- Altere o código desta aula modificando as duas últimas linhas do MENU, conforme exemplo abaixo:

<pre>
01 MENU.
05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
05 LINE 27 COLUMN 15 VALUE 'OPCAO......: ' .
05 LINE 27 COLUMN 28 PIC 999 USING WRK-OPCAO.
</pre>

**Resposta:**
- A informação da linha 27 será mostrada logo após o último display (linha 12 - X - SAIDA).

**Explicação:**
- Como não existe mais de 24 linhas, o COBOL entende que a informação não tem posição definida. Portanto, irá para o último item impresso.

### Validando a Escolha do Menu

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO    PIC X(1).
       77 WRK-MODULO   PIC X(25).
       77 WRK-TECLA    PIC X(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           DISPLAY TELA.
           ACCEPT MENU.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
           CONTINUE.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 1620.
</pre>

### Criando um sub-menu

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO  PIC X(1).
       77 WRK-MODULO PIC X(25).
       77 WRK-TECLA PIC X(1).
       77 WRK-OPCAO-RELATO PIC X(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU-RELATO.
           05 LINE 12 COLUMN 55 VALUE '1 - EM TELA'.
           05 LINE 13 COLUMN 55 VALUE '2 - EM DISCO'.
           05 LINE 14 COLUMN 55 VALUE 'OPCAO......: ' .
           05 LINE 14 COLUMN 68 USING WRK-OPCAO-RELATO.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           DISPLAY TELA.
           ACCEPT MENU-RELATO.

       2000-PROCESSAR.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-RELATORIO-TELA
              WHEN 2
                CONTINUE
              WHEN 3
                CONTINUE
              WHEN 4
                CONTINUE
              WHEN 5
                ACCEPT MENU-RELATO
                IF WRK-OPCAO-RELATO EQUAL 1
                    PERFORM 5000-RELATORIO-TELA
                END-IF
                IF WRK-OPCAO-RELATO EQUAL 2
                    PERFORM 5010-RELATORIO-DISCO
                END-IF
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF    
            END-EVALUATE.

       3000-FINALIZAR.
           CONTINUE.

       5000-RELATORIO-TELA.
           CONTINUE.
       5010-RELATORIO-DISCO.
           CONTINUE.
</pre>

### Personalizando Cores

| Número |           Cor               |     Constante COBOL     |                           
|:---:|:---------------:|:--------------------------------:|
|  0  | Preto | COB-COLOR-BLACK |
|  1  | Verde | COB-COLOR-GREEN |
|  2  | Azul | COB-COLOR-BLUE |
|  3  | Turquesa | COB-COLOR-CYAN |
|  4  | Vermelho | COB-COLOR-RED |
|  5  | Magenta | COB-COLOR-MAGENTA |
|  6  | Amarelo | COB-COLOR-YELLOW |
|  7  | Branco | COB-COLOR-WHITE |

### Opções para Entrada de Dados

**REVERSE-VIDEO:**
- Inverte as cores de background e foreground (ex: letra preta, fundo branco)
- EX.: 05 LINE 13 COLUMN 28 USING WRK-OPCAO REVERSE-VIDEO

**SECURE:**
- Cria uma máscara de entrada com asterisco (*) no lugar do texto digitado. Ideal para digitação de dados tipo senha.
- EX.: 05 LINE 13 COLUMN 28 USING WRK-OPCAO SECURE

<h1 align="center">Incluindo Registros</h1>

### Abertura de Arquivos:

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTS-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO    PIC X(1).
       77 WRK-MODULO   PIC X(25).
       77 WRK-TECLA    PIC X(1).
       77 CLIENTES-STATUS   PIC 9(02).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
      ***************** INPUT E OUTPUT
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.
           DISPLAY TELA.
           ACCEPT MENU.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
      ******************** FORCANDO O FECHAMENTO
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
           ACCEPT WRK-TECLA AT 1620.
</pre>

### Arquivo Sequencial e Indexado

**Pergunta:**
- Qual das opções abaixo são vantagens no manuseio de arquivos indexados ao invés de sequenciais?

**Resposta:**
- Acesso direto ao registro através de uma chave
- Inclusão de apenas um registro por chave, evitando duplicidade

**Explicação:**
- Acessar diretamente o registro por chave evita a leitura inteira do arquivo para localizar uma chave específica (registro).
- Dados duplicados podem comprometer o resultado da análise de um arquivo. O mesmo registro pode acabar sendo processado mais de uma vez, gerando inconsistência.

### Inclusão de Dados

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  INCLUSAODADOS.
      *********************************
      * OBJETIVO:  INCLUSAO DE DADOS
      * AUTHOR  :  LUCAS
      *********************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'E:\COBOL\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).

       WORKING-STORAGE SECTION.
       77 WRK-OPCAO  PIC X(1).
       77 WRK-MODULO PIC X(25).
       77 WRK-TECLA PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).

       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20)
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 14 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 14 COLUMN 28 USING WRK-OPCAO.

       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR.
            PERFORM 2000-PROCESSAR.
            PERFORM 3000-FINALIZAR.
            STOP RUN.

       1000-INICIAR.
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.

            DISPLAY TELA.
            ACCEPT MENU.

       2000-PROCESSAR.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-INCLUIR
              WHEN 2
                CONTINUE
              WHEN 3
                CONTINUE
              WHEN 4
                CONTINUE
              WHEN 5
                CONTINUE
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF
            END-EVALUATE.

       3000-FINALIZAR.
             CLOSE CLIENTES.

       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG.
                  DISPLAY TELA.
            ACCEPT MENU.
</pre>

### Testar Registro

- Testando se o registro a ser inserido já existe no arquivo.

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO    PIC X(1).
       77 WRK-MODULO   PIC X(25).
       77 WRK-TECLA    PIC X(1).
       77 CLIENTES-STATUS   PIC 9(02).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
      ***************** INPUT E OUTPUT
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
      ******************** FORCANDO O FECHAMENTO
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG.
                       IF CLIENTES-STATUS = 22
                           DISPLAY 'REGISTRO JA EXISTE'
                               ACCEPT WRK-OPCAO
                       END-IF.
                   DISPLAY TELA.
           ACCEPT MENU.
</pre>

-  No parágrafo 5000-INCLUIR, logo após o WRITE CLIENTES-REG, vamos testar o file status da operação.
- Caso o valor retornado seja igual a 22, será enviada para a tela uma mensagem de aviso ao usuário e um ACCEPT para segurar o processamento.

### FILE-STATUS

- Valores possíveis de FILE-STATUS em arquivos COBOL.

| Código |                     Status                          |                           
|:---:|:------------------------------------------------------:|
|  00  | Conclusão bem-sucedida. |
|  02  | Apenas arquivos indexados. Causas possíveis: Para uma instrução READ, o valor da chave para a chave atual é igual ao valor da mesma chave no próximo registro na chave de referência atual. Para uma instrução WRITE ou REWRITE, o registro recém-criado criou um valor de chave duplicado para pelo menos uma chave de registro alternativa para a qual duplicatas são permitidas. |
|  04  | O comprimento do registro que está sendo processado não está de acordo com os atributos de arquivo fixos para esse arquivo. |
|  05  | O arquivo opcional referenciado não está presente no momento em que a instrução OPEN é executada. |
|  06  | Tentativa de gravar em um arquivo que foi aberto para entrada. |
|  07  | Apenas arquivos sequenciais. Para uma instrução OPEN ou CLOSE com a frase REEL / UNIT, o arquivo referenciado é um meio sem bobina / unidade. |
|  08  | Tentativa de ler de um arquivo aberto para saída. |
|  09  | Nenhuma sala no diretório ou diretório não existe. |
|  10  | Nenhum registro lógico seguinte existe. Você chegou ao final do arquivo.|
|  12  | Tentou abrir um arquivo que já está aberto. |
|  13  | Arquivo não encontrado. Além disso, verifique se o caminho para o arquivo em questão existe (Micro Focus). |
|  14  | Apenas arquivos relativos. O número de dígitos significativos no número de registro relativo é maior que o tamanho do item de dados de chave relativo descrito para esse arquivo. Muitos arquivos são abertos simultaneamente ( Micro Focus ). |
|  15  | Muitos arquivos indexados são abertos ( Micro Focus ). |
|  16  | Muitos arquivos de dispositivos estão abertos ( Micro Focus ). |
|  17  | Erro de registro: provavelmente comprimento zero ( Micro Focus ). |
|  18  | Erro de registro de parte de leitura: EOF antes de EOR ou arquivo aberto no modo errado ( Micro Focus ). |
|  19  | Reescreva o erro: abra o modo ou o modo de acesso errado ( Micro Focus ). |
|  20  | Dispositivo ou recurso ocupado ( Micro Focus ). |
|  21  | Apenas arquivos acessados sequencialmente. Indica um erro de sequência. Os requisitos de chave ascendente de valores de chave de registro sucessivos foram violados ou o valor da chave de registro principal foi alterado por um programa COBOL entre a execução bem-sucedida de uma instrução READ e a execução da próxima instrução REWRITE para esse arquivo. |
|  22  | Apenas arquivos indexados e relativos. Indica uma condição de chave duplicada. Foi feita uma tentativa de armazenar um registro que criaria uma chave duplicada no arquivo indexado ou relativo OU uma chave de registro alternativa duplicada que não permite duplicatas. |
|  23  | Indica que nenhum registro foi encontrado. Foi feita uma tentativa de acessar um registro, identificado por uma chave, e esse registro não existe no arquivo.Alternativamente, uma operação START ou READ foi tentada em um arquivo de entrada opcional que não está presente. |
|  24  | Somente arquivos relativos e indexados. Indica uma violação de limite. Possíveis causas: Tentativa de gravar além dos limites definidos externamente de um arquivo. A tentativa de uma operação WRITE sequencial foi tentada em um arquivo relativo, mas o número de dígitos significativos no número de registro relativo é maior que o tamanho do item de dados de chave relativo descrito para o arquivo. |
|  30  | A instrução de E / S foi executada sem êxito como resultado de uma violação de limite para um arquivo seqüencial ou como resultado de um erro de E / S, como um erro de paridade de verificação de dados ou um erro de transmissão. |
|  32  | Muitos arquivos indexados abertos. Isso também pode acontecer quando um arquivo sequencial é aberto para entrada e é feita uma tentativa de abrir o mesmo arquivo para saída ( mensagem RTS ( Run Time System) da Micro Focus ). |
|  34  | A instrução de E / S falhou devido a uma violação de limite. Essa condição indica que foi feita uma tentativa de gravar além dos limites definidos externamente de um arquivo sequencial. |
|  35  | Uma operação OPEN com as frases IO, INPUT ou EXTEND foi tentada em um arquivo não OPCIONAL que não está presente. Tentando abrir um arquivo que não existe. Pode ser necessário mapear o nome do arquivo COBOL para o nome do arquivo físico. (Micro Focus, consulte a diretiva ASSIGN (EXTERNAL)). |
|  37  | Uma operação OPEN foi tentada em um arquivo que não suporta o modo aberto especificado na instrução OPEN. |
|  38  | Uma operação OPEN foi tentada em um arquivo previamente fechado com um bloqueio. |
|  39  | Um conflito foi detectado entre os atributos de arquivo reais e os atributos especificados para o arquivo no programa. Isso geralmente é causado por um conflito com comprimento de registro, comprimento de chave, posição de chave ou organização de arquivo. Outras causas possíveis são: 1. Índices alternativos são definidos incorretamente (comprimento ou posição da chave, duplicatas ou parâmetros esparsos) . 2. O Modo de Gravação é Variável ou Fixo ou não definido como quando o arquivo foi criado. 3. Para arquivos com registros de comprimento variável, os comprimentos de registro mínimo e máximo para o arquivo real podem não corresponder aos comprimentos de registro mínimo e máximo usados pelo programa. |
|  41  | Uma operação OPEN foi tentada no arquivo já aberto. |
|  42  | Uma operação CLOSE foi tentada no arquivo já fechado. |
|  43  | Arquivos no modo de acesso seqüencial. A última declaração de E / S executada para o arquivo, antes da execução de uma instrução DELETE ou REWRITE, não era uma instrução READ. |
|  44  | Existe uma violação de limite. Possíveis causas: Tentativa de WRITE ou REWRITE um registro maior que o maior ou menor que o menor registro permitido pela cláusula RECORD IS VARYING do arquivo associado. Tentativa de REESCREVA um registro em um arquivo e o registro não tem o mesmo tamanho do registro que está sendo substituído. |
|  45  | Foi feita uma tentativa de REESCREVA um registro em um arquivo e o registro não é do mesmo tamanho que o registro que está sendo substituído. (Micro Focus) Para arquivos sequenciais de linha, isso se refere ao tamanho físico do registro, ou seja, após a remoção de espaço, compactação de tabulação e inserção nula. Nesse caso, o tamanho físico do novo registro pode ser menor que o do registro que está sendo substituído. |
|  46  | Uma operação READ sequencial foi tentada em um arquivo aberto no modo INPUT ou IO, mas nenhum próximo registro válido foi estabelecido. |
|  47  | Uma operação READ ou START foi tentada em um arquivo não aberto INPUT ou IO. |
|  48  | Uma operação WRITE foi tentada em um arquivo não aberto no modo OUTPUT, IO ou EXTEND ou em um arquivo aberto IO no modo de acesso seqüencial. |
|  49  | Uma operação DELETE ou REWRITE foi tentada em um arquivo que não é aberto IO. |

<h1 align="center">Validação, Erros e Menu</h1>

### Validando Chave Existente

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       77 CLIENTES-STATUS  PIC 9(02).
       77 WRK-MSGERRO      PIC X(30).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 10 PIC X(40) USING WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01) USING WRK-TECLA.
               
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
      ***************** INPUT E OUTPUT
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
      ******************** FORCANDO O FECHAMENTO
           CLOSE CLIENTES.

      ******************** PARAGRAFO
       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE ' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.
                       DISPLAY TELA.
           ACCEPT MENU.
</pre>

### Teste de FILE ESTATUS

**Pergunta:**
- Em uma operação de gravação de registro, além do teste de FILE ESTATUS = 22, qual é a outra forma de testarmos se o registro a ser gravado já existe no arquivo (chave duplicada)?

**Resposta:**
- INVALID KEY após o comando WRITE

**Explicação:**
- O comando WRITE devolve TRUE para INVALID KEY quando a chave já existir no arquivo.

### Exibindo Erros

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       77 CLIENTES-STATUS  PIC 9(02).
       77 WRK-MSGERRO      PIC X(30).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30) 
                           BACKGROUND-COLOR 3 
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           BACKGROUND-COLOR 3
                           USING WRK-TECLA.
               
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
      ***************** INPUT E OUTPUT
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.

       3000-FINALIZAR.
      ******************** FORCANDO O FECHAMENTO
           CLOSE CLIENTES.

      ******************** PARAGRAFO
       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE ' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.
                       DISPLAY TELA.
           ACCEPT MENU.
</pre>

### Encerrando o Menu

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       77 CLIENTES-STATUS  PIC 9(02).
       77 WRK-MSGERRO      PIC X(30).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30) 
                           BACKGROUND-COLOR 3 
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           BACKGROUND-COLOR 3
                           USING WRK-TECLA.
               
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
           DISPLAY TELA.
           ACCEPT MENU.
       
       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.
               PERFORM 1100-MONTATELA.

       3000-FINALIZAR.
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE ' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.
</pre>

### Gravação de nova chave

- Na inclusão de um registro, quando houver duplicidade vamos oferecer ao usuário a opção de inserir um registro com nova chave, mantendo os dados NOME e EMAIL na tela.

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       77 CLIENTES-STATUS  PIC 9(02).
       77 WRK-MSGERRO      PIC X(30).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30) 
                           BACKGROUND-COLOR 3 
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           BACKGROUND-COLOR 3
                           USING WRK-TECLA.
               
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
           DISPLAY TELA.
           ACCEPT MENU.
       
       2000-PROCESSAR.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   CONTINUE
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.
               PERFORM 1100-MONTATELA.

       3000-FINALIZAR.
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY 
                           MOVE 'JA EXISTE! (N)OVO REGISTRO ?' TO 
                           WRK-MSGERRO
                               ACCEPT MOSTRA-ERRO
                       IF WRK-TECLA = 'N' OR WRK-TECLA = 'n'
                           MOVE ZEROS TO CLIENTES-FONE
                           PERFORM 5000-INCLUIR
                       END-IF.
</pre>

- 5000-INCLUIR, logo após o INVALID KEY, movemos a frase ’JA EXISTE ! (N)OVO REGISTRO ?’ para o display de erro, oferecendo ao(à) usuário(a) a opção de informar um (N)OVO REGISTRO. 
- Se informado N, voltamos ao início do parágrafo 5000-INCLUIR. Caso contrário, o fluxo irá levar ao menu principal.
- Agora oferecemos aos(às) usuários(as) a opção de editar a inserção, sem ter de voltar ao menu principal.

<h1 align="center">Manutenção de Registros</h1>

### Consultando Registros

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE PIC 9(09).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO        PIC X(1).
       77 WRK-MODULO       PIC X(25).
       77 WRK-TECLA        PIC X(1).
       77 CLIENTES-STATUS  PIC 9(02).
       77 WRK-MSGERRO      PIC X(30).
       
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOMES: '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL: '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30) 
                           BACKGROUND-COLOR 3 
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           BACKGROUND-COLOR 3
                           USING WRK-TECLA.
               
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
           DISPLAY TELA.
           ACCEPT MENU.
       
       2000-PROCESSAR.
           MOVE SPACES TO WRK-MSGERRO.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   PERFORM 6000-CONSULTAR
               WHEN 3
                   CONTINUE
               WHEN 4
                   CONTINUE
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.
               PERFORM 1100-MONTATELA.

       3000-FINALIZAR.
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE ' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.
                       
       6000-CONSULTAR.
           MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       INVALID KEY
                           MOVE 'NAO ENCONTRADO ' TO WRK-MSGERRO
                       NOT INVALID KEY
                           MOVE '-- ENCONTRADO --' TO WRK-MSGERRO
                           DISPLAY SS-DADOS
                   END-READ.
                       ACCEPT MOSTRA-ERRO.
</pre>

### Excluindo Registros

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  EXCLUINDOREGISTROS.
      *********************************
      * OBJETIVO:  EXCLUINDO REGISTROS
      * AUTHOR  :  LRM
      *********************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas Magalhães\Desktop\Workspace\learning-COBOL\co
      -    'bol\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).

       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC X(1).
       77 WRK-MODULO      PIC X(25).
       77 WRK-TECLA       PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).
       77 WRK-MSGERRO     PIC X(30).

       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20)
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 13 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 13 COLUMN 28 USING WRK-OPCAO.

       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
             02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                             BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30)
                             BACKGROUND-COLOR 3
                             FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                             BACKGROUND-COLOR 3
                             USING WRK-TECLA.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR THRU 1100-MONTATELA.
            PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
            PERFORM 3000-FINALIZAR.
            STOP RUN.

       1000-INICIAR.
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
            DISPLAY TELA.
            ACCEPT MENU.

       2000-PROCESSAR.
            MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-INCLUIR
              WHEN 2
                PERFORM 6000-CONSULTAR
              WHEN 3
                CONTINUE
              WHEN 4
                PERFORM 8000-EXCLUIR
              WHEN 5
                CONTINUE
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF
            END-EVALUATE.
              PERFORM 1100-MONTATELA.

       3000-FINALIZAR.
             CLOSE CLIENTES.

       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG
                 INVALID KEY
                   MOVE 'JA EXISTE ' TO WRK-MSGERRO
                   ACCEPT MOSTRA-ERRO
                END-WRITE.

       6000-CONSULTAR.
             MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
             DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                  NOT INVALID KEY
                  MOVE '--  ENCONTRADO  --'  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                 END-READ.
                   ACCEPT MOSTRA-ERRO.

       8000-EXCLUIR.
             MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                 NOT INVALID KEY
                  MOVE ' ENCONTRADO  (S/N) ? '  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                END-READ.
                  ACCEPT MOSTRA-ERRO.
                    IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0
                           DELETE CLIENTES
                            INVALID KEY
                            MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                            ACCEPT  MOSTRA-ERRO
                          END-DELETE
                     END-IF.
</pre>

### Alterando Registros

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************
      * OBJETIVO: SISTEMA DE GESTAO DE CLIENTES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\Lucas\Desktop\Workspace\learning-COBOL\cobol\CLIENT
      -    'ES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY  IS CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-FONE    PIC 9(09).
           05 CLIENTES-NOME        PIC X(30).
           05 CLIENTES-EMAIL       PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO                PIC X(1).
       77 WRK-MODULO               PIC X(25).
       77 WRK-TECLA                PIC X(1).
       77 CLIENTES-STATUS          PIC 9(02).
       77 WRK-MSGERRO              PIC X(30).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01    PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25    PIC X(20)
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01    PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE:'.
               10 COLUMN PLUS 2    PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME    :'.
               10 COLUMN PLUS 2    PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL   :'.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                           BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30)
                           BACKGROUND-COLOR 3
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                           BACKGROUND-COLOR 3
                           USING WRK-TECLA.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTATELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           OPEN I-O CLIENTES
               IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
           DISPLAY TELA.
           ACCEPT MENU.

       2000-PROCESSAR.
           MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   PERFORM 6000-CONSULTAR
               WHEN 3
                   PERFORM 7000-ALTERAR
               WHEN 4
                   PERFORM 8000-EXCLUIR
               WHEN 5
                   CONTINUE
               WHEN OTHER
                   IF WRK-OPCAO NOT EQUAL 'X'
                       DISPLAY 'ENTRE COM A OPCAO CORRETA'
                   END-IF
           END-EVALUATE.
               PERFORM 1100-MONTATELA.

       3000-FINALIZAR.
           CLOSE CLIENTES.

       5000-INCLUIR.
           MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               ACCEPT TELA-REGISTRO.
                   WRITE CLIENTES-REG
                       INVALID KEY
                           MOVE 'JA EXISTE ' TO WRK-MSGERRO
                           ACCEPT MOSTRA-ERRO
                   END-WRITE.

       6000-CONSULTAR.
           MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       INVALID KEY
                           MOVE 'NAO ENCONTRADO '  TO WRK-MSGERRO
                       NOT INVALID KEY
                           MOVE '-- ENCONTRADO --' TO WRK-MSGERRO
                           DISPLAY SS-DADOS
                   END-READ.
                       ACCEPT MOSTRA-ERRO.
                       
       7000-ALTERAR.
           MOVE 'MODULO - ALTERAR ' TO WRK-MODULO.
           DISPLAY TELA.
           DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                   IF CLIENTES-STATUS = 0
                       ACCEPT SS-DADOS
                        REWRITE CLIENTES-REG
                          IF CLIENTES-STATUS = 0
                            MOVE 'REGISTRO ALTERADO ' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                          ELSE
                            MOVE 'REGISTRO NAO ALTERADO' TO WRK-MSGERRO
                          END-IF
                  ELSE
                      MOVE 'REGISTRO NAO ENCONTRADO ' TO WRK-MSGERRO
                      ACCEPT MOSTRA-ERRO
                  END-IF.
                      
       8000-EXCLUIR.
           MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
           DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                   READ CLIENTES
                       INVALID KEY
                           MOVE 'NAO ENCONTRADO '  TO WRK-MSGERRO
                       NOT INVALID KEY
                           MOVE ' ENCONTRADO (S/N) ? ' TO WRK-MSGERRO
                               DISPLAY SS-DADOS
                   END-READ.
                      ACCEPT MOSTRA-ERRO.
                       IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0
                               DELETE CLIENTES
                                   INVALID KEY
                                   MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                                   ACCEPT MOSTRA-ERRO
                               END-DELETE
                      END-IF.
</pre>

### Regravação de Registro

**Pergunta**
- Qual a sequência correta para regravação de um registro de dados?

**Resposta**
- Receber uma chave, localizar o registro com o comando READ, testar se foi encontrado, caso afirmativo usar o comando REWRITE <variavel de arquivo>
  
**Explicação**
- Com a chave inserida, primeiro faremos a busca do registro (READ) e caso seja encontrado regravamos (REWRITE).

### Processos Críticos

**Pergunta**
- Em processos críticos, como a exclusão de um registro, qual a vantagem de utilizarmos a técnica de 02 fases?
- Relembrando: Primeira Fase - Procurar o registro Segunda Fase - Se encontrar o registro, perguntar se deseja a excluí-lo.

**Resposta**
- Evita que, acidentalmente, excluiremos o registro.
  
**Explicação**
- É uma boa prática de programação questionar o usuário sobre a certeza de uma operação crítica e, com sua confirmação, realizar a operação.

<h1 align="center">Criando Relatórios</h1>

### Gerando Relatório em Tela 01

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  RELATORIOEMTELA01.
      **********************************************
      * OBJETIVO:  SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  :  LRM
      **********************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'E:\COBOL\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).
            
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC X(1).
       77 WRK-MODULO      PIC X(25).
       77 WRK-TECLA       PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).
       77 WRK-MSGERRO     PIC X(30).      
       
       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL 
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20) 
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 13 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 13 COLUMN 28 USING WRK-OPCAO.
            
       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.               
       01 MOSTRA-ERRO.
             02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL 
                             BACKGROUND-COLOR 3.  
               10 LINE 16 COLUMN 10 PIC X(30) 
                             BACKGROUND-COLOR 3 
                             FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01) 
                             BACKGROUND-COLOR 3
                             USING WRK-TECLA. 
        
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR THRU 1100-MONTATELA.
            PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
            PERFORM 3000-FINALIZAR.
            STOP RUN.
            
       1000-INICIAR.  
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.   
           
       1100-MONTATELA.    
            DISPLAY TELA. 
            ACCEPT MENU.
            
       2000-PROCESSAR.
            MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
            EVALUATE WRK-OPCAO
              WHEN 1 
               PERFORM 5000-INCLUIR
              WHEN 2 
                PERFORM 6000-CONSULTAR
              WHEN 3
                PERFORM 7000-ALTERAR
              WHEN 4
                PERFORM 8000-EXCLUIR
              WHEN 5
                PERFORM 9000-RELATORIOTELA
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF    
            END-EVALUATE. 
              PERFORM 1100-MONTATELA.
            
       3000-FINALIZAR.
             CLOSE CLIENTES.
            
       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG
                 INVALID KEY 
                   MOVE 'JA EXISTE ' TO WRK-MSGERRO
                   ACCEPT MOSTRA-ERRO
                END-WRITE.  
                
       6000-CONSULTAR.
             MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
             DISPLAY TELA.          
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY 
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                  NOT INVALID KEY 
                  MOVE '--  ENCONTRADO  --'  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                 END-READ.
                   ACCEPT MOSTRA-ERRO.
                   
       7000-ALTERAR.
             MOVE 'MODULO - ALTERAR ' TO WRK-MODULO.
             DISPLAY TELA.         
             DISPLAY TELA-REGISTRO.
              ACCEPT CHAVE.
                READ CLIENTES
                IF CLIENTES-STATUS = 0 
                    ACCEPT SS-DADOS
                     REWRITE CLIENTES-REG
                       IF CLIENTES-STATUS = 0 
                            MOVE 'REGISTRO ALTERADO ' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       ELSE
                            MOVE 'REGISTRO NAO ALTERADO' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       END-IF
                 ELSE  
                      MOVE 'REGISTO NAO ENCONTRADO ' TO WRK-MSGERRO
                      ACCEPT MOSTRA-ERRO 
                END-IF.      
                     
       8000-EXCLUIR.
             MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.  
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY  
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                 NOT INVALID KEY 
                  MOVE ' ENCONTRADO  (S/N) ? '  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                END-READ.   
                  ACCEPT MOSTRA-ERRO.
                    IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0  
                           DELETE CLIENTES
                            INVALID KEY
                            MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                            ACCEPT  MOSTRA-ERRO
                          END-DELETE
                     END-IF.
                
       9000-RELATORIOTELA.
             MOVE 'MODULO - RELATORIO ' TO WRK-MODULO.
             DISPLAY TELA.           
             MOVE 12345 TO CLIENTES-FONE.
             START CLIENTES KEY EQUAL CLIENTES-FONE.
             READ CLIENTES
                 INVALID KEY
                     MOVE 'NENHUM REGISTRO ENCONTRADO' TO WRK-MSGERRO
                  NOT INVALID KEY
                   DISPLAY '   RELATORIO DE CLIENTES '
                   DISPLAY '----------------------'
                   PERFORM UNTIL CLIENTES-STATUS = 10 
                     DISPLAY CLIENTES-FONE ' '
                           CLIENTES-NOME ' '
                           CLIENTES-EMAIL
                     READ CLIENTES NEXT
                   END-PERFORM
             END-READ.
               ACCEPT MOSTRA-ERRO.
</pre>

### Gerando Relatório em Tela 02

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  RELATORIOEMTELA02.
      **********************************************
      * OBJETIVO:  SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  :  LRM
      **********************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'E:\COBOL\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).
            
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC X(1).
       77 WRK-MODULO      PIC X(25).
       77 WRK-TECLA       PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).
       77 WRK-MSGERRO     PIC X(30).  
       77 WRK-CONTALINHA  PIC 9(03) VALUE 0.
       77 WRK-QTREGISTROS PIC 9(05) VALUE 0.
       
       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL 
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20) 
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 13 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 13 COLUMN 28 USING WRK-OPCAO.
            
       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.               
       01 MOSTRA-ERRO.
             02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL 
                             BACKGROUND-COLOR 3.  
               10 LINE 16 COLUMN 10 PIC X(30) 
                             BACKGROUND-COLOR 3 
                             FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01) 
                             BACKGROUND-COLOR 3
                             USING WRK-TECLA. 
             
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR THRU 1100-MONTATELA.
            PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
            PERFORM 3000-FINALIZAR.
            STOP RUN.
            
       1000-INICIAR.  
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.   
           
       1100-MONTATELA.    
            DISPLAY TELA. 
            ACCEPT MENU.
            
       2000-PROCESSAR.
            MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
            EVALUATE WRK-OPCAO
              WHEN 1 
               PERFORM 5000-INCLUIR
              WHEN 2 
                PERFORM 6000-CONSULTAR
              WHEN 3
                PERFORM 7000-ALTERAR
              WHEN 4
                PERFORM 8000-EXCLUIR
              WHEN 5
                PERFORM 9000-RELATORIOTELA
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF    
            END-EVALUATE. 
              PERFORM 1100-MONTATELA.
            
       3000-FINALIZAR.
             CLOSE CLIENTES.
            
       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG
                 INVALID KEY 
                   MOVE 'JA EXISTE ' TO WRK-MSGERRO
                   ACCEPT MOSTRA-ERRO
                END-WRITE.  
                
       6000-CONSULTAR.
             MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
             DISPLAY TELA.          
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY 
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                  NOT INVALID KEY 
                  MOVE '--  ENCONTRADO  --'  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                 END-READ.
                   ACCEPT MOSTRA-ERRO.
                   
       7000-ALTERAR.
             MOVE 'MODULO - ALTERAR ' TO WRK-MODULO.
             DISPLAY TELA.         
             DISPLAY TELA-REGISTRO.
              ACCEPT CHAVE.
                READ CLIENTES
                IF CLIENTES-STATUS = 0 
                    ACCEPT SS-DADOS
                     REWRITE CLIENTES-REG
                       IF CLIENTES-STATUS = 0 
                            MOVE 'REGISTRO ALTERADO ' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       ELSE
                            MOVE 'REGISTRO NAO ALTERADO' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       END-IF
                 ELSE  
                      MOVE 'REGISTO NAO ENCONTRADO ' TO WRK-MSGERRO
                      ACCEPT MOSTRA-ERRO 
                END-IF.      
        
       8000-EXCLUIR.
             MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.  
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY  
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                 NOT INVALID KEY 
                  MOVE ' ENCONTRADO  (S/N) ? '  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                END-READ.   
                  ACCEPT MOSTRA-ERRO.
                    IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0  
                           DELETE CLIENTES
                            INVALID KEY
                            MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                            ACCEPT  MOSTRA-ERRO
                          END-DELETE
                     END-IF.

       9000-RELATORIOTELA.
             MOVE 'MODULO - RELATORIO ' TO WRK-MODULO.
             DISPLAY TELA.           
             MOVE 12345 TO CLIENTES-FONE.
             START CLIENTES KEY EQUAL CLIENTES-FONE.
             READ CLIENTES
                 INVALID KEY
                     MOVE 'NENHUM REGISTRO ENCONTRADO' TO WRK-MSGERRO
                  NOT INVALID KEY
                   DISPLAY '   RELATORIO DE CLIENTES '
                   DISPLAY '----------------------'
                   PERFORM UNTIL CLIENTES-STATUS = 10 
                     ADD 1 TO WRK-QTREGISTROS  
                     DISPLAY CLIENTES-FONE ' '
                           CLIENTES-NOME ' '
                           CLIENTES-EMAIL
                     READ CLIENTES NEXT
                     
                       ADD 1 TO WRK-CONTALINHA  
                     IF WRK-CONTALINHA = 5
                         MOVE 'PRESSIONE ALGUMA TECLA ' TO WRK-MSGERRO
                         ACCEPT MOSTRA-ERRO
                        MOVE 'MODULO - RELATORIO ' TO WRK-MODULO 
                        DISPLAY TELA                          
                        DISPLAY '   RELATORIO DE CLIENTES '
                        DISPLAY '----------------------'                        
                        MOVE 0 TO WRK-CONTALINHA
                     END-IF   
                
                   END-PERFORM
             END-READ.
               MOVE 'REGISTROS LIDOS ' TO WRK-MSGERRO.
               MOVE WRK-QTREGISTROS TO WRK-MSGERRO(17:05).
               ACCEPT MOSTRA-ERRO.
</pre>

### Gerando Relatório em Disco

<pre>
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  RELATORIOEMDISCO.
      **********************************************
      * OBJETIVO:  SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  :  LRM
      **********************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO 'E:\COBOL\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
             
             SELECT RELATO ASSIGN TO 'E:\COBOL\RELATO.TXT'
             ORGANIZATION IS SEQUENTIAL.
             
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).
            
       FD RELATO.
       01 RELATO-REG.
          05 RELATO-DADOS  PIC X(79).
        
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC X(1).
       77 WRK-MODULO      PIC X(25).
       77 WRK-TECLA       PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).
       77 WRK-MSGERRO     PIC X(30).  
       77 WRK-CONTALINHA  PIC 9(03).  
       77 WRK-QTREGISTROS PIC 9(05) VALUE 0.
       
       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL 
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20) 
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO EM TELA'.
            05 LINE 12 COLUMN 15 VALUE '6 - RELATORIO EM DISCO'.            
            05 LINE 13 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 14 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 14 COLUMN 28 USING WRK-OPCAO.
            
       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.               
       01 MOSTRA-ERRO.
             02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL 
                             BACKGROUND-COLOR 3.  
               10 LINE 16 COLUMN 10 PIC X(30) 
                             BACKGROUND-COLOR 3 
                             FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01) 
                             BACKGROUND-COLOR 3
                             USING WRK-TECLA. 
             
       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR THRU 1100-MONTATELA.
            PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
            PERFORM 3000-FINALIZAR.
            STOP RUN.
            
       1000-INICIAR.  
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.   
           
       1100-MONTATELA. 
            MOVE 0 TO WRK-QTREGISTROS.
            DISPLAY TELA. 
            ACCEPT MENU.
            
       2000-PROCESSAR.
            MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
            EVALUATE WRK-OPCAO
              WHEN 1 
               PERFORM 5000-INCLUIR
              WHEN 2 
                PERFORM 6000-CONSULTAR
              WHEN 3
                PERFORM 7000-ALTERAR
              WHEN 4
                PERFORM 8000-EXCLUIR
              WHEN 5
                PERFORM 9000-RELATORIOTELA
              WHEN 6
                PERFORM 9100-RELATORIODISCO
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF    
            END-EVALUATE. 
              PERFORM 1100-MONTATELA.
            
       3000-FINALIZAR.
             CLOSE CLIENTES.
            
       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG
                 INVALID KEY 
                   MOVE 'JA EXISTE ' TO WRK-MSGERRO
                   ACCEPT MOSTRA-ERRO
                END-WRITE.  
                
       6000-CONSULTAR.
             MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
             DISPLAY TELA.          
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY 
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                  NOT INVALID KEY 
                  MOVE '--  ENCONTRADO  --'  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                 END-READ.
                   ACCEPT MOSTRA-ERRO.
                   
       7000-ALTERAR.
             MOVE 'MODULO - ALTERAR ' TO WRK-MODULO.
             DISPLAY TELA.         
             DISPLAY TELA-REGISTRO.
              ACCEPT CHAVE.
                READ CLIENTES
                IF CLIENTES-STATUS = 0 
                    ACCEPT SS-DADOS
                     REWRITE CLIENTES-REG
                       IF CLIENTES-STATUS = 0 
                            MOVE 'REGISTRO ALTERADO ' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       ELSE
                            MOVE 'REGISTRO NAO ALTERADO' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       END-IF
                 ELSE  
                      MOVE 'REGISTO NAO ENCONTRADO ' TO WRK-MSGERRO
                      ACCEPT MOSTRA-ERRO 
                END-IF.      
                
       8000-EXCLUIR.
             MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.  
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY  
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                 NOT INVALID KEY 
                  MOVE ' ENCONTRADO  (S/N) ? '  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                END-READ.   
                  ACCEPT MOSTRA-ERRO.
                    IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0  
                           DELETE CLIENTES
                            INVALID KEY
                            MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                            ACCEPT  MOSTRA-ERRO
                          END-DELETE
                     END-IF.

       9000-RELATORIOTELA.
             MOVE 'MODULO - RELATORIO ' TO WRK-MODULO.
             DISPLAY TELA.           
             MOVE 12345 TO CLIENTES-FONE.
             START CLIENTES KEY EQUAL CLIENTES-FONE.
             READ CLIENTES
                 INVALID KEY
                     MOVE 'NENHUM REGISTRO ENCONTRADO' TO WRK-MSGERRO
                  NOT INVALID KEY
                   DISPLAY '   RELATORIO DE CLIENTES '
                   DISPLAY '----------------------'
                   PERFORM UNTIL CLIENTES-STATUS = 10 
                     ADD 1 TO WRK-QTREGISTROS  
                     DISPLAY CLIENTES-FONE ' '
                           CLIENTES-NOME ' '
                           CLIENTES-EMAIL
                     READ CLIENTES NEXT
                     
                       ADD 1 TO WRK-CONTALINHA  
                     IF WRK-CONTALINHA = 5
                         MOVE 'PRESSIONE ALGUMA TECLA ' TO WRK-MSGERRO
                         ACCEPT MOSTRA-ERRO
                        MOVE 'MODULO - RELATORIO ' TO WRK-MODULO 
                        DISPLAY TELA                          
                        DISPLAY '   RELATORIO DE CLIENTES '
                        DISPLAY '----------------------'                        
                        MOVE 0 TO WRK-CONTALINHA
                     END-IF   
                     
                   END-PERFORM
             END-READ.
               MOVE 'REGISTROS LIDOS ' TO WRK-MSGERRO.
               MOVE WRK-QTREGISTROS TO WRK-MSGERRO(17:05).
               ACCEPT MOSTRA-ERRO.
               
       9100-RELATORIODISCO.
             MOVE 'MODULO - RELATORIO ' TO WRK-MODULO.
             DISPLAY TELA.           
             MOVE 12345 TO CLIENTES-FONE.
             START CLIENTES KEY EQUAL CLIENTES-FONE.
             READ CLIENTES
                 INVALID KEY
                     MOVE 'NENHUM REGISTRO ENCONTRADO' TO WRK-MSGERRO
                  NOT INVALID KEY
                   OPEN OUTPUT RELATO
                   PERFORM UNTIL CLIENTES-STATUS = 10 
                     ADD 1 TO WRK-QTREGISTROS  
                         MOVE CLIENTES-REG TO RELATO-REG
                         WRITE RELATO-REG
                     READ CLIENTES NEXT
                   END-PERFORM
      *                MOVE 'REGISTROS LIDOS ' TO RELATO-REG
      *                MOVE WRK-QTREGISTROS    TO RELATO-REG(18:05)
      *                WRITE RELATO-REG
                     CLOSE RELATO
                END-READ.
               MOVE 'REGISTROS LIDOS ' TO WRK-MSGERRO.
               MOVE WRK-QTREGISTROS TO WRK-MSGERRO(17:05).
               ACCEPT MOSTRA-ERRO.             
</pre>

### Arquivo de relatório

**Pergunta**
- O arquivo de saída de dados deve ter necessariamente a mesma estrutura (layout) do arquivo de entrada dos dados?

**Resposta**
- Não, pois a estrutura do arquivo de saída pode ser diferente, com layout menor ou maior do que o de entrada.
  
**Explicação**
- É possível que o layout do arquivo de saída seja diferente em relação ao de entrada, com maior tamanho para armazenar por exemplo, a data de gravação do registro.

</details>

<details>
    <summary>Capital Code: Curso COBOL</summary>

## Aula 01:

### TN3270 Plus
- Ferramente de acesso ao MAINFRAME.
- Existem diversas ferramentas.

### Bancos - Sistema Financeiro 
- Alta performance.
- Precisão.
- DB2 banco de dados da IBM que trabalha em conjunto com MAINFRAME - COBOL.

### Níveis
- Programador JR.
- Programador Pleno
- Programador Sênior
- Analista Nível I
- Analista Nível II
- Analista Nível III

### INITIALIZE

- Inicializando a variável com 0.

<pre>
INITIALIZE WS-DIA
=
MOVE 0 TO WS-DIA
</pre>

### GOBACK

- Encerra o programa.

<pre>
GOBACK.
</pre>

</details>

<details>
    <summary>Aprenda a Programar em COBOL: Passo a Passo do 0 ao Profissional</summary>
  
### Condev
http://condev.com.br/

### Gráfico
http://fingfx.thomsonreuters.com/gfx/rngs/USA-BANKS-COBOL/010040KH18J/index.html

### Open Cobol IDE
https://sourceforge.net/projects/cobol/files/

### Micro Focus Visual COBOL Personal Edition
https://www.microfocus.com/

</details>

<details>
    <summary>Aprenda Cobol Web</summary>
  
  ### 1. Introdução: Porque utilizar o COBOL
  
  - Criando um simples Sistema de Cadastro com HTML e JavaScript.
  - 60 por cento de todas as linhas de programação no mundo são construídas em COBOL.
  
  ### 2. Estruturas de um programa Cobol Web
  
  <pre>
        *================ Compilando um Programa com Diretiva
      $set preprocess (htmlpp) endp
      $set sourceformart"free" 	
      *======================================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Aula1.
      *=================== Funcionalidades do Ambiente
       ENVIRONMENT DIVISION.
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.
      *===================  Estruturas do Código Fonte
       DATA DIVISION.
      *===================  Variáveis
       WORKING-STORAGE SECTION.
      *===================  Execuções
       PROCEDURE DIVISION.
      *=======================================================
       0000-CONTROLE SECTION.
       0000.
            PERFORM 1000-INICIALIZACAO
            PERFORM 2000-PROCESSAMENTO
            PERFORM 3000-FINALIZACAO.
       0000-SAIDA.
            EXIT PROGRAM
            STOP RUN.
      *=======================================================
       1000-INICIALIZACAO SECTION.
       1000.

       1000-EXIT.
            EXIT.
      *=======================================================
       2000-PROCESSAMENTO SECTION.
       2000.
            PERFORM 2100-CARREGA-TELA.
       2000-EXIT.
            EXIT.
      *=======================================================
       2100-CARREGA-TELA SECTION.
       2100.
            EXEC HTML
               <html>
                   Curso COBOL WEB
               </html>
            END-EXEC.
       2000-EXIT.
            EXIT.
      *=======================================================
       3000-FINALIZACAO SECTION.
       3000.
       3000-EXIT.
            EXIT.
  </pre>
  
  ### <a href="https://github.com/lucasrmagalhaes/learning-COBOL/blob/main/cob/Aprenda%20Cobol%20Web/CRIANDOCAMPOSFORMULARIOHTML.cob">3. Criando campos no formulário HTML</a>
  
  ### 4. Integração entre o formulário HTML e o COBOL
  
  ### 5. Criando campos no formulário HTML
  
  ### 6. Criando campos no formulário HTML
  
  ### 7. Criando campos no formulário HTML
  
  ### 8. Criando campos no formulário HTML
  
  ### 9. Criando campos no formulário HTML
  
</details>
