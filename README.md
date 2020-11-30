**CO**mmon **B**usiness **O**riented **L**anguage

> Linguagem comum orientada a negócios é uma das linguagens de programação mais antigas, pertecendo à segunda geração das linguagens de programação. É muito utilizada em aplicações voltadas para o mundo financeiro, devido à sua precisão e rapidez na aritmética de ponto flutuante.

> Grace Murray Hopper foi almirante e, Analista de Sistemas da Marinha dos Estados Unidos nas décadas de 1940 e 1950, criadora da linguagem de programação de alto nível Flow-Matic — base para a criação do COBOL — e uma das primeiras programadoras do computador Harvard Mark I em 1944.

[Documentação Oficial do Cobol](https://gnucobol.sourceforge.io/guides/GNUCobol2.pdf "Documentação Oficial do Cobol") | [Conhecendo Melhor Grace Hopper](https://youtu.be/eAlIiKFRryw "Conhecendo melhor Grace Hopper")

<!-- <details open> -->

<details>
    <summary>Estrutura da Linguagem</summary>
    
##### IDE:
- OpenCobolIDE

##### Estrutura do Curso:
- Níveis de Variáveis
- Comandos de Decisão
- Comandos de Repetição
- Aproveitamento de Código
- Padrões de Mercado

#### [Glot](https://glot.io "Glot")
- Ambiente para trabalhar online.
- Diversas linguagens disponíveis.

#### [Jdoodle](https://www.jdoodle.com "Jdoodle")
- Ambiente para trabalhar online.
- Permite salvar projetos e ter galerias por linguagem.

#### [Paiza](https://paiza.io/en "Paiza")
- Ambiente para trabalhar online.

#### [OpenCobolIDE](https://pypi.org/project/OpenCobolIDE/#files "OpenCobolIDE")
- [Versão - Windows e Debian](https://launchpad.net/cobcide/+download "Windows e Debian") 
- [Visual Studio: Extensão - Rech Cobol](https://marketplace.visualstudio.com/items?itemName=rechinformatica.rech-editor-cobol "Rech Cobol")

#### Maneira rápida de compilar no Linux:

- Instalações:
<pre>
# apt-get install open-cobol
# apt-get install gedit
</pre>

- Testando:
<pre>
# mkdir cobol
# cd cobol
# touch exemplo.cbl
# gedit exemplo.cbl
</pre>

- Rodando:
<pre>
cobc -x -o exemplo.exe exemplo.cbl
./exemplo.exe
</pre>

- -x -> Suporte para criar um executável.

- -o -> É para especificar a saída do nome de arquivo.

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

Essas 4 divisões compoem as divisões básicas do COBOL.

##### Pergunta - Executando um Programa COBOL:
- Atualmente, existem dois ambientes onde podemos executar programas escritos em Cobol: Alta plataforma (Mainframe) e Plataforma Open (Windows, Linux).
- No Mainframe, além do programa fonte, o que mais precisamos para compilar/executar rotinas em Cobol em modo Batch ?

##### Resposta:
- Rotinas JCL

##### Explicação:
- No mainframe, existem dois modos de trabalho: Batch e Online. No Batch, o usuário precisa solicitar (executar) as rotinas, seja em Cobol ou qualquer outra linguagem. Cada execução tem seu controle de acesso, tempo feito pelo JCL.

##### Pergunta - Regras de um Programa COBOL:
- Na construção de um programa Cobol, quais das regras abaixo precisamos respeitar para executar sem erros?

##### Resposta:
- Remarks são utilizados para documentar alterações no código fonte.
- Divisões, Seções e Parágrafos devem iniciar na Área A (colunas 8 a 11).

##### Explicação:
- O Cobol não utiliza as colunas 1 a 6, portanto as aproveitamos para fazer marcações de alteração. É uma prática comum de mercado.
- O Cobol tem duas áreas: A (8 a 11) para identificar divisões, seções, parágrafos e B (12 a 72) para comandos.

</details>

<details>
    <summary>Comandos Básicos e Variáveis</summary>

##### Criando o primeiro programa:

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

##### Variável Nível 77:

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

##### Variável Nível 01:

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

##### Vírgula e Máscara de Edição:

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

##### Pergunta - Trabalhando com Variáveis:
- Em Cobol, as variáveis devem ser iniciadas com um número de nível associado, determinando que o nível superior será responsável (pai) pelo nível inferior. No exemplo abaixo, quais níveis poderiam ser utilizados para criação de um grupo de variáveis?

a) __ wrk-data.

b) __ wrk-ano  pic x(04).  
b) __ wrk-mes  pic x(02).  
b) __ wrk-dia  pic x(02).  

##### Resposta:
- Nivel 01 / b) Nivel 02

##### Explicação Alternativa Correta:
- Nível 01 é o menor nível aceito pelo Cobol. Quando for utilizado como variável de grupo, deverá conter abaixo outras variáveis começando pelo nível 02 até 49 . 
- Se a variável for iniciada com nível 01 e não contiver outras variáveis , torna-se variável simples de um elemento.

##### Explicação Alternativas Incorretas:
a) Nivel 77 / b) Nivel 88
- Nível 77 é utilizado no Cobol para declarar variáveis de um elemento (conteúdo) apenas. 
- Nível 88 é utilizado para valores lógicos. Deve ser associado a uma variável de grupo.

a) Nivel 99 / b) Nivel 100
- Não existe nível 99 em Cobol. Máximo até 88.

##### Máscaras de Edição:

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

##### CPF:

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

</details>

<details>
    <summary>Operadores Aritméticos</summary>

##### PROGCOB05.cob -> Exemplo.

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

##### Pergunta - Cálculo de média aritmética:
- Considerando as variáveis N1, N2, N3 e N4 como notas do aluno nos quatro bimestres escolares, qual a sequência correta para calcular sua média na variável Resultado?

##### Resposta:
<pre>
ADD N1 N2 N3 N4 TO Resultado
DIVIDE Resultado BY 4 GIVING Resultado
</pre>

##### Explicação Alternativa Correta:
- Correto! Primeiro, faremos a soma das quatro variáveis, acumulando o valor na variável Resultado. 
- Na sequência, dividiremos Resultado por 4, retornando o valor para a própria variável Resultado.

##### Valores Positivos e Negativos
- Exemplo: PROGCOB06.cbl

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

</details>

<details>
    <summary>Tomando Decisões e Operadores Relacionais</summary>

##### Comando IF/ELSE/END-IF

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

##### Pergunta - Aplicando um Desconto:
- Considerando as variáveis Valor (valor do produto) e Bandeira (operadora do cartão), quais rotinas são corretas para aplicarmos desconto de 10% quando o valor for maior ou igual a R$1000,00 e bandeira igual a VISA?

##### Resposta:
<pre>
IF Valor >= 1000 
    IF Bandeira = “VISA”
     COMPUTE Desconto = Valor * 0,10
</pre>

<pre>
IF Valor >= 1000 AND Bandeira = “VISA”
     COMPUTE Desconto = Valor * 0,10
</pre>

##### Explicação Alternativa Correta:
- Podemos fazer o teste das condições em dois IFs separados, porém com dependência entre eles.
- Com o uso do operador AND, as duas condições precisam ser verdadeiras para aplicação do desconto.

##### Comando EVALUETE:

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

##### Comparando Valores:

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

##### Variável Nível 88 - Lógica:

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

##### Operadores Relacionais:

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

##### Aumento Salarial:

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

</details>

<details>
    <summary>Lógica Estruturada e Uso de Parágrafos</summary>

##### Parágrafos e Lógica Estruturada:

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

##### Pergunta - Aplicando um Desconto:
- Aprendemos que a codificação usando lógica estruturada é uma exigência nas empresas em geral.
- Quais das opções abaixo não representa uma vantagem em codificarmos de maneira estruturada ?

##### Resposta:
- Velocidade de execução do programa.

##### Explicação Alternativa Correta:
- Não há ganho de performance entre a escrita de um programa sem ou com o uso da lógica estrutura, pelo fato do cobol pré-compilar todo o código antes de rodar.

##### Exercício: Tempo de Casa Estruturado

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

</details>

<details>
    <summary>Repetições e Aproveitamento de Código</summary>

##### PERFOM TIMES

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

##### PERFORM VARYING

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

##### PERFORM UNTIL

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

##### Output:

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

##### COPY:

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

##### Pergunta - Repetindo código com laços:
- Quais são as principais formas de uso do comando PERFORM? 
- E quais destas podemos utilizar para ler N valores da console até que o valor digitado seja 99?

##### Resposta:
- TIMES, VARYING e UNTIL. Podemos utilizar o UNTIL.

##### Explicação Alternativa Correta:
- TIMES (n vezes), VARYING (N vezes com variável contador) e UNTIL (até que o valor seja igual) são as principais forma de uso do PERFORM. 
- Para ler infinitamente da console até o valor ser 99 usamos o UNTIL (por exemplo: UNTIL variável = 99).

##### Investimento Financeiro:

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

##### STRING:

- STRING é um comando que serve para concatenar dois ou mais itens em um único, ou alterar o conteúdo de um item.
- A estrutura do comando, é:

<pre>
STRING item-1
       item-2
       DELIMITED BY (SIZE ou SPACE)
       INTO variável-destino
END-STRING.
</pre>

##### DELIMITED BY delimitador, ou SIZE, ou SPACE:
- SIZE, todo o conteúdo será considerado.
- SPACE será considerado somente o conteúdo até o primeiro espaço encontrado.

##### PROGCOBSTRING:

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

##### PROGCOBSTRING - Output:

<pre>
001,001,002,003,005,008,013,021,034,055,089,144,233,377,610,987,...
</pre>

</details>

<details>
    <summary>Trabalhando com Variáveis de Índice</summary>
    
</details>
