programa
{
	/* Código de Demonstração: Estrutura de Repetição com Teste no Início
	 *  
	 * Código por: SrAllpha
	 * 
	 * God Bless The World
	 * 
	 * 
	 * 
	 *  
	 * O comando ENQUANTO permite que determinado bloco(s)/sentença(s) de código seja executado enquanto (oia → o enquanto faz enquanto!) uma
	 * certa condição, passada como argumento para o enquanto, seja verdadeira.
	 * 
	 * Vamos ao famoso:
	 * 	
	 * 	O funcionamento funciona assim (pleonasmo.pl):
	 * 	
	 * 	1 → Testa a condição;
	 * 	
	 * 	2 → Se a condição for FALSA, então todas as linhas de código subordinadas ao 'enquanto', serão ignorados (igual a suas mensagens pra morena)
	 * 	    e o compilador passa a executar os comandos após o bloco do 'enquanto'
	 * 	    
	 *   3 → Se a condição for VERDADEIRA, então executa os comandos subordinados ao 'enquanto'
	 *   
	 *   4 → Retorna ao passo 1
	 *   
	 *   Quando usamos o ENQUANTO?
	 *   	
	 *    » Quando não sabemos exatamente a quantidade de repetições que o laço deverá realizar
	 *    » O teste para a realização do laço deveria ser realizando ANTES da execução de um bloco de comandos
	 *    » Houver casoso, onde se falso, o laço não deva ser repetido nenhuma vez.
	 *    
	 *    
	 *    Sinaxe Geral:
	 *    
	 *    	enquanto (a condição a ser verificada para a execução do código) {
	 *    	
	 *    	// O que será executado
	 *    	// Enquanto o 'enquanto' for verdadeiro
	 *    	// Ou seja, isso aqui vai
	 *    	// ficar repetindo enquanto a condição
	 *    	// for verdadeira
	 *    	
	 *    	}
	 *    	
	 *    
	 *    AGORA VAMOS A ALGUMS COSITAS MUITO DEVERAS IMPORTANTES JOVENS!
	 *    
	 *    Como sabemos, o enquanto vai executar repetidamente, enquanto a condição for verídica, mas, e se a condição sempre for verídica?
	 *    AE TUDO VAI EXPLODIR MEU BOM! (brincadera, mas é quase!)
	 *    
	 *    Caso a condição seja uma constante verídica, teremos um loop infinito (aiai, medo), onde, por infinitas vezes o enquanto irá ser executado
	 *    
	 *    Mas como podemos e VAMOS evitar isso? Usando acumuladores e contadores, vamos lá:
	 *    
	 *    CONTADORES são variáveis numéricas inteiras, que tem a finalidade de contar (dãããã) um número constante, assim, em algum momento do  
	 *    universo, a condição do nosso enquanto se tornará falsa! Vamos a eles:
	 *    
	 *    No geral, a cada repetição do enquanto, será incrementado +1 a expressão de controle (mas isso depende doq vc quiser meu bom!) podemos
	 *    fazer isso de várias maneiras:
	 *    
	 *    x = x + 1; x++; x+=1     → é tudo a mesma coisa, ok?
	 *    
	 *    
	 *    Mas você pode querer realizar outras 'operações', ou com outros valores, então presta atenção:
	 *    
	 *    x = x (+; -; *; /) n
	 *    
	 *    ou de uma maneira reduzidamente simples e simplificadamente reduzida (pleonasmo2.pl):
	 *    
	 *    x += n     → x é igual a soma de si mesmo com n
	 *    x -= n     → x é igual a subtração de si mesmo com n
	 *    x *= n     → x é igual a multiplicação de si mesmo com n
	 *    x /= n     → x é igual a divisão de si mesmo com n
	 *    
	 *    'N' pode ser uma variável ou uma constante & 'X' pode ser uma variável, fica a dica!
	 *    
	 *    
	 *    
	 *   ACUMULADORES são variáveis numéricas reais ou inteiras, que servem para guardar o valor das suas operações de incremento ou decremento,
	 *   os acumuladores são o 'freio' da sua estrutura de repetição, eles são o 'X' do exemplo dos contadores, hehe.
	 *   
	 */
	
	funcao inicio()
	{

		// Exemplos práticos para a sua alegria e felicidade!

		// Escreva um algoritimo que irá escrever a frase inserida pelo usuário, n vezes, com n sendo definido pelo usuário.

		// Vamos a declaração das variáveis:

		inteiro n
		cadeia frase

		/* como 'N' será o número de repetições, 'N' será um inteiro, pq n existe 1.15 repetições
		 *  
		 *  a variável frase será uma 'cadeia', pq receberá um conjunto de caracteres alfanuméricos, com tamanho superior a 1
		 */


		// Agora a entrada dos dados

		escreva("Insira a frase desejada: ")
		leia(frase)

		escreva("Insira a quantidade de vezes que a frase inserida será escrita: ")
		leia(n)


		// Agora vamos ao nosso processamento dos dados inseridos, e a saída dos mesmo

		// O LAÇO ENQUANTO:

		enquanto (n > 0) {  
			// Bom, definimos que 'enquanto' a variável 'n' for maior que zero, o laço irá se repetir

			escreva(frase, "\n")

			n--  // temos aqui o 'freio' do nosso enquanto, usaremos o próprio 'n' como acumulador, para parar o laço, beleuza?
		}

		/* Perceba que colocamos a condição como 'n' maior que zero, mas pq n seria maior igual?
		 *  
		 * Bom, vamos adotar que o usuário inseriu 5 como 'n', e vamos contar:
		 * 
		 * 
		 *   Início do laço
		 * 
		 * 	5 é maior que 0? Sim, faz o laço e decrementa 1 de 'n'      → repetição nº 1
		 * 	
		 * 	4 é maior que 0? Sim, faz o laço e decrementa 1 de 'n'      → repetição nº 2
		 * 	
		 * 	3 é maior que 0? Sim, faz o laço e decrementa 1 de 'n'      → repetição nº 3
		 * 	
		 * 	2 é maior que 0? Sim, faz o laço e decrementa 1 de 'n'      → repetição nº 4
		 * 	
		 * 	1 é maior que 0? Sim, faz o laço e decrementa 1 de 'n'      → repetição nº 5
		 * 	
		 * 	0 é maior que 0? Não, finaliza o laço
		 * 	
		 * 	Fim do laço
		 * 	
		 * 	
		 * 	O compilador considera que 5 já seja a primeira repetição, então, se colocarmos >= 0, o laço se repetirá 6 vezes [☉Ô☉]
		 */
		 

		escreva("\n\n\n\n")


		//Podemos usar a estrutura 'ENQUANTO', de maneira utilitária, com para escrever uma tabuada qualquer:

		inteiro outroN = 0  // Nosso acumulador

		real tabuada   // Ddeclaração da variável quer irá receber o 'número' da tabuada
		

		escreva("Digite a tabuada desejada: ")  // Nossa entrada de dados
		leia(tabuada)


		// Processamento e saida dos dados
		
		enquanto (outroN <= 10) {  // enquanto n for menor ou igual a dez, o laço irá se repetir

			escreva(tabuada, " * ", outroN, " = ", tabuada * outroN, "\n")  // escreve bonitamente a nossa tabuada

			outroN++   // acrescenta 1 a outroN, para não ficarmos num loop eterno!
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */