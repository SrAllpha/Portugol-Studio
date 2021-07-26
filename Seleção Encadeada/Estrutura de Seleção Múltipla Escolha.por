programa
{
	/* Código Demonstração: Estrutura de Seleção Múltipla Escolha
	 *  
	 * Código por: SrAllpha
	 * 
	 * God Bless The World
	 *  
	 * O comando ESCOLHA-CASO é próprio para testar uma variável em relação a diversos valores apresentados no comando, de maneira pré-estabelecida.
	 * 
	 * Temos sua sintaxe geral dessa forma:
	 * 
	 * 	escolha (qualquerNumeroAleatorio) {
	 * 	
	 * 		caso "aqui vai o valor que você deseja comparar": e, o que deve ser executado caso (alá, viu, caso algo → faça algo) o valor passado
	 * 		seja verdade.
	 * 		
	 * 		pare  ← bom, após a estrutura do caso, temos que colocar a palavra reservada "pare"!
	 * 		
	 * 			vamos as perguntas dos internautas:
	 * 				
	 * 			Robersvalso015968 pergunta: mas por que preciso usar o "pare" ?
	 * 			
	 * 			PORQUE SIM! NÃO QUESTIONA E SÓ USA!(brincadera crianças, hehe). É necessário o "pare", para informar o compilador aonde ele 
	 * 			deve parar (ah vá, o pare serve para parar? SIM! hihi), caso não insira o pare, a estrutura do escolha-caso será VARADA de cima
	 * 			a baixo (tem um exemplo prátio no código blz?)
	 * 			
	 * 		caso 2: escreva("se o valor de "qualquerNumeroAleatorio" for 2, irá escrever isso aqui!")
	 * 		pare
	 * 		
	 * 		caso contrario: essa é a condição que será executada caso nenhuma das acima for verdade!
	 * 		
	 * 	
	 * 	Você pode usar variáveis do tipo inteiro, caractere (a condição do seu caso deve ser passada com aspas simples: '') e real, ok?
	 * 	
	 * 	
	 * 	
	 * 	Bom, mas tio, qual a diferença do "escolha-caso para o "se-senao"?
	 * 	
	 * 		Bom, (esse "tio" ae foi pra cair o cheque do leite em piá, mas ok, continuando...) a estrutura do "ESCOLHA-CASO" compara SOMENTE os 
	 * 		VALORES da variável passada, diferente do SE, que pode fazer operações lógicas (isso != daqilo; esse > aquele; etc etc), copiado?
	 * 	
	 * 	Partindo da explicação anterior, podemos dar a dica de: QUANDO USAR UM E OUTRO?
	 * 	
	 * 		Se você precisa comparar somente os valores, como por exemplo numa calculadora (que segue o exemplo aí em baixo), onde você precisa
	 * 		comparar o valor do operador ('+'; '-'; '/'; '*'; etc etc), use o ESCOLHA-CASO. 
	 * 		
	 * 		Por outro ladoooooo, se você precisa realizar operações lógicas, como comparar se é maior que, menor que, diferente que, 
	 * 		SE VOCÊ PRECISA COMPARAR ALGO, use o SE , ENTENDIDO? (poutz, gritei ali, disgurpa KKK).
	 * 
	 */
	
	funcao inicio()
	{

		// vamos ao ESCOLHA-CASO sem o "pare":
		
		inteiro qualquerNumeroAleatorio = 1

		escolha (qualquerNumeroAleatorio) {

			caso 1: escreva("Viu só que \n")

			caso 2: escreva("sem o pare o seu \n")

			caso 3: escreva("escolha-caso é VARADO \n")

			caso 4: escreva("Igual tiro de 7.62 em parede!.\n")

			caso contrario: escreva("ENTÃO USA O 'PARE' MEU BOM!")

		escreva("\n\n\n")  // desconsidera essa pancada de espaço aleatório, ok?
	
		}


	/* Agora vamos a um exercício bem simpático de bão!
	 *  
	 *  	Desenvolva um algoritimo, que recebe dois valores e o operador de uma das quatro operações básicas, e realize e imprima na tela, 
	 *  	a operação que foi informada, com os valores informados.
	 */

	/* Para começo de conversa, vamos declarar nossa variáveis! Se receberemos dois valores e um operador, será necessário declarar 3 variáveis!
	 *  
	 *  	Vamos a elas:
	 *  		
	 *  		real valor1, valor2   → definimos os valores inseridos como 'real', pq sim! (brincadera hehe, voltando ...), pode ser inserido valores
	 *  						    negativos, com casa decimal, então para evitar maiores problemas, vamos de 'real' !
	 *  						    
	 *  		caracter operador     → definimos 'operador' como caracter pq ele só vai receber o operador ('+', '-', vc entendeu né?)
	 * 
	 */
	 real valor1, valor2
	 caracter operador

	 // Vamos a entrada de dados:

	 escreva("Insira o primeiro valor: ")
	 leia(valor1)

	 escreva("Insira o operador (+, -, *, /): ")
	 leia(operador)

	 escreva("Insira o segundo valor: ")
	 leia(valor2)


	 // Agora vamos para o processamento dos dados inseridos:

	 escolha (operador) {  // definimos para o nosso escolha, quer iremos comparar os valores da variável "operador"

		caso '+': escreva(valor1, " + ", valor2, " = ", valor1 + valor2)  // temos a saida dos dados com a escrita do resultado
		/* mas que batatinhas a linha acima tá fazendo? calma jovem, vamos parte por parte:
		 *  
		 *  definimos o 'caso' como: se a variável 'operador' (definida nos parênteses logo aṕos o 'escolha') for igual a '+', irá escrever
		 *  os dois valores, e o resultado da soma (o mais ('+') está entre aspas simples pq tá escrito lá em cima!)
		 *  
		 *  então de maneira simplificadamente simples e reduzida:
		 *  
		 *  caso //a variavel 'operador' for igual a :// '+': // irá escrever:// escreva(valor1, " + ", valor2, " = ", valor1 + valor2)
		 * 	
		 * 	entenderam jovens? (bom, se não entendeu leia novamente, ou informe imediatamente sua dúvida os monitores (tô jogando pra eles KKK))
		 */

		 pare // não esquece do pare, pq senão vai fazer tudo, de cima a baixo!

		 caso '-': escreva(valor1, " - ", valor2, " = ", valor1 - valor2)
		 pare

		 caso '*': escreva(valor1, " * ", valor2, " = ", valor1 * valor2)
		 pare
		 
		 caso '/': escreva(valor1, " / ", valor2, " = ", valor1 / valor2)
		 pare

		 caso contrario: escreva("Acho que você inseriu o operador errado aí juventude, verifica e roda o código novamente!")
		 // Bom, na linha acima temos o 'default', o padrão a ser executado, caso nenhum 'caso' (k.k.) seja verdadeiramente verdadeiro, sim sim?
	 	
	 }

	 // isso é tudo pepepepessoal!     (nuss que essa é velha, agora tô me sentindo um idoso KKK)
	 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */