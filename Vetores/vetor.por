programa {

	/* Código Demonstrativo: Vetores v1.0
	 * 
	 * Código por: SrAllpha
	 * 
	 * God Bless The World
	 * 
	 * 
	 * 										VAMOS A VETORES, ALELUIA IGREJA!
	 * 					
	 * 	Chegamos a vetores, mas o que carambolas são vetores?
	 * 	
	 * 		Bom, vetores (q aparece como array, na maioria das documentações das linguagens de programação → perl trata como array, python 
	 *	como lista, então isso vareia rapaiz!), mas voltando aos vetores, temos como definição que vetor é uma estrutura de dados que armazena
	 *	uma sequência de objetos, todos do MESMO tipo. Essa estrutura também permite o acesso aleatório, ou seja, podemos acessar qualquer elemento
	 *	do vetor diretamente, apartir do seu índice!
	 *	
	 *	Ai falou de índice, a juventude entra em desespero. Índice nada mais é que o 'número' da posição que determinado elemento se encontra
	 *	Lembrando que os vetores (na grande maioria dos casos), tem como índice incial o zero == '0'.
	 *	
	 *	Vamos a uma demonstração mais 'prática':
	 *	
	 *		
	 *		Para declaramos um vetor no portugol, iremos seguir a seguinte sintaxe padrão:
	 *		
	 *				tipo nomeDoVetor[n]      * Onde:
	 *										→ tipo é seu tipo (kk): inteiro, cadeia, real etc etc.
	 *										→ nomeDoVetor é o nome propriamente dito do seu vetor.
	 *										→ n é uma constante, que irá informar ao intepretador quantas posições esse vetor tem.
	 *				
	 *				exemplos:
	 *				
	 *						inteiro vetorInteiro[5]    → vetor com uma sequência de objetos do tipo inteiro, com 5 posições.
	 *						
	 *						caracter vetorTexto[2]     → vetor com uma sequência de objetos do tipo caracter, com 2 posições.
	 *										
	 *										
	 *		Podemos inicializar diretamente o nosso vetor, onde '[tamanho]' fica opcional, usando a seguinte sintaxe padrão:
	 *		
	 *		
	 *				tipo nomeDoVetor [4] = {elemento0, elemento1, elemento2, elemento3}
	 *				
	 *							ou ocultando o tamanho:
	 *						
	 *				tipo nomeDoVetor [] = {elemento0, elemento1, elemento2, elemento3}
	 *				
	 *				
	 *				
	 *				exemplos:
	 *				
	 *						cadeia nomes[] = {"Josuverberaldo", "Rocha Neto", "Marchas"}
	 *						
	 *						logico amor[6] =  {falso, falso, falso, falso, falso, falso}
	 *						
	 *						
	 *		
	 *	
	 *		Temos alguns detalhes que merecem atenção! Lembra do índice? Então, CUIDADO para não 'estourar' o índice do seu vetor, exempo:
	 *		
	 *		
	 *				inteiro teste[2]
	 *				
	 *				ai vc vai querer ler o elemento 592:
	 *				
	 *				escreva(teste[592])     → logo isso não vai funfar meu bom, pq o índice foi EXPLODIDO!
	 *				
	 *				
	 *				
	 *		Agora vamos a manipulações (hehe):
	 *		
	 *		
	 *		Leitura/Escrita:
	 *				
	 *			A leitura/escrita pode ser feita de forma manual, elemento a elemento (mt trabalho), ou usando a estrutura de repetição PARA:
	 *			
	 *			
	 *				para (inteiro n = 0, n < 2; n ++) {
	 *				
	 *					escreva("Insira o elemento da posição ", i, " : ")   → solicitamos a entrada, concatenando a posição (i)
	 *					
	 *					leia(vetor[n])      → Solicitamos o armazenamento do dado inserido, na posição n!  (n tendeu? vamo passo a passo)        :)
	 *					
	 *					→ como estamo utilizando o para, iremos ter n mudando de valor a cada repetição, como n começa em 0 (zero), temos que:
	 *					
	 *						
	 *						Na primeira 'volta' do para, n == 0, então, o dado inserido será gravado na posição 0 (zero) do vetor: vetor[]    (criatividade.pl)
	 *						
	 *						Na segunda 'volta' do para, n == 1, então, o dado inserido será gravado na posição 1 (um) do vetor: vetor[]
	 *						
	 *						E assim por diante, ok?
	 *				}
	 *				
	 *				
	 *		Bom, se para inserir dados no nosso amado vetor podemos usar o para, para facilitar a nossa vida, no escreva a conversa é a mesma:
	 *		
	 *			A escrita pode se dar dessa forma:
	 *			
	 *			inteiro vetor[] = {10, 12}
	 *			
	 *			
	 *			para (inteiro n = 0; n < 2; n ++) {
	 *			
	 *				escreva("O elemento ", i, " é igual a : ", vetor[n], ".\n")
	 *				
	 *					→ Seguindo a mesma lógica da leitura, o escreva escreverá o elemento de acordo com o n, que depende do para, então
	 *					  escreveremos elemento a elemento, de forma crescente (dá pra fazer da forma que vc quiser!):
	 *					  
	 *					  	Na primeira 'volta' n == 0, temos o retorno como:
	 *					  	
	 *					  		O elemento 0 é igual a: 10.
	 *					  	
	 *					  	Na segunda 'volta' n == 1, temos o retorno como:
	 *					  	
	 *					  		O elemento 1 é igual a: 12.
	 *					  		
	 *					  		
	 *		
	 *								
	 *										VAMOS A EXEMPLOS PRÁTICOS HEHEHE
	 *										
	 *										
	 *							(Declaro que para fins judiciais, todos os algoritimos aqui feitos)
	 *								(são exclusivos para a finalidade educacional, sendo de )
	 *									(resposabilidade do usuário a sua utilização!)
	 *									
	 *												   (hihi)
	 */
	
	funcao inicio() {

		// Escreva um algoritimo que leia o número do cartão de crédito, nome, data de vencimento e o código de segurança (hehehe) e 
		// exiba os dados na tela (serão 5 conjuntos de nome, número, data e csc).

		cadeia numCartao[5]    
		// Como o número do cartão tem 16 dígitos (Visa e Mastercard, como eu sei disso, não sei KKK), vamos usar 5 no tamanho, pq serão 5 
		// conjuntos de dados. Vou usar como cadeia, pq nunca se sabe se o cidadão vai inserir com ou sem ponto!
		// Não vamos inicializar com nenhum valor, pq esses valores serão inseridos pelo usuário.

		inteiro csc[5]
		// O código de segurança possui 3 dígitos, que serão inseridos pelo usuário, portanto, não inicializa nenhum valor!
		// 5 dnovo, pq serão 5 csc

		cadeia nomeDoFulano[5]
		// Temos o vetor para o nome, com 5 posições pelo mesmo motivo

		cadeia dataDeValidade[5]
		// Criei como cadeia, devido a barra (/) que divide o mês e o ano, logo, mm/aa. Já sabe pq do 5 né!?


		// Vamos a entrada dos dados, usando o para, começando do 0 (pq vetor começa do índice zero (0), até o 4 (sendo 4 a quinta posição)

		para (inteiro n = 0; n < 5; n ++) {

			escreva("Insira o seu nome completo: ")  // Pede o nome
			leia(nomeDoFulano[n])   //Iremos inserir o nome no conjunto n (definido pela 'volta' do pare)

			escreva("\n")  // Uma linha de graça pra ficar bunitu

			// Daqui pra frente vai ser a mesma brisa, então se baseie noq cada coisa está fazendo por esse comecinho!

			escreva("Insira a data de validade (utilize o seguinte formato: mm/aa, escrevendo a barra (/)): ")
			leia(dataDeValidade[n])

			escreva("\n")

			escreva("Insira o número do seu cartão (sem pontos, somente números): ")
			leia(numCartao[n])

			escreva("\n")

			escreva("Insira o código de segurança, que se encontra no verso (possui 3 dígitos): ")
			leia(csc[n])

			escreva("\n\n")

			escreva("<-----------------------------> <----------------------------->")

			escreva("\n\n")

		}
		



		// Bom, já pegamos todos os dados, agora vamos apresentá-los, usando a mesma lógica do para, para isso!

		para (inteiro z = 0; z < 5; z ++) {

			escreva("Os dados do ", z + 1, "º cartão inserido são: \n\n")

			// Vamos iniciar escrevendo a ordem dos cartões, como o vetor começa em zero, podemos fazer o índice + 1, pra deixar mais amigável
			// e não começar pelo 0º cartão, q fica bem estranho


			// As linhas seguintes escrevem seus respectivos dados, já que o seus conjuntos (por cartão), estão armazenados em seu respectivo
			//índice: os dados do primeiro cartão estão no índice 0 (zerp), logo os dados estarão nos vetores correspondentes, no índice 0 (zero)

			escreva("Nome: ", nomeDoFulano[z], "\n")

			escreva("Número do cartão: ", numCartao[z], "\n")

			escreva("Data de validade: ", dataDeValidade[z], "\n")

			escreva("Código de segurança: ", csc[z], "\n")

			escreva("\n\n")
			
		}



		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */