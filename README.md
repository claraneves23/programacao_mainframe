# Programação Mainframe 👾

Disciplina ministrada pelo professor Marcio André Ferreira Pereira

Lattes:   http://lattes.cnpq.br/2800361122369298
## Aula 01
### Surgimento
No iníncio dos anos 1960, a partir do incentivo do governo americano e do setor comercial foi desenvolvida a linguagem de programação COBOL que tinha como propósito ser uma linguagem universal e faciliar a manutenção e desenvolvimento de sistemas para ambientes comerciais.

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

<img src="C:\Users\maria\Pictures\Screenshots\Captura de tela 2025-03-07 184231.png" alt="Exemplo da estrutura de COBOL" width="500">

### Literais e Constantes Figurativas  

As **literais** são valores constantes compostos por um conjunto de caracteres e podem ser usadas para atribuir ou modificar o valor de uma variável. Já as **constantes figurativas** são palavras reservadas com valores fixos atribuídos, como `SPACES`, que adiciona espaços ao valor de uma variável.  

