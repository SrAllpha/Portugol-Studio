programa
{

	/* Código Demonstrativo: Estruturas de Seleção Encadeada  v1.0
	 *  
	 *  Código por: SrAllpha
	 *  
	 *  God Bless The World!
	 *  
	 *  O que são estruturas de seleção?
	 *  
	 *     → São estruturas que verificam determinada condição, e, dependendo de seu resultado (verdadeiro || falso), determinam quais 
	 *     	sentenças/blocos de código serão executados.    	
	 *  
	 *     	→ No pseudocódigo (Portugol):
	 *     	
	 *     			No Portugol Studio chamamos essa estrutura de "se", "senao se" e "senao"
	 *     			
	 *     			→ Em primeiro plano, você deve pensar quantas condições você terá, assim poderá determinar qual estrutura irá utilizar!
	 *     				1 Condição: 'SE'
	 *     				2 Condições: SE/SENAO
	 *     			   * Condições > 2: 'SE'/'SENAO SE'/'SENAO' *
	 *     			   
	 *     	→ Então vamos a um apanhado geral:
	 *     	
	 * Desvio Condicional 'SE', 'SENÃO SE' & 'SENAO'
	 * 
	 *  O comando 'SE' serve para alterar o fluxo de execução de um programa baseado no valor, verdadeiro ou falso, de uma 
	 *  expressão lógica -> neste exemplo, temos as expressões lógicas para determinar qual o operador foi inserido
	 *  
	 *     -> se (essa operação lógica for verdadeira) {
	 *     		execute o código presente entre as chaves referentes a palavra reservada 'se'
	 *     	}
	 *	
	 *	O comando 'SENAO SE' serve para acrescentar mais de uma possibilidade para o desvio condicional 'SE':
	 *	  Sendo a expressão lógica anterior falsa, o senão se é executado por sequencia (a sequência de  leitura do compilador),
	 *	  o 'SENAO SE' necessita, de modo obrigatório, uma expressão lógica, validando e o executando (caso positivo) ou
	 *	  passando para o próximo 'SENAO SE' ou 'SENAO'
	 *  
	 *   O 'SENÃO' é a ultima tentativa do desvio condicional 'SE'
	 *      
	 *      obs: caso queria ver o exemplo completo, o mesmo consta no moodle da disciplina!
	 *      		→ (https://moodle.utfpr.edu.br/pluginfile.php/1815226/mod_resource/content/0/Desvio_Condicional_SE%20%281%29.por_)
	 *   
	 *   ----------------------------------------------------------> < -----------------------------------------------------------
	 *   
	 *   Vamos a um exercício bem simpático!
	 *   
	 *    → Escreva um algoritmo para imprimir o conceito final de um aluno a partir de uma medida (média). A tabela de conversão a ser utilizada 
	 *    é a seguinte: 
	 *    
	 *    	* Conceito A se média >=9 
	 *    	* Conceito B se média >=7 
	 *    	* Conceito C se média >=6 
	 *    	* Conceito P se média <6
	 *    	
	 *    	
	 *    	vamos a resolução!
	 *    	
	 *    	
	 *    	
	 *    Um Glossário Bem Bacanudo de Bão Para Você Tirar As Suas Dúvidas:
	 *    
	 *    	parâmetro: um parâmetro é um valor que é fornecido à função quando ela é chamada (neste caso, 'leia(parametro)'). 
	 *    			 É comum também chamar os parâmetros de argumentos, embora argumento esteja associado ao valor de um parâmetro. 
	 *    			 Parâmetros funcionam como variáveis locais, existindo somente dentro do escopo da funcao em questão, exemplo:
	 *  	             
	 *  	             
	 *  	             leia(variavelQueIraReceberOValor)
	 *  	              
	 *  	 		   -> Neste caso, a função leia usará o parâmetro 'variavelQueIraReceberOValor', que você passará afim de informar a função
	 *  	 		   	 'leia()' em qual variável ela irá atribuir o valor 'lido'
	 *  	 				
	 *  	 Diferença entre PARÂMETRO x ARGUMENTO:
	 *  	 	-> Parâmetro é a variável que irá receber um valor em uma função (ou método) já o argumento é o valor
	 *  	 	   (que pode originar de uma variável ou expressão) que você passa para a função (ou método). Você não passa
	 *  	 	   parâmetros, você passa argumentos, fica a dica! :)
	 * 
	 */    	
	
	
	funcao inicio()
	{
		// Declaração Das Variáveis:
		
		real primeiraNota, segundaNota   
		real media

		/*  Neste caso utilizaremos variaáveis do tipo 'real', pois a nota do cidadão pode ser 'quebrada' (9.5, 0.000000002)
		 *  Bem como a média (que está numa linha diferente por questão que eu quero (hehe), mas variáveis do mesmo podem ser declaradas em linha
		 *  única, respeitando a divisão entre elas por vírgula ',', como consta na linha 86.). Se temos a média de dois números reais, a mesma
		 *  tenderá a ser real!
		 */

		 // Entrada dos dados:

		 escreva("Digite a primeira nota: ")
		 leia(primeiraNota)

		 escreva("Digite a segunda nota: ")
		 leia(segundaNota)

		 /* Bom, temos agora a entrada dos dados pelo usuário!
		  *  
		  *  As palavras reservadas 'leia', irão ler (ah, sério que leia lê?! Sim!) o valor inserido nos "escreva's", e colocarão nas variáveis
		  *  que foram passadas como argumento (ver '¹parâmetro' no glossário) para o leia 
		  *  	
		  *  	-> 'leia(primeiraNota)': irá ler o que foi inserido em 'escreva("Digite a primeira nota: ")', e atribuirá esse valor na variável
		  *  	    'primeiraNota'
		  *  	  
		  *  	-> o mesmo ocorre no segundo leia() → leia(segundaNota)
		  */


		  // Tratamento dos dados:

		  media = (primeiraNota + segundaNota) / 2

		  // Agora vamos fazer uma média simples e simpaticamente incrível, e atribuimos o seu resultado a variável 'media'


		  // Agora Vem a Nossa Estrutura de Seleção Encadeada hehehehe:

		  // Saída dos Dados:

		  se (media >= 9) {  // Iremos realizar o primeiro teste!
		  	
		  	escreva("\nConceito A!")  // Se der certo, escreve isso ali do ladinho!
		  	
		  } senao se (media >= 7) {  // Caso o primeiro teste retornar falso, o compilador executará este!

			escreva("\nConceito B!")  // Se for verdadeiro, já sabe né?
		  	
		  } senao se (media >= 6) {  // Se o teste anterior for falso, ah, já sabe, executa esse bloco! :)

		  	escreva("\nConceito C!")
		  	
		  } senao {                  // E se tudo der errado (igual a minha vida, brincadeira crianças)
		  					   // eee, continuando (hihi), como eu dizia, se nada der certo, ou seja, tudo retornar falso, será executado o
		  					   // 'senao'. (é uma maneira de testar se seu 'se' está funcionando, fica a dica :)!)

			escreva("\nConceito P!")
		  	
		  }
		  

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */