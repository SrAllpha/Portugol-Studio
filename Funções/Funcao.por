programa
{
	/* Código Demonstração de Função v1.0
	 * 
	 *  Desenvolvido por: SrAllpha
	 *  
	 *  God Bless The World
	 */
	
	
	/*
	 *   Uma função nada mais é do que uma sub-rotina usada em um programa. Na programação, denominamos função 
	 *   a um conjunto de comandos que realiza uma tarefa específica em um módulo dependente de código. 
	 * 
	 *   A função é referenciada pelo programa principal através do nome atribuído a ela.
	 * 	 
	 */


	 /* Declaração de uma função:
	  *   
	  *   funcao nomeDaFuncao (tipo do parâmetro nomeDoParametro, tipo do parâmetro nomeDoParametro) { -> abertura do escopo
	  *   
	  *   escopo¹ da funcao -> onde você escreverá o que a sua função irá fazer
	  * 
	  *  } -> fechamento do escopo da função
	  *  
	  *  
	  *  Passo-a-passo:
	  *  	-> Para iniciar, é preciso informar para o programa que você irá escrever uma função, para isso, é necessário o uso
	  *  	   da palavra reservada² 'funcao';
	  *  
	  *  	-> Agora você escreverá o nome da sua função, que você irá utilizar para chamar sua função, ou seja, para você usá-la
	  *  	   no seu algoritimo;
	  *  	  
	  *  	-> Depois, entre parênteses, você irá explicitar os parâmetros³ da sua função, separados por vírgula, dessa forma:
	  *  		(tipo do parâmetro 1 nomeDoParâmetro1, tipo do parâmetro 2 nomeDoParâmetro2)
	  *  		
	  *  	-> Após declarar os parâmetros, você abrirá chaves '{}', e dentro das mesmas, escreverá o algoritimo que desejar que 
	  *  	   essa função execute
	  *  	   
	  *  	-> Finalmente, você irá chamar a sua função, da seguinte forma:
	  *  		nomeDaSuaFuncao(parametro1, parametro2) 
	  *  			-> caso não existam parâmetros:
	  *  				nomeDaSuaFuncao()
	  *  	  
	  *  	-> ATENÇÃO!, você deve declarar a sua função no escopo de 'programa' -> antes da função 'inicio()'
	  *  	   
	  *     
	  *  	   
	  *  Glossário: 
	  *  	¹escopo: escopo é um contexto delimitante aos quais valores e expressões estão associados, ou seja, é o espaço que
	  *  	         delimita alguma coisa, pode ser por parêntes, chaves ou colchetes:
	  *  	         
	  *  	         		funcao escopo () 
	  *  	         		{ -> início do escopo  * 
	  *  	         		                       * ]--> escopo da função 'escopo()', o escopo termina no último caractere antes
	  *  	         			codigo            *		da chave;
	  *  	         			                  *  
	  *           			} -> final do escopo
	  *  	         		
	  *  	         		
	  *  	 ²palavra reservada: a palavra reservada é uma palavra que, em algumas linguagens de programação, não pode ser 
	  *  	 				 utilizada como um identificador por ser reservada para uso da gramática da linguagem, exemplo:
	  *  	 				 
	  *  	 				    -> 'escreva' é uma palavra reservada do portugol, portanto, não poderemos criar variáveis
	  *  	 				    	  e/ou funções com esse exato nome (escreva);
	  *  	 				    	  
	  *  	 ³parâmetro: um parâmetro é um valor que é fornecido à função quando ela é chamada. É comum também chamar os parâmetros 
	  *  	             de argumentos, embora argumento esteja associado ao valor de um parâmetro. Parâmetros funcionam como 
	  *  	             variáveis locais, existindo somente dentro do escopo da funcao em questão, exemplo:
	  *  	             
	  *  	             funcao soma ( real numeroUm, real numeroDois) {
	  *  	             
	  *  	             	escreva(numeroUm + numeroDois)
	  *  	             
	  *  	             }
	  *  	              
	  *  	 		   -> Neste caso, a função usará os parâmetros 'numeroUm' e 'numeroDois', que você passará seus respectivos
	  *  	 		      valores na hora que for chamar a função, uma função pode ou não ter parâmetro, bem como ter infinitos
	  *  	 		      parâmetros, que devem ser utilizados na função em questão;
	  *  	 				
	  *  	 Diferença entre PARÂMETRO x ARGUMENTO:
	  *  	 	-> Parâmetro é a variável que irá receber um valor em uma função (ou método) já o argumento é o valor
	  *  	 	   (que pode originar de uma variável ou expressão) que você passa para a função (ou método). Você não passa
	  *  	 	   parâmetros, você passa argumentos, fica a dica! :)
	  */
	   


	
	funcao soma (inteiro numeroUm, inteiro numeroDois) {

		inteiro resultado = numeroUm + numeroDois
		escreva(resultado, "\n")
	}


	funcao juntaPalavra (cadeia palavra1, cadeia palavra2) {

		cadeia resultado = palavra1 + " " + palavra2
		escreva(resultado, "\n")
	}


	funcao somaSemParametro () {
		
		inteiro numeroUm, numeroDois

		escreva("\nFunção Sem Parâmetro:")

		escreva("\nDigite o primeiro valor: ")
		leia(numeroUm)

		escreva("Digite o segundo valor: ")
		leia(numeroDois)
		
		inteiro resultado = numeroUm + numeroDois
		
		escreva(resultado, "\n")
	}

	
	funcao inicio() {

		inteiro primeiroNumero, segundoNumero  

		primeiroNumero = 2
		segundoNumero = 5

		soma(primeiroNumero, segundoNumero)  // Chamando a função passando variáveis como argumento (parâmetro)
		
		soma(1, segundoNumero)			  // Podemos chamar com uma variável e um valor 'solto'


		juntaPalavra("Bom", "dia")           // Caso o parâmetro exija uma cadeia como argumento, é necessário 'passá-lo' entre aspas


		somaSemParametro()                   // Caso a função não demande argumentos, basta deixar 'em branco' os parênteses


		/* OBSERVAÇÃO: caso a sua função demande um parâmetro do tipo 'real' e você passe como argumento o tipo 'inteiro', O portugol
	      *		     irá convertê-la em 'real'
	      *		     
	      *  É importante lembrar, que é necessário passar o argumento do tipo especificado na sua função, caso contrário o programa
	      *  retornará erro, como por exemplo, passar o tipo 'cadeia' em vez de 'real'
	      *  
	      */
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */