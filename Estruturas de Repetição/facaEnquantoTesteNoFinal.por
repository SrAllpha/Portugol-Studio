programa
{
	/*  Código Demonstração: Estruturade Repetição com Teste no Final v1.0
	 *  
	 *  Código por: SrAllpha
	 *  
	 *  God Bless The World
	 *  
	 *  
	 *    O comando FACA-ENQUANTO permite que determinado bloco de código seja executado enquanto uma certa condição (argumentada pelo programador),
	 *  for verdadeira. A sintaxe do FACA-ENQUANTO é a seguinte juventude:
	 *  
	 *  	
	 *  		faca {
	 *  		
	 *  		→ aonde você irá escrever oq será executado, ao menos uma vez, e ,se sua condição for verdadeira, enquanto a mesma se mantiver assim!
	 *  		
	 *  		} enquanto (a condição que você irá passar para validar o laço)
	 *  		
	 *  		
	 *  	Temos por definição do laço FACA-ENQUANTO:
	 *  		
	 *  		"Executa o bloco e depois testa a condição lógica, se for verdadeira, retorna ao começo do bloco de comandos para repetir a execução. 
	 *  		Caso contrário, ou seja o teste der falso, o bloco de comandos será abandonado." (PIOVESAN, S. K. B., 2021, 15)
	 *  		
	 *  		
	 *  	Este comando mais que simático deve ser usado sempre que:
	 *  		
	 *  		→ Você não faça ideia de quantas vezes o laço será repetido
	 *  		
	 *  		→ O teste precisa ser realizado depois da execução de um bloco
	 *  		
	 *  		→ O laço DEVE ser executado AO MENOS UMA VEZ
	 *  		
	 *  	
	 *  	Vamos a alguns exemplos bacanas de bão!
	 */
	
	funcao inicio()
	{
		/* Vamos a uma brincadeirinha de brincadeira:
		 *  	
		 *  	 Desenvolva um algoritimo que conte e imprima ao final, quantas vezes o mesmo for executado, tendo a quantidade de execuções 
		 *  	 definidas por sim/não, a cada execução.
		 */

		// Vamos a declaração de variáveis que vão 'varear' (hehe)

		inteiro contador
		cadeia continua

		/* Vamos soja por soja:
		 *  
		 *  	  Como queremos escrever a quantidade de vezes que o laço 'rodou', precisaremos de uma variável do tipo inteiro, pq n tem como dar
		 *  	  meia volta no loop, né pivete!
		 *  	  
		 *  	  
		 *  	  E como o laço ficará em execução enquanto o usuário inserir 'sim', precisaremos de uma variável para comparar oq ele inseriu.
		 *  	  Como 'sim' é uma cadeia de caracteres, temos seu tipo como: (adivinha!...) cadeia.
		 *  	  
		 *  	  Show de bola guri!
		 *  	  
		 *  	  CONTINUANDOOOOO ...
		 * 
		 */

		 contador = 0  // Inicializamos contador como zero (poderia ter feito isso junto com a declaração, mas eu quis aqui, mas pode fazer lá
		 			// tmb, não tem tempo ruim!

		 faca {   // abrimos o escopo do 'faca', tudo que estiver dentro dessa chaves, serão repetidos

		 	escreva("Repetindo ...\n")

		 	contador ++   // adiciona 1 unidade a 'contador'

		 	escreva("Deseja continuar repetindo? (insira sim → DESSE JEITINHO MENO, SEM MT GRACINHA HEIN!, caso contrário, insere oq quiser ae): ")
		 	leia(continua)   // inicializamos 'continua', com o valor inserido pelo usuário

		 	escreva("\n")   // pular linha (pq linha ainda é de graça, hihi)
		 	
		 } enquanto (continua == "sim")  // O laço ficará repetindo, enquanto o valor inserido pelo usuário ('lido' na variável continua), for sim

		escreva("O laço foi repetido ", contador, " vezes!")


		// ACABOU O EXEMPLO, AEEEEEEEEEEEEE!


		// Só um negócio aqui, bem rapidinho

		inteiro sN

		escreva("\n\nDeseja limpar a tela para executar o próximo exemplo (1 → sim; 2 → não): ")
		leia(sN)

		se (sN == 1) {
			limpa()
		} senao {
			escreva("\n\n\n")
		}

		// Voltando a programação normal ...

		

		/* Vamos agora a um exercício que a querida senhora professora tia Suzan solicitou:
		 *  
		 *  		Escrever  um  algoritmo  que  faça  a  tabuada  de  um  número  informado  pelo usuário.
		 *  		(Usar a estrutura repetição condicional no final)
		 *  		
		 *  	
		 *  	Vamo a ele piazada:
		 */

		inteiro tabuada, tamanho, i = 0   // Declaração de variáveis (note que 'i' foi inicializado já aqui!)

		escreva("Digite a tabuada: ")   // A entrada dos nosso dados, aqui pergunta-se ao usuário de qual valor ele quer que a tabuada seja
		leia(tabuada)  	            // grava esse valor em tabuada

		escreva("Digite o tamanho da tabuada: ")  //Também entrada de dados, agora solcitando o tamanho (3 x n  → sendo n o tamanho (val máx))
		leia(tamanho)						  // grava em tamanho


		// AQUI A MÁGICA ACONTECE CRIANÇAS!
	
		faca {   // bom, por partes!

			/* Como já solicitamos todo os valores, aqui só iremos escrever a tabuada de acordo com os valores inseridos pelo usuário, ok?
			 *  
			 *  Então, iremos escrever a tabuada da seguinte maneira:
			 *  
			 *  		Sabemos o tamanho máximo certo? (sim tio Weber!) Ele foi definido em 'tamanho', lá em cima.
			 *  		
			 *  		O nosso laço será baseado nessa informação, ele será executado enquanto 'i' (que vale zero! *l. 116*), for menor que o 
			 *  		tamanho, e, a cade vez que o laço se repetir, 'i' receberá + 1, para que, em algum momento, o laço seja abandonado.
			 *  		
			 *  		Escreveremos da seguinte maneira:
			 *  		
			 *  		tabuada (valor que o usuário inseriu)
			 *  					*
			 *  		i (que é o 'tamanho' da tabuada  → 5 x 0 (i == 0), 5 x 1 (i == 1), assim até o infinito e além, com 'i' aumentando graças
			 *  		ao "i++"
			 *  		
			 *  					=
			 *  					
			 *  		tabuada * i
			 */
			
			escreva(tabuada, " * ", i, " = ", tabuada * i,"\n")

			i++
			
		} enquanto (i <= tamanho)    // Como explicado acima, o laço será executado enquanto nosso querido 'i', for menor ou igual ao tamanho
							    // desejado pelo usuário, e quanto atinge esse tamanho, o laço é abandonado!
	}




	/* Referências Bibliográficas
	 *  
	 *  PIOVESAN, S. K. B. Aula 9 –Estruturas de Repetição (Com Teste no Inicio e Com Teste no Final). 2021. 18 slides. Disponível em:
	 *  <https://moodle.utfpr.edu.br/pluginfile.php/2009444/mod_resource/content/1/Aula%209%20-%20Estrutura%20de%20Repeti%C3%A7%C3%A3o%20com%20teste%20no%20inicio%20e%20com%20teste%20no%20final%20.pdf>
	 *  Acesso em: 27/07/2021
	 * 
	 */
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */