# Programação Mainframe 👾

Disciplina ministrada pelo professor Marcio André Ferreira Pereira

Lattes:   http://lattes.cnpq.br/2800361122369298
## Aula 01
### Surgimento
No início dos anos 1960, a partir do incentivo do governo americano e do setor comercial foi desenvolvida a linguagem de programação COBOL que tinha como propósito ser uma linguagem universal e faciliar a manutenção e desenvolvimento de sistemas para ambientes comerciais.

COBOL surgiu como uma linguagem "autodocumentável", com sintaxe próxima ao inglês, e organizada em divisões, seções, parágrafos e sentenças, como em um texto comum.

Com o passar do tempo a linguagem passou por revisões e teve várias versões. Nas duas ultimas COBOL/2002 e COBOL/2014 foi incorporado o paradigma de orientação a objetos, mas a maioria dos programas ainda hoje adotam o paradigma sequencial.

### Popularidade do COBOL

Fatores importantes para a popularização do COBOL

- O governo americano exigir que todos os fornecedores de computadores para o governo oferecessem um compilador para essa linguagem.

- Por ser focada em dados organizados, ela atendia bem às necessidades do processamento comercial, especialmente por representar informações de negócio de forma simples.

- Ter a sintaxe parecida com o inglês.

- Ser idependente de fabricante, permitindo com que um programa escrito em COBOL para um computador precisaria somente de alguns ajustes para rodar em outro.

- Portabilidade, é possível, por exemplo, migrar todo um sistema construído num mainframe da IBM e processá-lo em um servidor Linux, com poucas alterações.

### Bug do Milênio e Críticas ao COBOL 

No final dos anos 1990, o COBOL enfrentou sua maior ameaça com o "Bug do Milênio". Muitas empresas cogitaram substituí-lo, pois a correção dos programas exigia revisão e testes extensivos. No entanto, reescrever os sistemas era inviável devido ao alto custo e complexidade, levando à decisão de apenas adaptar os sistemas críticos, que seguem operando até hoje.  

Apesar de amplamente utilizado, o COBOL sempre enfrentou críticas. Sua sintaxe, projetada para ser legível e acessível, foi considerada verborrágica. Além disso, sua abordagem procedural contrasta com a programação orientada a objetos moderna. Ainda assim, o COBOL continua eficiente para processar grandes volumes de dados, sendo mais robusto que muitas linguagens modernas nesse contexto.

## Aula 02

### Estrutura do COBOL e Influência dos Cartões Perfurados  

O COBOL foi desenvolvido para ser utilizado nos primeiros mainframes, que ainda operavam com cartões perfurados. Por conta disso, a estrutura da linguagem herdou algumas dessas características, como a limitação das linhas a, no máximo, 80 caracteres. Esses caracteres são organizados em áreas específicas:  

- **Sequence Number (Colunas 1-6):** Antigamente usada para numerar as linhas do programa. Hoje, pode indicar alterações no código.  
- **Indicator Area (Coluna 7):** Define instruções específicas para o compilador, como comentários e quebras de linha.  
- **Área A (Colunas 8-11):** Algumas estruturas do COBOL devem obrigatoriamente começar nesta área.  
- **Área B (Colunas 12-72):** Local onde são codificadas variáveis de nível superior a 1, cláusulas e comandos.  
- **Identifier Area (Colunas 73-80):** Nos cartões perfurados, armazenava o nome do programa. Hoje, é ignorada pelos compiladores, mas pode ser usada para registrar alterações no código.  

Compiladores modernos ajudam a manipular essa estrutura rígida, oferecendo configurações de zonas de tabulação e recursos de autoidentação. O COBOL não é *case sensitive*, mas escrever em maiúsculas é uma boa prática, pois mantém a tradição da época dos cartões perfurados. Os comentários são indicados com um asterisco (`*`) na coluna 7.  

### Estrutura de um Programa COBOL  

Todo programa COBOL é dividido em quatro **divisões**, que são organizadas em **seções**, compostas por **parágrafos**, que contêm pelo menos uma **sentença**. Todos os nomes de divisão, seção e parágrafo devem terminar com um ponto (`.`).  

<p align="center">
  <img src="https://github.com/claraneves23/programacao_mainframe/blob/main/Captura%20de%20tela%202025-03-07%20184231.png?raw=true" alt="Exemplo de Estrutura do COBOL">
</p>


### Literais e Constantes Figurativas  

As **literais** são valores constantes compostos por um conjunto de caracteres e podem ser usadas para atribuir ou modificar o valor de uma variável. Já as **constantes figurativas** são palavras reservadas com valores fixos atribuídos, como `SPACES`, que adiciona espaços ao valor de uma variável.  

## Aula 03

### IDENTIFICATION DIVISION
- Deve ser a primeira divisão declarada em um programa.
- Ela não contém seções (SECTIONS), mas somente alguns parágrafos preestabelecidos e opcionais.
- O único parágrafo obrigatório é o PROGRAM-ID (Nome do programa). O nome do prgrama deve ser uma palavra com até 8 caracteres (letras ou números), começando por uma letra.
#### Nome do Programa
- Esse nome deve aparecer sempre após o parágrafo PROGRAM-ID:
```
IDENTIFICATION DIVISION.
PROGRAM-ID. CRP0206.
```
##### Cláusulas opcionais
```
PROGRAM-ID. {nome-do-programa}IS INITIAL.
PROGRAM-ID. {nome-do-programa}IS COMMON.
PROGRAM-ID. {nome-do-programa}IS RECURSIVE.
```
`INITIAL`: indica que o subprograma será carregado em memória e suas variáveis serão "inicializadas" cada vez que ele for chamado.

`COMMON`: permite que um subprograma seja inserido diretamente no código-fonte do programa principal, uma abordagem chamada *nested program*. Isso significa que, em vez de ser chamado separadamente, o subprograma é copiado para dentro do código do programa principal na compilação. Embora possa otimizar a execução, essa técnica é pouco usada por dificultar a modularidade e a manutenção do código.

`RECURSIVE`: permite com que o subprograma chame a si mesmo.

*essas claúsulas podem ser combinadas para atender a uma necessidade específica*

- O parágrafo PROGRAM-ID permite que o programa tenha um nome externo diferente do nome interno.
- A linha abaixo fefine FATP0101 como nome de programa, mas externamente (para o sistema operacional) ele será executado como "CadastraCategorias".
```
PROGRAM-ID. FATP0101 AS "CadastraCategorias".
```
#### Nome do Programador
- É opcional, porém é o padrão de algumas empresas requer seu uso. É o nome do programador que fez a codificação inicial.
```
IDENTIFICATION DIVISION.
PROGRAM-ID. CRP0206.
AUTHOR. PAULO ANDRE DIAS.
```
- O ponto após o nome do autor é obrigatório, e é também é exigido em todos os outros parágrafos desta divisão.

#### Data da Codificação
- É opcional, preenchido com a data em que o programa terminou de ser codificado e entrou na fase de testes.
```
IDENTIFICATION DIVISION.
PROGRAM-ID. CRP0206.
AUTHOR. PAULO ANDRE DIAS.
DATE-WRITTEN. 25/10/2015.
```
#### COMENTÁRIOS
- Neste parágrafo, os programadores descrevem o nome longo do programa, seu objetivo e explicam seu funcionamento.
```
IDENTIFICATION DIVISION.
PROGRAM-ID. CRP0206.
AUTHOR. PAULO ANDRE DIAS.
DATE-WRITTEN. 25/10/2015.
REMARKS. SELECIONA DUPLICATAS ATIVAS
```
#### Estrutura Final
```
IDENTIFICATION DIVISION.
PROGRAM-ID.  nome-do-programa
AUTHOR.      nome-de-quem-fez-o-programa
INSTALLATION.   nome-da-empresa-dona-do-programa
DATE-WRITTEN.    data-em-que-o-programa-foi-escrito
DATE-COMPILED.   data-em-que-o-programa-foi-compilado
SECURITY.        informações-sobre-acesso-ao-programa
REMARKS.         comentários-diversos.
```

### ENVIROMENT DIVISION
- Reúne informações sobre o ambiente onde o programa será executado.
- Normalmente são parâmetros de execução, opções de compatibilidade e declarações de arquivos de entrada e saída.
- Possui duas seções: CONFIGURATION SECTION e INPUT-OUTPUT SECTION.
 
#### CONFIGURATION SECTION
- Fornece dados sobre a plataforma que será usada para compilar e executar o programa, além de permitir que o programador estabeleça alguns parâmetros para execução e compatibilidade. (ex: tipo de alfabeto, símbolo do valor monetário).
  
- Porém, geralmente usamos esta seção apenas para substituir o ponto decimal (padrão americano) pela vírgula decimal (padrão brasileiro). Para isso, codificamos a CONFIGURATION SECTION e um de seus parágrafos, SPECIAL-NAMES, com a sentença DECIMAL-POINT IS COMMA, como no exemplo abaixo:
```
ENVIROMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
  DECIMAL-POINT IS COMMA.
```
#### INPUT-OUTPUT SECTION
##### Declaração de Arquivos
- Arquivos convencionais são todos os arquivos sequenciais, indexados e/ou relativos que não fazem parte de um banco de dados.
- Processar informações em modo *batch* (modo sequencial) usando arquivos convencionais apresenta uma performance muito superior à que seria obtida se o sistema usasse apenas banco de dados.
- Todos os arquivos convencionais que serão lidos, gravados ou modificados pelo programa precisam ser declarados no parágrafo FILE-CONTROL da seção INPUT-OUTPUT SECTION. da ENVIROMENT DIVISION
- EXEMPLO:
```
ENVIROMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
    DECIMAL-POINT IS COMMA.

INPUT-OUTPUT SECTION.
FILE-CONTROL.

    SELECT CRA0205 ASSIGN TO "../dat/cra0205.dat"
    ORGANIZATION IS LINE SEQUENTIAL
    FILE STATUS IS WT-ST-CRA0205.

    SELECT CRA0206 ASSIGN TO "../dat/cra0206.dat"
    ORGANIZATION IS LINE SEQUENTIAL
    FILE STATUS IS WT-ST-CRA0206.
```
- Haverá uma cláusula SELECT para cada arquivo acessado pelo programa.
- É possível, definir o tipo de proteção (lock) que será usado para modificar registros, o modo como o arquivo será compartilhado, o método de acesso (sequencial ou randômico), e assim por diante.
- O tipo de arquivo é definido pela cláusula ORGANIZATION.
- Nesse exemplo, os dois arquivos são do tipo linear sequencial (semelhantes a arquivos de texto).
- Nesse tipo de organização, os registros são separados por caracteres delimitadores. No Windows, CR e LF, e no Linux ou Unix, só LF.

##### Declarando o File Status
- A cláusula FILE STATUS define uma variável onde o programa vai armazenar o código de retorno das operações de entrada e saída (I/O) de um arquivo. Isso significa que, sempre que o programa ler, gravar ou manipular um arquivo, ele salva um código nessa variável para indicar se a operação deu certo ou se houve erro. O ideal é criar uma variável de FILE STATUS para cada arquivo usado no programa, pois isso facilita o controle e a depuração de erros.
- No nosso exemplo, dissemos que os códigos de retorno do arquivo CRA0205 ficarão na variável WT-ST-CRA0205, e que para o arquivo CRA0206 esses códigos ficarão em WT-ST-CRA0206.

###### Principais códigos de retorno para File Status
| Código | Descrição                                                        |
|--------|------------------------------------------------------------------|
| 00     | Operação realizada com sucesso                                  |
| 04     | O tamanho do registro lido não corresponde ao tamanho declarado no programa |
| 10     | Não há mais registros para serem lidos (condição de fim de arquivo) |
| 34     | Não há mais espaço disponível no arquivo para gravação de registros |
| 35     | O programa tentou abrir um arquivo que não foi encontrado no ambiente |
| 39     | A organização do arquivo é diferente do que foi declarado no programa |
| 41     | O programa tentou abrir um arquivo que já está aberto           |
| 42     | O programa tentou fechar um arquivo que já está fechado         |

### DATA DIVISION
- Divisão em que são declarados os dados que serão usados durante o processamento.

#### Dados Estruturados
No COBOL, os dados são organizados de forma hierárquica.  

- **Item elementar**: é como uma variável comum, armazenando um único valor.  
- **Item de grupo**: é um conjunto de itens elementares, funcionando como um "pacote" de variáveis relacionadas.  

Essa estrutura ajuda a organizar os dados de maneira clara e estruturada dentro do programa.

- Exemplo:
```
01 Conta a Receber
   02 Chave
         05 Número da Fatura
         05 Número da Duplicata
   03 Código do Cliente
   03 Data da Emissão
   03 Data de Vencimento
   03 Valor da Duplicata
   03 Categoria
   03 Situação
```
- Veja que o registro Conta a Receber recebe o nível mais alto (01).
- As informações que compõem esse registro estão num nível mais baixo
(03).
- O campo chave, por sua vez, é formado por itens elementares que estão
num nível ainda mais baixo (05).
- No COBOL, o nível hierárquico mais alto sempre recebe o número **01**. Os níveis abaixo podem ser numerados entre **02 e 49**, desde que tenham um número maior que o nível acima.  
- É recomendável numerar os níveis de **dois em dois** ou **cinco em cinco** para facilitar futuras adições.  
- Itens do mesmo nível devem ter a mesma numeração para manter a organização do código.  
- A **hierarquia é definida pelos números**, enquanto a indentação serve apenas para facilitar a leitura.

#### Tipos de Dados
Cobol trabalha com dois tipos de dados: numérico e alfanumérico. O que define o tipo de uma variável, seu tamanho e seu formato é a cláusula picture (PIC) codificado após o nome de cada variável. Seu formato mais simples é:
- PIC 9(n), para variáveis numéricas, onde “n” deve ser substituído pelo tamanho
da variável.
- PIC X(n), para variáveis alfanuméricas, onde “n” também deve ser substituído
pelo tamanho da variável.

| Picture         | Comentários                                                                                      |
|---------------|-------------------------------------------------------------------------------------------------|
| 9(002)        | Variável numérica, com tamanho de dois dígitos, que pode receber valores de 00 a 99.            |
| X(030)        | Variável alfanumérica, com tamanho de 30 caracteres, que pode receber letras, números, espaços e caracteres especiais. |
| 9(010)        | Variável numérica, com tamanho de 10 dígitos, que pode receber valores de 0000000000 a 9999999999. |
| S9(005)       | Variável numérica, com tamanho de 5 dígitos, que pode receber valores de -99999 a +99999.        |
| S9(013)V9(002) | Variável numérica, com tamanho de 15 dígitos, sendo 13 para a parte inteira e 2 para a parte decimal. Pode receber valores de -9999999999999,99 a +9999999999999,99. |

*O ponto ou vírgula decimal é apenas posicional: ele não ocupa espaço na variável.*

- Itens de grupo não possuem cláusula picture, uma vez que seu tipo, tamanho e formato será determinado pelo tipo, tamanho e formato dos seus itens elementares.

```
01 CONTA-RECEBER.
  03 CHAVE.
     05 NR-FATURA       PIC 9(006).
     05 NR-DUPLICATA    PIC 9(002).
  03 CD-CLIENTE         PIC X(006).
  03 DT-EMISSAO.       
     05 AA-EMISSAO       PIC 9(004).
     05 MM-EMISSAO       PIC 9(002).
     05 DD-EMISSAO       PIC 9(002).
  03 DT-VENCIMENTO.       
     05 AA-VENCIMENTO     PIC 9(004).
     05 MM-VENCIMENTO     PIC 9(002).
     05 DD-VENCIMENTO     PIC 9(002).
  03 VL-DUPLICATA          PIC S9(013)V9(002).
  03 CD-CATEGORIA          PIC X(003).     
  03 ST-DUPLICATA          PIC X(003).     
```
- Um item de grupo se comporta como uma variável alfanumérica (PIC X) cujo tamanho é igual à soma dos tamanhos de seus itens elementares.
  
#### Detalhamento de arquivos convencionais
- Todos os arquivos declarados na ENVIRONMENT DIVISION precisam ser detalhados na DATA DIVISION, numa seção específica chamada FILE SECTION.
- A FILE SECTION deve ser declarada na coluna 8, logo depois do nome da divisão.
- Para mostrar como os arquivos são detalhados, partiremos da ENVIRONMENT DIVISION que codificamos no tópico anterior:
```
*=====================================================================*
ENVIRONMENT DIVISION.
*---------------------------------------------------------------------*
CONFIGURATION SECTION.
SPECIAL-NAMES.
   DECIMAL POINT IS COMMA.

INPUT-OUTPUT SECTION.
FILE-CONTROL.
*---------------------------------------------------------------------*
* UNLOAD DA TABELA DE DUPLICATAS
*---------------------------------------------------------------------*
  SELECT CRA0205 ASSIGN TO "../dat/cra0205.dat"
  ORGANIZATION IS LINE SEQUENTIAL
  FILE STATUS IS WI-ST-CRA0205.
*---------------------------------------------------------------------*
* DUPLICATAS ATIVAS EMITIDAS NO PERIODO
*---------------------------------------------------------------------*
  SELECT CRA0206 ASSIGN TO "../dat/cra0206.dat"
  ORGANIZATION IS LINE SEQUENTIAL
  FILE STATUS IS WT-ST-CRAB206.
```
- Para detalhar esse arquivo, incluiremos um parágrafo de file description (FD) na FILE SECTION.
- Dentro desse parágrafo colocaremos a definição do registro (um item de grupo com nível 01) e dentro do registro colocaremos as variáveis correspondentes a cada campo.
```
*=====================================================================*
DATA DIVISION.
*---------------------------------------------------------------------*
FILL SECTION
*---------------------------------------------------------------------*
* UNLOAD DA TABELA DE DUPLICATAS
*---------------------------------------------------------------------*
  FD CRA0205.
  01 CRA0205-REGISTRO.
     03 CRA0205-NR-FATURA     PIC 9(006).
     03 CRA0205-NR-DUPLICATA  PIC 9(002).
     03 CRA0205-CD-CLIENTE    PIC X(006).
     03 CRA0205-DT-EMISSAO    PIC 9(006).
     03 CRA0205-DT-VENCIMENTO PIC 9(008).
     03 CRA0205-VL-FATURA     PIC S9(013)V9(002).
     03 CRA0205-CD-CATEGORIA  PIC X(003).
     03 CRA0205-ST-FATURA     PIC X(003).
*---------------------------------------------------------------------*
```
- No COBOL, todas as declarações de variáveis devem terminar com um **ponto** (`.`).  
- Os campos do registro são **itens elementares** com `PICTURE`, mas também podem ser agrupados em **itens de grupo**.  
- Usar o nome do arquivo como **prefixo** nos campos não é obrigatório, mas é uma **boa prática** para organizar o código.  
- A **FILE SECTION** apenas descreve a estrutura do arquivo; as operações como leitura, gravação e exclusão são feitas na **PROCEDURE DIVISION**.

#### Variáveis e constantes de trabalho
- No COBOL, as **variáveis de trabalho** são usadas para armazenar **informações temporárias**, como contadores, acumuladores e resultados intermediários. Elas também podem indicar estados do programa (*flags*) ou formatar saídas para telas e relatórios.  

- Essas variáveis são declaradas na **WORKING-STORAGE SECTION**, que faz parte da **DATA DIVISION** e deve ser escrita a partir da coluna 8.

- No COBOL, não é comum criar **itens elementares** diretamente no nível **01**. Existe um nível especial, **77**, para variáveis isoladas, mas seu uso não é recomendado, pois pode dificultar a organização do código.  

- Em programas grandes, muitas variáveis podem tornar a leitura confusa. Por isso, é **boa prática agrupá-las** em **itens de grupo**, destacando sua finalidade e melhorando a organização do programa.
- Quando um programa COBOL é carregado, suas variáveis de trabalho não têm valores iniciais; normalmente seu conteúdo está preenchido com o que chamamos de “lixo de memória”.
- Isso pode ser um problema principalmente para variáveis numéricas, pois um lixo alfanumérico numa variável numérica certamente fará o programa encerrar imediatamente, de forma anormal.
- Para evitar que isso aconteça é altamente recomendável que todas as variáveis de trabalho da WORKING-STORAGE SECTION sejam iniciadas com algum valor, compatível com seus tipos.
- Na declaração de nossos contadores devemos colocar uma cláusula
VALUE após a picture:
```
*===============================================================================*
WORKING-STORAGE SECTION
*-------------------------------------------------------------------------------*
01 WT-CONTADORES
   03 WT-CT-LIDOS       PIC 9(006) VALUE ZEROS.
   03 WT-CT-GRAVADOS    PIC 9(006) VALUE ZEROS.
```
- A constante figurativa ZEROS é autoexplicativa: indica que queremos que as variáveis sejam iniciadas com valor zero.
- Para variáveis alfanuméricas normalmente usamos a constante figurativa SPACES, que preenche a variável com espaços em branco.

## Aula 04
### Procedure Division

#### Introdução

A **PROCEDURE DIVISION** é a última das quatro divisões de um programa COBOL e contém as instruções que serão executadas pelo programa. É nessa divisão que a lógica do programa é implementada, incluindo a leitura e escrita de arquivos, atribuição de valores a variáveis, operações aritméticas e controle de fluxo.

#### Parágrafos e Sentenças

- A **PROCEDURE DIVISION** é dividida em parágrafos, cada um com um nome único definido pelo programador.
- Os nomes dos parágrafos devem começar na coluna 8 (Área A) e terminar com um ponto.
- As sentenças (instruções) dentro dos parágrafos começam na coluna 12 (Área B).
- Toda sentença começa com um verbo em inglês, como **READ**, **MOVE**, **WRITE**, **ADD**, exceto a instrução **IF**, usada para testar condições.
- Apenas a última sentença de um parágrafo precisa de um ponto final.

#### Programação Linear vs. Estruturada

- **Programação Linear**: Parágrafos funcionam como rótulos (labels) para onde o fluxo de execução pode ser desviado usando **GO TO**. Esse estilo é considerado obsoleto e dificulta a manutenção do código.
- **Programação Estruturada**: Parágrafos são usados como rotinas com finalidades específicas, sem o uso excessivo de **GO TO**. Isso melhora a legibilidade e a manutenção do código.

#### Abertura de Arquivos

- Antes de ler ou gravar em um arquivo, ele deve ser aberto com o comando **OPEN**.
- O comando **OPEN** pode ser usado para abrir vários arquivos simultaneamente, especificando o modo de acesso:
  - **INPUT**: Para leitura.
  - **OUTPUT**: Para gravação (apaga o conteúdo existente).
  - **I-O**: Para leitura e gravação (preserva o conteúdo existente).
  - **EXTEND**: Para adicionar registros ao final do arquivo.

Exemplo:
```
OPEN INPUT arquivo1 OUTPUT arquivo2.
```

#### Leitura de Arquivos
- O comando READ é usado para ler registros de um arquivo sequencial.
- Cada execução de READ copia o próximo registro do arquivo para a área de memória definida na FILE SECTION.
- O conteúdo do registro é armazenado em um item de grupo (nível 01) e seus itens elementares assumem os valores correspondentes.
- Se o primeiro registro do arquivo for
```
11111122ABCDEF2015102520151125000000000012300QRTATV
```
- O registro inteiro será copiado para CRA0205-REGISTRO e, consequentemente, seus itens elementares assumirão os seguintes valores:
```
CRA0205-NR-FATURA = 111111
CRA0205-NR-DUPLICATA = 22
CRA0205-CD-CLIENTE = ABCDEF
CRA0205-DT-EMISSAO = 20151025
CRA0205-DT-VENCIMENTO = 20151125
CRA0205-VL-FATURA = 123,00
CRA0205-CD-CATEGORIA = QRT
CRA0205-ST-DUPLICATA = ATV
```
#### Testando Condições com IF
- O comando IF é usado para testar condições e executar comandos com base no resultado.
- Pode ser usado com operadores como GREATER THAN, LESS THAN, EQUAL TO, e operadores lógicos AND e OR.
- A cláusula END-IF é preferível ao ponto final para encerrar o bloco IF, especialmente em condições aninhadas.
```
IF CRA0205-ST-DUPLICATA NOT = "CNC"
    MOVE CRA0205-NR-FATURA TO CRA0206-NR-FATURA
    WRITE CRA0206-REGISTRO
END-IF.
```
#### Atribuição de Valores com MOVE
- O comando MOVE é usado para copiar valores entre variáveis ou atribuir literais e constantes figurativas (como ZEROS e SPACES) a variáveis.
- O MOVE pode ser usado para preencher várias variáveis com um único comando.
```
MOVE "Teste" TO WT-NM-FASE.
MOVE ZEROS TO WT-CT-LIDOS.
```
#### Exemplo de Programa
- Um exemplo de programa COBOL que lê um arquivo de entrada, seleciona registros com base em uma condição e grava os registros selecionados em um arquivo de saída:
```
IDENTIFICATION DIVISION.
PROGRAM-ID. CRP026.
AUTHOR. PAULO ANDRE DIAS.
DATE-WRITTEN. 23/12/2016.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT CRA0205 ASSIGN TO "../dat/cra0205.dat"
    ORGANIZATION IS LINE SEQUENTIAL.
    SELECT CRA0206 ASSIGN TO "../dat/cra0206.dat"
    ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD CRA0205.
01 CRA0205-REGISTRO.
    03 CRA0205-NR-FATURA     PIC 9(006).
    03 CRA0205-NR-DUPLICATA  PIC 9(002).
    03 CRA0205-CD-CLIENTE    PIC X(006).
    03 CRA0205-DT-EMISSAO    PIC 9(008).
    03 CRA0205-DT-VENCIMENTO PIC 9(008).
    03 CRA0205-VL-FATURA     PIC S9(013)V9(002).
    03 CRA0205-CD-CATEGORIA  PIC X(003).
    03 CRA0205-ST-DUPLICATA  PIC X(003).

FD CRA0206.
01 CRA0206-REGISTRO.
    03 CRA0206-NR-FATURA     PIC 9(006).
    03 CRA0206-NR-DUPLICATA  PIC 9(002).
    03 CRA0206-CD-CLIENTE    PIC X(006).
    03 CRA0206-DT-EMISSAO    PIC 9(008).
    03 CRA0206-DT-VENCIMENTO PIC 9(008).
    03 CRA0206-VL-FATURA     PIC S9(013)V9(002).
    03 CRA0206-CD-CATEGORIA  PIC X(003).
    03 CRA0206-ST-DUPLICATA  PIC X(003).

WORKING-STORAGE SECTION.
01 WT-CONTADORES.
    03 WT-CT-LIDOS      PIC 9(006) VALUE ZEROS.
    03 WT-CT-GRAVADOS   PIC 9(006) VALUE ZEROS.

PROCEDURE DIVISION.
INICIO-DO-PROGRAMA.
    OPEN INPUT CRA0205 OUTPUT CRA0206.
    PERFORM LEIA-REGISTRO UNTIL WT-CT-LIDOS = 100.
    CLOSE CRA0205 CRA0206.
    STOP RUN.

LEIA-REGISTRO.
    READ CRA0205.
    IF CRA0205-ST-DUPLICATA NOT = "CNC"
        MOVE CRA0205-NR-FATURA TO CRA0206-NR-FATURA
        MOVE CRA0205-NR-DUPLICATA TO CRA0206-NR-DUPLICATA
        MOVE CRA0205-CD-CLIENTE TO CRA0206-CD-CLIENTE
        MOVE CRA0205-DT-EMISSAO TO CRA0206-DT-EMISSAO
        MOVE CRA0205-DT-VENCIMENTO TO CRA0206-DT-VENCIMENTO
        MOVE CRA0205-VL-FATURA TO CRA0206-VL-FATURA
        MOVE CRA0205-CD-CATEGORIA TO CRA0206-CD-CATEGORIA
        MOVE CRA0205-ST-DUPLICATA TO CRA0206-ST-DUPLICATA
        WRITE CRA0206-REGISTRO
        ADD 1 TO WT-CT-GRAVADOS
    END-IF.
    ADD 1 TO WT-CT-LIDOS.
```
## Aula 05

### Gravação de Registros em Arquivos de Saída
- **Comando WRITE**: Utilizado para gravar registros em arquivos abertos em modo `OUTPUT`, `I-O`, ou `EXTEND`.
  - Formato básico:  
    ```
    WRITE nome-do-registro
    ```
  - Alternativa com transferência de dados:  
    ```
    WRITE nome-do-registro FROM variável
    ```
    Equivalente a:  
    ```
    MOVE variável TO nome-do-registro
    WRITE nome-do-registro
    ```

---

### Operações Aritméticas
COBOL utiliza verbos específicos para operações matemáticas: `ADD`, `SUBTRACT`, `DIVIDE`, `MULTIPLY`, e `COMPUTE`.

#### **Tabela de Exemplos com `ADD`**
| Antes (varX, varY, varZ) | Comando                     | Depois (varX, varY, varZ) |
|--------------------------|-----------------------------|---------------------------|
| 8, 7, 4                  | `ADD 3 TO varX`             | 11, 7, 4                  |
| 8, 7, 4                  | `ADD varX varY TO varZ`     | 8, 7, 19                  |
| 8, 7, 4                  | `ADD varX varY GIVING varZ` | 8, 7, 15                  |

- **Cláusula `GIVING`**: Armazena o resultado em uma variável específica sem alterar os operandos originais.

#### **Tabela de Exemplos com `SUBTRACT`**
| Antes (varX, varY, varZ) | Comando                                | Depois (varX, varY, varZ) |
|--------------------------|----------------------------------------|---------------------------|
| 8, 3, 2                  | `SUBTRACT 3 FROM varX`                 | 5, 3, 2                   |
| 8, 3, 2                  | `SUBTRACT varX FROM varY GIVING varZ`  | 8, 3, -5                  |

#### **Comando `DIVIDE`**

| Antes (varX, varY, varZ) | Comando                                      | Depois (varX, varY, varZ) | Explicação                                                                 |
|--------------------------|---------------------------------------------|---------------------------|---------------------------------------------------------------------------|
| 10, 3, 0                 | `DIVIDE varX BY varY GIVING varZ`           | 10, 3, 3                  | Divide varX (10) por varY (3), armazena resultado truncado em varZ (3.333→3) |
| 10, 3, 0                 | `DIVIDE varX BY varY GIVING varZ ROUNDED`   | 10, 3, 3                  | Arredonda resultado (3.333→3) - igual ao truncado quando decimal < 0.5     |
| 10, 4, 0                 | `DIVIDE varX BY varY GIVING varZ ROUNDED`   | 10, 4, 3                  | Arredonda 2.5 para 3 (decimal ≥ 0.5)                                      |
| 10, 3, 0                 | `DIVIDE varX BY varY GIVING varZ REMAINDER varR` | 10, 3, 3 (varR=1)    | varZ=3 (quociente), varR=1 (resto)                                        |
| 15, 5, 0                 | `DIVIDE varY INTO varX`                     | 3, 5, 0                   | Divide varX (15) por varY (5), resultado em varX (sobrescreve)            |
| 10, 0, 0                 | `DIVIDE varX BY varY GIVING varZ ON SIZE ERROR MOVE -1 TO varZ` | 10, 0, -1 | Divisão por zero: executa ON SIZE ERROR (varZ=-1)                         |

---

*Cláusulas adicionais**: 
   - `REMAINDER` (exclusivo de `DIVIDE`)
   - `ON SIZE ERROR` (crítico para divisões por zero)

### Exemplo COBOL com todas as cláusulas:
```
DIVIDE varX BY varY GIVING varZ ROUNDED REMAINDER varW
   ON SIZE ERROR
      DISPLAY "ERRO: DIVISÃO POR ZERO"
END-DIVIDE
```

#### **Comando`MULTIPLY`**
| Antes (varX, varY, varZ) | Comando                           | Depois (varX, varY, varZ) |
|--------------------------|----------------------------------|---------------------------|
| 5, 10, 0                 | `MULTIPLY varX BY varY`          | 5, 50, 0                  |
| 3, 4, 0                  | `MULTIPLY varX BY varY GIVING varZ` | 3, 4, 12              |
| 2, 0, 0                  | `MULTIPLY 5 BY varX GIVING varY` | 2, 10, 0                  |

> **Observação**: O resultado pode ser armazenado em um dos operandos ou em uma terceira variável usando `GIVING`.

---

#### **Comando `COMPUTE`**
Permite fórmulas complexas com operadores `+`, `-`, `*`, `/`, `**`.

##### **Exemplo**:
```
COMPUTE A = (B / C) + (D * (E + F)) - 6
```

#### **Desvios Incondicionais e Controle de Fluxo**
- **Comando `GO TO`**: Usado para loops em programação linear.

##### **Exemplo**:
```
LE-ARQUIVO.
  READ arquivo AT END GO TO TERMINA-PROGRAMA.
  ...
  GO TO LE-ARQUIVO.
````
- Cláusula AT END: Detecta o fim do arquivo para encerrar o loop.

#### Fechamento de Arquivos
Comando CLOSE: Libera recursos e atualiza buffers.
Exemplo:
```
CLOSE arquivo-1 arquivo-2.
```
