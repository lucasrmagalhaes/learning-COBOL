**CO**mmon **B**usiness **O**riented **L**anguage </>

> Linguagem comum orientada a negócios é uma das linguagens de programação mais antigas, pertecendo à segunda geração das linguagens de programação. É muito utilizada em aplicações voltadas para o mundo financeiro, devido à sua precisão e rapidez na aritmética de ponto flutuante.

> Grace Murray Hopper foi almirante e, analista de sistemas da Marinha dos Estados Unidos nas décadas de 1940 e 1950, criadora da linguagem de programação de alto nível Flow-Matic — base para a criação do COBOL — e uma das primeiras programadoras do computador Harvard Mark I em 1944.

[Documentação Oficial do Cobol](https://gnucobol.sourceforge.io/guides/GNUCobol2.pdf "Documentação Oficial do Cobol")
[Conhecendo melhor Grace Hopper](https://youtu.be/eAlIiKFRryw "Conhecendo melhor Grace Hopper")

## 1. Estrutura da Linguagem

#### IDE
- OpenCobolIDE

#### Estrutura do Curso
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
