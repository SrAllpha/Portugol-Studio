programa
{
	/* Código Demonstração v1.0 -> 'Variáveis & Tipos De Dados'
	 *  
	 *  Código por: SrAllpha
	 *  
	 *  God Bless The World
	 */

	 /* Conceito de variável:
		 *     -> Uma variável corresponde a uma posição ou espaço de memória;
		 *     -> Uma posição ou espaço de memória pode guardar um valor;
		 *     
		 *  	-> Em resumo, uma variável é como uma caixa, que irá armazenar os dados que você irá utilizar em seu algoritimo.
		 *  	
		 *  	
		 *  	Declaração De variáveis:
		 *  	  -> Falando pro compilador que existirá um espaço de memória (uma variável), e assim, permitindo aplicar operações e armazenamento
		 *  	     adequados a cada tipo de valor que uma variável pode receber, de acordo com o seu tipo.
		 *  	  
	 	 *  	 ->	Define o seu tipo: 
	   	 *                  	inteiro -> qualquer inteiro (positivo, negativo ou nulo -> 100, 0, 1, 1250);
	   	 *                  	real    -> qualquer real (positivo, negativo ou nulo ->  -10, -1.5, 11.2, 0, 1);
	   	 *                  	logico  -> valor lógico -> verdadeiro ou falso;
	   	 *                  	caracter -> caractere alfanumérico único -> "C", "c", "2" ;
	   	 *                  	cadeia  -> uma cadeia de caracteres -> "casa", "Win31", "Linux, O Melhor OS";
	   	 *
	   	 *     ->  Define o seu identificador (o nome da variável).
	   	 *     	  -> Regras e dicas para definir os indentificadores:
	   	 *     	  
	   	 *     	  	* O indentificador não pode ser uma palavra reservada¹ -> por exemplo: 'escreva'; 'leia', 'funcao';
	   	 *     	  	* Deve começar por um caractere alfabético (minúsculo) ou um sublinhado;
	   	 *     	  	* Nomeie sua variável com nomes coerente a sua função;
	   	 *     	  	* Não pode haver dois indentificadores iguais, exceto elementos de um mesmo vetor;
	   	 *     	  	* Não são permitidos caracteres especiais, somente o: '_'; 
	   	 *     	  	* Caso sua variável tenha um 'nome composto', por exemplo, uma variável que armazena o preço do diesel:
	   	 *     	  		-> real precoDiesel; é sempre bom 'separar' as palavras com letras maiúsculas, partindo da 'segunda palavra, exemplos:
	   	 *     	  			-> precoGasolina
	   	 *     	  			-> umNomeBemCompridoDeVariavelBemSimpaticaELegal
	   	 *     	  			
	   	 * 
	   	 *       							----------->  regra geral: <tipo> <nomeDaVariavel>  <-----------
	   	 *   
	   	 *   
	   	 *   
	   	 *    -> !!!!!!!!!!!!!!!!  IMPORTANTE E EMPOLGANTE  !!!!!!!!!!!!!!!
	   	 *    
	   	 *    	As variáveis em um algoritimo só existem e mantém seus dados em "tempo de execução", ou seja, assim que o algoritimo termina,
	   	 *    	hasta la vista, baby!
	   	 *    	
	   	 *    	
	   	 *    -> Dicas & Truques Bem Simpáticos:
	   	 *    
	   	 *    	* Para declarar variáveis do mesmo tipo, você pode separá-las por vírgula:
	   	 *    	
	   	 *    	  (tipo das variáveis)  (nome da primeira) , (nome da segunda), ...
	   	 *    		->  real variavelUm, variavelDois, variavelTres
	      */



	      /* Inicialização de variáveis com 'atribuição ('='):
	       *  
	       *       -> Atribuição é a forma de indicar que uma variável irá receber determinado valor ou informação.
	       *       
	       *       -> No Portugol, o símbolo deste comando é o igual: '='.
	       *       
	       *       Exemplos:
	       *       
	       *      		 inteiro variavelUm
	       *      		 variavelUm = 12
	       *      		 escreva("O valor da variável é: ", variavelUm)   -> irá escrever: O valor da variável é: 12.
	       *      		 
	       *      		 
	       *      		 cadeia textoUm = "Um texto bem simpático e bacana para alegrar o seu dia!"    
	       *      		 	-> todo tipo 'cadeia' ou 'caractere' deve ser atribuido utilizando aspas duplas "" 		 																  
	       */


	       /* Entrada de dados pelo usuário -> leia()
	        *  
	        *  	O comando leia() nos permite a entrada de dados pelo usuário, e deverá seguir essa sintaxe:
	        *  		-> leia(nomeDaVariavel)
	        *  		
	        *  		-> Lembrando que a variável deve ser compatível (em tipo) ao dado que será 'lido' nela, exemplo:
	        *  		
	        *  			não podemos atribuir um texto (tipo cadeia) em uma variável declarada como inteiro:
	        *  				
	        *  				inteiro var1
	        *  				
	        *  				escreva("Digite o texto: ")  -> você insere "AHDYUFGASDYUFGASDFUYSADF, eu sou do Canadá!"
	        *  				leia(var1)
	        *  
	        *  	-> Exemplo de uma estrutura de resposta, que pede o nome, idade e o que você já fez, e retorne todos juntos:
	        *  	
	        *  		cadeia nome, oResto = "queline", oqJaFez
	        *  		inteiro idade
	        *  		
	        *  		escreva("Digite o seu nome: ")   -> vc insere: Jaqueline
	        *  		leia(nome)
	        *  		
	        *  		escreva("Digite a sua idade: ") -> vc insere: 12
	        *  		leia(idade)
	        *  		
	        *  		escreva("O que você já fez? ")  -> vc insere: instalei vista baby!
	        *  		leia(oqJaFez)
	        *  		
	        *  		escreva("Meu nome é: ", nome,", eu tenho ", idade, " anos e já ", oqJaFez, ". Já o que? ", oResto)
	        *  		
	        *  		-> você vai obter como resposta:
	        *  		  Meu nome é Jaqueline, eu tenho 12 anos e já instalei vista baby!. Já o que? queline!
	        *  		
	        *  		
	        *  Glossário: 
	        *  	
	        *  	¹palavra reservada: a palavra reservada é uma palavra que, em algumas linguagens de programação, não pode ser 
	 	   *  	 				utilizada como um identificador por ser reservada para uso da gramática da linguagem, exemplo:
	        *  	 				 
	        *  	 			-> 'escreva' é uma palavra reservada do portugol, portanto, não poderemos criar variáveis
	        *  	 			    e/ou funções com esse exato nome (escreva);
	        *  		
	        * 
	        */


	 
	
	funcao inicio()
	{
		
		cadeia nome, oResto = "queline!", oqJaFez
    		inteiro idade
    		
     		escreva("Digite o seu nome: ")  // digita: Jaqueline, pfvr!
     		leia(nome)
     		
     		escreva("Digite a sua idade: ") 
     		leia(idade)
     		
     		escreva("O que você já fez? ")  
     		leia(oqJaFez)
     		
     		escreva("Meu nome é: ", nome,", eu tenho ", idade, " anos e já ", oqJaFez, ". Já o que? ", oResto)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5776; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */