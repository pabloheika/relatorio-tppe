# UnBTeX: Uma classe para teses de bacharelado, mestrado e doutorado na
# Universidade de Brasília (UnB), Brasil.
# Versão 1.5.5 10/04/2025

Copyright (C) 2021-2025 por Henrique C. Ferreira <hcferreira@unb.br>

O pacote fornece uma classe baseada em abnTeX e compatível com pdflatex
e bibtex para a preparação de teses para a Universidade de Brasília (UnB), Brasil.
A classe também inclui um modelo para os diversos tipos de teses para os programas de pós-graduação e não-graduação da UnB.

Observe que a documentação da classe e os comentários nos modelos são todos escritos em português, o idioma do público-alvo.

Este pacote consiste no arquivo unbtex.cls e nos arquivos de estilo bibliográfico
localizados no diretório unbtexcite.

Arquivos de modelo: unbtex-example.pdf, unbtex-example.tex e arquivos dentro do diretório
unbtex-example.
Para compilar o arquivo unbtex-example.tex, você deve chamar pdflatex, bibtex,
pdflatex.

Aqui está um histórico de alterações:
- 1.0 (15/12/2021): 
  - Versão inicial
- 1.1 (23/05/2022):
  - \codigocutter alterado para \numerocutter
  - O argumento do comando \preambulo agora admite um texto mais geral.
- 1.1.1 (30/05/2022):
  - Os comandos abntex2 \orientador e \coorientador foram alterados para
o mesmo que \orient e \coorient.
  - Hifenização alterada para o texto \preambulo em português quando o idioma inglês é selecionado
- 1.1.2 (29/07/2022):
  - Quebra de página na página de direitos autorais foi corrigida
  - Melhorias na documentação e nos comentários
- 1.1.3 (04/09/2022):
  - Tempo de compilação aprimorado
- 1.2 (05/10/2022):
  - Os estilos do Sumário, Lista de Símbolos e Lista de Abreviaturas foram
  modificados
  - Um problema de compilação com o Tex Live 2022 que surge quando o pacote microtype
  é usado foi resolvido
- 1.2.1 (15/06/2023):
  - Chaves ao redor da numeração de equações e da opção de idioma para o comando \autoref
  foram corrigidas
  - Os comentários de código foram aprimorados
- 1.3 (17/10/2023):
  - Para evitar o limite de tempo de compilação no Overleaf, o pacote de bibliografia biblatex
  foi substituído pelo pacote bibtex,
  e o pacote TikZ para desenhos não foi mais utilizado.
  - O recuo de listas de figuras e tabelas foi corrigido.
  - O pacote cleveref agora está sendo usado para referências cruzadas em vez
  do comando autoref.
- 1.3.1 (18/10/2023):
  - O arquivo abtex2eng-alf.bst foi incluído para formatar referências bibliográficas
  no estilo ABNT para documentos escritos em inglês.
- 1.3.2 (20/10/2023):
  - Melhorias na documentação e nos comentários.
- 1.3.3 (02/11/2023):
  - O arquivo abtex2eng-alf.bst foi substituído pelos arquivos unbtexcite-en.bst
  e unbtexcite-pt.bst. Esses arquivos de estilo geram citações e
  referências bibliográficas de acordo com as atualizações das normas NBR
  6023:2018 e NBR 10520:2023 da ABNT
  - Melhorias nos exemplos e comentários de código
- 1.4 (15/11/2023):
  - A fonte principal do texto, baseada no pacote stix2, foi substituída pelo pacote stickstoo
  para melhorar o espaçamento entre subscritos matemáticos
  - A escala da fonte sem serifa foi ajustada (pacote helvet)
  - A fonte e a escala da máquina de escrever foram alteradas (pacote inconsolata)
  - O tamanho da fonte e a extensão das linhas do ambiente verbatim foram modificados
  - Os nomes das referências cruzadas para os ambientes de listagem, algoritmo e teorema
  foram corrigidos
  - O recuo e o espaçamento entre linhas da lista de referências foram ajustados
  - A numeração de figuras e tabelas por capítulo foi corrigida
- 1.4.1 (27/11/2023):
  - As legendas das figuras foram movidas para o topo para atender à norma ABNT
  - O espaçamento entre figuras/tabelas e legendas/legendas foi
  ajustado
  - O espaçamento entre figuras/tabelas e texto foi ajustado
  - O espaçamento em ambientes de lista foi ajustado
- 1.4.2 (15/12/2023):
  - As referências cruzadas para o apêndice e anexo usando o comando cref
  foram corrigidas
  - As listas de abreviações e siglas, bem como a lista de
  símbolos, foram aprimoradas e a numeração de páginas foi removida
  - Os capítulos do documento de exemplo foram reorganizados
- 1.4.3 (22/12/2023):
  - Palavras-chave em inglês foram incluídas na página de direitos autorais se
  o documento estiver escrito neste idioma
  - Exemplos de tabelas longas e tabelas rotacionadas foram incluídos.
- 1.4.4 (05/01/2024):
  - O pacote pdfpages foi usado para incluir páginas de documentos PDF.
  - A fonte sem serifa Helvetica (pacote helvet) foi substituída pela fonte TeX Gyre Heros (pacote tgheros).
- 1.5 (02/02/2024):
  - O estilo ABNT com um esquema de citação numérica para referências bibliográficas foi incluído.
  - Adicionada uma opção à classe UnBTeX para selecionar o estilo de citação (autor-ano ou numérico).
  - Adicionada uma opção à classe UnBTeX para selecionar o idioma principal do texto (português brasileiro ou inglês).
  - A fonte sans-serif Helvetica (pacote helvet) foi substituída
  pela fonte TeX Gyre Heros (pacote tgheros)
- 1.5 (02/02/2024):
  - O estilo ABNT com esquema de citação numérica para referências bibliográficas
  foi incluído
  - Adicionada uma opção à classe UnBTeX para selecionar o estilo de citação
  (autor-ano ou numérico)
  - Adicionada uma opção à classe UnBTeX para selecionar o idioma principal
  do texto (português brasileiro ou inglês)
  - O tamanho da fonte do título é ajustado automaticamente de acordo
  com seu comprimento (e número de linhas)
  - Reorganização do código-fonte da classe e melhorias nos
  comentários
  - O texto do modelo foi revisado e aprimorado
- 1.5.1 (02/03/2024):
  - A folha de aprovação foi alterada
  - O tamanho da margem inferior foi corrigido para ser consistente
  aderido a
- 1.5.2 (04/07/2024):
  - O comprimento da linha separadora de notas de rodapé foi corrigido
  de acordo com as normas da ABNT
  - O recuo da margem esquerda do ambiente de citação foi
  corrigido de acordo com as normas da ABNT
  - O recuo da margem esquerda das referências pode ser ajustado
  pelo usuário
- 1.5.3 (07/10/2024):
  - Uma contracapa foi adicionada ao modelo
  - As opções de idioma para o pacote Babel agora são declaradas diretamente
  no arquivo de classe UnBTeX
  - Incluído o campo DOI (Identificador de Objeto Digital) nas entradas de bibliografia
  - Um ambiente para inclusão de quadros (quadros) foi criado
  e a lista de quadros foi adicionada
  - Incluída a lista de algoritmos e a lista de códigos
  - Os pacotes algpseudocode e algorithm foram substituídos pelo pacote algorithm2e para incluir pseudocódigo. A referência cruzada interna para tabelas criadas com o pacote longtable foi corrigida. Uma opção foi adicionada à classe UnBTeX para selecionar o estilo de numeração para figuras, tabelas, etc., por capítulo ou para todo o documento. As opções article e twocolumn da classe Memoir foram configuradas para uso. O documento de exemplo foi atualizado e reorganizado. 
- 1.5.4 (10/01/2025):
  - Adicionada uma opção à classe UnBTeX para habilitar a referência retroativa na bibliografia. 
- 1.5.5 (10/04/2025):
  - O pacote microtype foi configurado para reduzir o tempo de compilação.

## Overleaf

O modelo está disponível em [Overleaf]
(https://www.overleaf.com/latex/templates/unbtex-a-class-for-bachelor-master-and-doctoral-thesis-at-university-of-brasilia-unb/rfsxjkzprztc).

## Uso com Makefile

Para facilitar a compilação, um `Makefile` foi incluído. Os seguintes comandos estão disponíveis:

- `make` ou `make all`: Compila o documento e gera o `unbtex-example.pdf`.
- `make deps`: Instala as dependências do sistema (TeX Live) em distribuições baseadas em Debian/Ubuntu. Requer permissões de administrador (`sudo`). 

> [!WARNING]  
> São baixados 4GBs e usado 7GBs de espaço ápos a instalação das dependências.

- `make clean`: Remove todos os arquivos gerados durante a compilação, como `.aux`, `.log`, e o próprio `.pdf`.
- `make rebuild`: Executa `clean` e `all` em sequência, para uma compilação limpa do projeto.

## Licença

Este arquivo de classe pode ser distribuído e/ou modificado sob as condições
da Licença Pública do Projeto LaTeX, seja a versão 1.3 desta licença
ou (a seu critério) qualquer versão posterior. A versão mais recente desta
licença está em:

https://www.latex-project.org/lppl.txt

e a versão 1.3 ou posterior faz parte de todas as distribuições do LaTeX versão
2005/12/01 ou posterior.
