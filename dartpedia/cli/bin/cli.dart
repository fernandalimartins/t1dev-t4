/* 

Informacoes:

O aplicativo cli faz parte do projeto Dartpedia.

O cli eh nosso primeiro aplicativo que esta sendo desenvolvido usando Dart.

cli.dart - Fica localizado na pasta dartpedia, em /dartpedia/cli/bin.

Outras infromacoes importantes sobre o cli; nosso aplicativo.

Site		:

Autor		:Fernanda Lima Martins <fernanda.l.martins@aluno.senai.br>

Manutencao	:

_____________________________________________________________________________

Funcionamento:

Inicialmente o cli, ao ser executado, mostra uma saudacao na tela, por exemplo:

Dentro da pasta dartpedia em /home/fernanda.lima/dartpedia/cli rode o comando
dart run; deve aparecer a mensagem de saudacao, "Hello Dart!"

Obs. Importante ! Este aplicativo esta em desenvolvimento e ao longo tempo o 
comportamento pode mudar.

_____________________________________________________________________________

Dicionario do versionamento:

v = versao

0 = Inicio do versionamento

. = Implementacao de versiamento

1 = Próxima versão, 2, próxima versão, e assim por diante.

-------------------------------------------------------------------------------

Historico do versionamento:

-------------------------------------------------------------------------------

Versao: 0.0.0

Data: 27/03/2026

Descricao do codigo: Codigo original

Codigo:

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) {
  print('Hello world: ${cli.calculate()}!');
}

Saida padrao ao executar o codigo:

comando: dart run bin/cli.dart
Hello world: 42!

-----------------------------------------------------------------------------

Versao: 0.0.1

Data: 09/04/2026

Descricao do codigo: Apague a primeira linha (voce nao precisa dessa declaracao de importacao) e altere a print declaracao para exibir uma saudacao simples:

Codigo:

void main(List<String> arguments) {
	print('Hello, Dart!');
}

Saida padrao ao executar o codigo:

comando: dart run bin/cli.dart
Hello, Dart!

-----------------------------------------------------------------------------

Versao: 0.0.2

Data: 09/04/2026

Descricao do codigo: Adicione logica para lidar com um versioncomando que imprime a versao atual da CLI. Use um if instruÃ§Ã£o `if` para verificar se o primeiro argumento fornecido eh `true` version. Voce tambem precisara de uma version constante.

Primeiro, acima da sua main funcao, declare uma const variavel para a versao. O valor de uma const variavel nunca pode ser alterado depois de ter sido definido:

const version = '0.0.2'; // Add this line

Em seguida, modifique sua mainfuncao para verificar o versionamento:

Codigo:

const version = '0.0.2';

void main(List<String> arguments) {
	if (arguments.isEmpty) {
		print('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	}
}

Saida padrao ao executar o codigo:

comando: dart bin/cli.dart 

Voce devera ver: Hello, Dart!

comando: dart bin/cli.dart version

Voce devera ver: Dartpedia CLI version 0.0.2

-----------------------------------------------------------------------------

Versao: 0.0.3

Data: 09/04/2026

Descricao do codigo: Adicione uma printUsage funcao: Para tornar a saida mais amigavel ao usuario, crie uma funcao separada para exibir as informacoes de uso. Coloque essa funcao fora e abaixo da sua mainfuncao principal.

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

search eh o comando que eventualmente fara a busca na Wikipedia.

Codigo:

const version = '0.0.3';

void main (List<String> arguments) {
	if (arguments.isEmpty) {
		print('Hello, Dart!');
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	}
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Saida padrao ao executar o codigo

Comando: dart bin/cli.dart

Voce deve ver: Hello, dart!

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.3

-----------------------------------------------------------------------------

Versao: 0.0.4

Data: 09/04/2026

Descricao do codigo: Implemente o help comando e refine main: Agora, integre o help comando usando uma else if instrucao e limpe o comportamento padrao para chamar a printUsage funcao.

Modifique sua main funcao para que fique assim:

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage(); // Change this from 'Hello, Dart!'
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else {
    printUsage(); // Catch-all for any unrecognized command.
  }
}

5. Entenda a if/else estrutura e as variaveis: Agora que voce implementou o fluxo de controle na main funcao, revise o codigo que foi adicionado a ela.

    . arguments.isEmpty Verifica se nenhum argumento de linha de comando foi fornecido.

    . arguments.first Acessa o primeiro argumento, que voce esta usando como nosso comando.

    . version eh declarado como um const. Isso significa que seu valor eh conhecido em tempo de compilacao e voce nao pode altera-lo durante a execucao.
    
    . arguments eh uma variavel regular (nao constante) porque seu conteudo pode mudar durante a execucao com base na entrada do usuario     .

Codigo:

const version = '0.0.4';

void main (List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage(); // Change this from 'Hello, Dart!'
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else {
		printUsage(); // Catch-all for any unrecognized command.
	}
}

void printUsage() { // Add this new function
	print( "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE'

Comando: dart bin/cli.dart help

Voce deve ver: The following commands are valid: 'help', 'version' 'search <ARTICLE-TITLE'

Comando: dart bin/cli.dart version

Voce deve ver: Dartpedia CLI version 0.0.4

Comando: dart bin/cli.dart search

Voce deve ver: the following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE'

-----------------------------------------------------------------------------

Versao: 0.0.5

Data: 16/04/2026

Descrição do código: Integre o search comando em main: Primeiro, modifique a mainfuncao cli/bin/cli.dart para incluir um else iframo que lide com o search comando. Por enquanto, basta imprimir uma mensagem de espaÃ§o reservado.

// Codigo: 

const version = '0.0.5';

void main (List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage();
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
  		print('Search command recognized!');
	} else {
		printUsage();
	}
}

void printUsage () { // Add this new function
	print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.5

Comando: dart bin/cli.dart search

Você deve ver: Search command recognized!

-----------------------------------------------------------------------------

Versão: 0.0.6

Data: 16/04/2026

Descrição: Defina a searchWikipedia funcao: O search comando eventualmente executara a logica principal do seu aplicativo chamando uma funcao chamada searchWikipedia. Por enquanto, faca com que ela searchWikipedia imprima os argumentos passados para ela com o search comando. 

Coloque esta nova funcao abaixo de main.

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

// ... (your existing printUsage() function)

// Código:

const version = '0.0.6';

void main (List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
		printUsage();
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') {
		print ('Search command recognized!');
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) { // add this new function and add ? arguments type
	print('searchWikipedia received arguments: $arguments');
}

void printUsage () { // Add this new function
	print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>");
} 

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.6

Comando: dart bin/cli.dart search

Você deve ver: Search command recognized

-----------------------------------------------------------------------------

Versao: 0.0.7

Data: 16/04/2026

Descrição: Chame a searchWikipedia funcao a partir da mainfuncao: Agora, modifique o search bloco de comando main para chamar searchWikipedia e passar quaisquer argumentos que venham apos o search proprio comando. Use arguments.sublist(1) para obter todos os argumentos a partir do segundo. Se nenhum argumento for fornecido apos search, passe null para searchWikipedia.

// Codigo:

const version = '0.0.7';

void main (List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help' ) {
// Add this new block:
		printUsage();
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
	} else if (arguments.first == 'search') { 
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
		searchWikipedia(inputArgs);
	} else {
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
	print ('searchWikipedia received arguments: $arguments');
}

void printUsage () {
	print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE'");
}

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

// Add this new block:
Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search

Você deve ver: searchWikipedia receveid arguments: null

Comando: dart bin/cli.dart search Dart Programmiing

Você deve ver: searchWikipedia received arguments: Dart Programming

-----------------------------------------------------------------------------

Versao: 0.0.8

Data: 16/04/2026

Descrição: Lide com a falta do titulo do artigo e a entrada do usuario com o stdin comando: Eh mais amigavel ao usuario solicitar o titulo caso ele nao o forneca na linha de comando. Use stdin.readLineSync() para isso.

Primeiro, adicione a importacao necessaria no inicio do seu cli/bin/cli.dart arquivo:

import 'dart:io'; // Add this line at the top

dart:io Eh uma biblioteca central no SDK do Dart e fornece APIs para lidar com arquivos, diretorios, sockets, clientes e servidores HTTP, e muito mais.

Agora, atualize sua searchWikipedia funÃ§ao.

// Codigo: 

import 'dart:io';
const version = '0.0.8';

void main (List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help' ) {
		printUsage();
	} else if (arguments.first == 'version') {
		print ('Dartpedia CLI version $version');
// Add this new block:
	} else if (arguments.first == 'search') {
		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
		searchWikipedia(inputArgs);
	} else { 
		printUsage();
	}
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;
	if (arguments == null || arguments.isEmpty) {
		print('Please provide an article title.');
	articleTitle = stdin.readLineSync() ?? '';
	} else {
		articleTitle = arguments.join(' ');
  }

  print('Current article title: $articleTitle');
}

void printUsage () {
	print ("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE'");
}

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
// Add this new block:

Você deve ver: Dartpedia CLI version 0.0.8
// Add this new block:

Comando: dart bin/cli.dart search

Você deve ver: Please provide an article title

// Add this new block:
Comando: dart bin/cli.dart search Dart Programmiing

Você deve ver: searchWikipedia received arguments: $articleTitle

----------------------------------------------------------------------------

Versão: 0.0.9

Data: 23/04/2026

//Codigo:

import 'dart:io';
const version = '0.0.9';

void main(List<String> arguments) {
 	 if (arguments.isEmpty || arguments.first == 'help') {
    		printUsage();
  	} else if (arguments.first == 'version') {
  		print('Dartpedia CLI version $version');
  	} else if (arguments.first == 'search') {
    		final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    		searchWikipedia(inputArgs);
  	} else {
    		printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
  	final String articleTitle;
  	if (arguments == null || arguments.isEmpty) {
    		print('Please provide an article title.');
       		articleTitle = stdin.readLineSync() ?? '';
  	} else {
       		articleTitle = arguments.join(' ');
}
	print('Looking up articles about "$articleTitle". Please wait.');
  	print('Here ya go!');
  	print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
// Add this new block:

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você devecodigo: ver: Dartpedia CLI version 0.0.9

Comando: dart bin/cli.dart search

Você deve ver: Please provide na article title

Comando: dart bin/cli.dart $articleTitle

Você deve ver: 'Looking up articles about "$articleTitle". Please wait.' 'Here ya go!' '(Pretend this is an article about $articleTitle)'

----------------------------------------------------------------------------- 

Versao: 0.0.10

Data: 28/04/2026

Esta linha importa o httppacote e atribui a ele o alias http. Depois disso, você pode 
se referir a classes e funções dentro do httppacote usando http.(por exemplo, http.Client, http.get). 
A as httpparte é uma convenção padrão para evitar conflitos de nomenclatura caso outra biblioteca importada também tenha uma classe ou função com nome semelhante.

// Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.1.0';

void main(List<String> arguments) {
	if (arguments.isEmpty || arguments.first == 'help') {
    		printUsage();
  	} else if (arguments.first == 'version') {
    		print('Dartpedia CLI version $version');
  	} else if (arguments.first == 'search') {
        	final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    		searchWikipedia(inputArgs);
  	} else {
    	printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
	final String articleTitle;
	if (arguments == null || arguments.isEmpty) {
		print('Please provide an article title.');
		articleTitle = stdin.readLineSync() ?? '';
  	} else {
    	articleTitle = arguments.join(' ');
}

  	print('Looking up articles about "$articleTitle". Please wait.');
  	print('Here ya go!');
  	print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() {
  	print( "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"); 
} 

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.10

Comando: dart bin/cli.dart search

Você deve ver: Please provide na article title

Comando: dart bin/cli.dart $articleTitle

Você deve ver: 'Looking up articles about $articleTitle' 'Please wait' 'Here ya go!' '(pretend this is an article about $articleTitle'

-----------------------------------------------------------------------------

Versão: 0.0.11

Data: 28/04/2026

Agora, crie uma nova função chamada `getData` getWikipediaArticleque lide com a busca de dados de uma API externa. Essa função será chamada asyncde `getData` porque as requisições de rede são operações assíncronas.

Defina a assinatura da função: Abaixo da sua mainfunção (e printUsagefunção), adicione a seguinte assinatura de função.

O Future<String>tipo de retorno indica que esta função eventualmente produzirá um Stringresultado, mas não imediatamente, pois é uma operação assíncrona.
A asyncpalavra-chave marca a função como assíncrona, permitindo que você a utilize awaitdentro dela. 

// Código:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.11';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) {
final String articleTitle;

if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }


 print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.11

Comando: dart bin/cli.dart search

Você deve ver: Please provide na article title

Comando: dart bin/cli.dart search $articleTitle

Você deve ver: 'Looking up articles about $articleTitle' 'Please wait' 'Here ya go!' '(pretend this is an article about $articleTitle'

-----------------------------------------------------------------------------

Versão: 0.0.12

Data: 28/04/2026

Descrição: Integrar a chamada da API na pesquisa da Wikipédia.
Atualização searchWikipediapara uso async. Adicione nullverificações de entrada do usuário para strings vazias. Chame a função getWikipediaArticlee imprima o resultado

// Código:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line

const version = '0.0.12';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

Saída padrão do código para ser executado:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.12

Comando: dart bin/cli.dart search

Você deve ver: Please provide na article title

Comando: dart bin/cli.dart search $articleTitle

Você deve ver: 'Looking up articles about $articleTitle' 'Please wait' 'Here ya go!' '(pretend this is an article about $articleTitle'

-----------------------------------------------------------------------------

Versão: 0.0.13

Data: 30/04/2026

Descrição: Por fim, atualize sua mainfunção para chamar a nova searchWikipediafunção quando o wikipediacomando for usado.

Localize o else ifbloco na sua mainfunção que atualmente lida com o searchcomando. Altere o nome do comando de searchpara wikipediae atualize a chamada da função.

No código de exemplo, mainnão há await chamada para searchWikipedia, o que significa que maino próprio não precisa ser marcado async.
*/
// Código: 

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line

const version = '0.0.13';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
   } else if (arguments.first == 'wikipedia') { 
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );
  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

/*
Saida padrão do codigo:

Comando: dart bin/cli.dart

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help

Você deve ver: The following commnads are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version

Você deve ver: Dartpedia CLI version 0.0.13

Comando: dart bin/cli.dart search

Você deve ver: Please provide an article

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"

Você devera ver:
Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}

Comando: dart run bin/cli.dart wikipedia

Você devera ver algo como:

Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.

{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

// ... (rest of the JSON output will be present but truncated here)

}

Comando: dart run bin/cli.dart wikipedia

Você deverá ver algo como:
Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}

-----------------------------------------------------------------------------*/
