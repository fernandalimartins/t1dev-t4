Projeto t1dev-t4 - Turma T1DEV-T4 - Professor Irineu Moura Caldeira 

—------------------------------------------------------------------------------------------------------------------------

Este repositório foi criado para centralizar o desenvolvimento de um projeto acadêmico do SENAI pela nossa equipe da turma t1dev-t4. O objetivo do trabalho é estudar os conceitos da linguagem Dart através do tutorial oficial e aplicar esse conhecimento na prática, criando um aplicativo de linha de comando.

—------------------------------------------------------------------------------------------------------------------------

O projeto ainda está em andamento. No momento, concluímos a lição 7 e estamos iniciando o desenvolvimento da lição 8.

---—---------------------------------------------------------------------------------------------------------------------

Equipe de Desenvolvedores

O projeto está sendo desenvolvido em colaboração por:

Fernanda Lima Martins

Fernanda Marques Leite Dias

Marcos Braz de Sousa

Pietra Vilas Boas

---—---------------------------------------------------------------------------------------------------------------------

Progresso do Projeto e Lista de Tarefas

Abaixo estão listadas todas as tarefas e tópicos específicos mapeados de cada lição do tutorial oficial, divididos pelo status atual da nossa equipe:

Tarefas Concluídas (Lições 1 a 7):


Lições 1 a 3: Fundamentos e Inicialização do Projeto

Estruturação inicial do projeto CLI e configuração do ponto de entrada (`main.dart`).

Implementação dos conceitos básicos de concorrência e interatividade essenciais para a estrutura do console.




Lição 4: Pacotes e Bibliotecas (packages-libs)

Tarefa 4.1 & 4.2: Separação de escopo e modularização das dependências do app.

Tarefas 4.3, 4.4 & 4.5: Configuração, correção e ajustes estruturais de comentários nas bibliotecas internas do sistema.




Lição 5: Programação Orientada a Objetos (object-oriented)

Tarefa 5.1: Definição da hierarquia de argumentos para a aplicação CLI.

Tarefa 5.2: Atualização e estruturação da classe principal `CommandRunner`.

Tarefa 5.3: Criação e acoplamento do comando de ajuda (`Help Command`).

Tarefa 5.4: Atualização do arquivo `cli.dart` para integração e uso completo do novo `CommandRunner`.

Tarefa 5.5: Execução do aplicativo e limpeza de arquivos duplicados no repositório.




Lição 6: Tratamento de Erros (error-handling)

Tarefa 6.1: Criação e customização da classe `ArgumentException` para validações de parâmetros.

Tarefa 6.2: Implementação do tratamento de erros estruturado dentro do fluxo do `CommandRunner`.

Tarefa 6.3: Atualização do arquivo `cli.dart` para rodar sob o novo ecossistema de tratamento de exceções.

Tarefa 6.4: Atualização das exportações da biblioteca `command_runner` e ajustes finais de execução segura do CLI.




Lição 7: POO Avançado (advanced-oop)

Tarefa 7.1: Aprimoramento da enumeração (`enum`) de cores do console para estilização do terminal.

Tarefa 7.2: Criação de uma extensão de string (`extension`) para facilitação de manipulação de textos.

Tarefa 7.3: Atualização das propriedades e capacidades do pacote local `command_runner`.

Tarefa 7.4: Implementação do comando de eco colorido 

---

Desenvolvimento Atual e Próximas Etapas

Lição 8: Dados e Fluxos do Terminal (Em Andamento)

Tarefa 8.1: Melhoria e refatoração da produção do comando de ajuda (`HelpCommand`).

Tarefa 8.2: Adição do retorno de chamada de saída (`onOutput` callback) para manipulação dos dados processados.

 Próximas Lições (Planejadas)
 
Lição 9: Configuração e escrita das suítes de testes unitários automatizados.

Lição 10: Integração com requisições de rede (HTTP) para consumo de APIs externas.

Lição 11: Implementação do sistema de Logging estruturado para monitoramento.

—------------------------------------------------------------------------------------------------------------------------

Tecnologias e Ferramentas

Ambiente: Curso Técnico - SENAI

Linguagem: Dart

Gerenciador de dependências: Pub

Editor de código sugerido: VS Code

—------------------------------------------------------------------------------------------------------------------------

Como Executar o Projeto Localmente

Para rodar o código na sua máquina, é necessário ter o Dart instalado.

1. Clone este repositório para o seu computador:
   git clone https://github.com/fernandalimartins/t1dev-t4.git

2. Entar na pasta do projeto:
   cd t1dev-t4

3. Atualize e baixe as dependências do projeto:
   dart pub get

4. Execute o arquivo principal (ajuste o caminho se o arquivo de execução da equipe estiver em outra pasta): dart run bin/main.dart

—------------------------------------------------------------------------------------------------------------------------

Estrutura de Pastas


Organização padrão que estamos utilizando para o projeto CLI:


t1dev-t4/
├── bin/          # Ponto de entrada com o arquivo executável principal

├── lib/          # Regras de negócio, classes e funções desenvolvidas nas lições

├── test/         # Arquivos de testes (planejado para a lição 9)

├── pubspec.yaml  # Configurações do projeto e pacotes utilizados

└── README.md     # Esta documentação
