programa
{
	/* Código Demonstração v1.0   -> Desvio Condicional 'SE'
	 * 
	 * Desenvolvido por: SrAllpha
	 * 
	 * God Bless The World
	 */
	funcao inicio()
	{
		/* linhas 19 até 20
		 *  Declaração das variáveis:
		 *  		Define o seu tipo: 
		 *  				inteiro -> qualquer inteiro (positivo, negativo ou nulo -> 100, 0, 1, 1250)
		 *  				real    -> qualquer real (positivo, negativo ou nulo ->  -10, -1.5, 11.2, 0, 1)
		 *  				logico  -> valor lógico -> verdadeiro ou falso
		 *  				caractere -> caractere alfanumérico único -> "C", "c", "2" 
		 *  				cadeia  -> uma cadeia de caracteres -> "casa", "Win31", "Linux, O Melhor OS"
		 *  				
		 *  		Define o seu identificador (o nome da variável)
		 *  
		 *  regra geral: <tipo> <nomeDaVariavel> 
		 */
		real primeiroNumero, segundoNumero   
		caracter operador

		/* Linha 26, 42, 45
		*    Palavra reservada 'escreva' -> escreva("Mensagem a ser escrita") -> escreve a mensagem na tela e pode esperar 
		*    uma entrada de dados do usuário (combinado com a palavra reservada 'leia')
		*    
		*    "\n" -> insere uma quebra de linha
		*/
		escreva("\nDigite o primeiro valor: ")

		/* Linha 40, 43, 46
		* 	Palavra reservada 'leia' -> leia(variavelQueReceberaOValor) -> atribui ao argumento passado, o valor que foi inserido
		* 	pelo usuário na sentença de código acima mais próxima, exemplo:
		* 		
		* 		cadeia(resposta)
		* 		
		* 		escreva("Digite o melhor sistema operacional: ")  -> usuário insere "Linux" no console (óbvio q é o Linux)
		* 		leia(resposta) -> atribui aquilo que foi inserido no escreva, neste caso -> "linux"
		* 					   Agora, a variável 'resposta' "vale" -> "linux"
		*/
		 leia(primeiroNumero)

	      escreva("\nDigite o operador: ")
	      leia(operador)
	      
		 escreva("\nDigite o segundo valor: ")
		 leia(segundoNumero)

		/* Desvio Condicional 'SE', 'SENÃO SE' & 'SENAO'
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
		 */
		 se (operador == '+'){ 
		 	escreva("\nO resultado da adição é: ", primeiroNumero + segundoNumero)
		 	// Se a variável operador for igual ('==') a '+', executará a linha 70, que realizará a adição e 
               // escreverá na tela o resultado 
		 	
		 } senao se (operador == '-') {
		 	escreva("O resultado da subtração é: ", primeiroNumero - segundoNumero)
		 	// Caso a variável operador não for igual a: '+' (da expressão anterior), o algoritimo tentará verificar 
		 	// se 'operador' é igual a '-', sendo verdadeiro, realiza a subtração e escreverá o resultado na tela
		 	
		 } senao se (operador == '*') {
		 	escreva("\nO resultado da multiplicação é: ", primeiroNumero * segundoNumero)
		 	// Caso a variável operador não for igual a: '-' (da expressão anterior), o algoritimo tentará verificar 
		 	// se 'operador' é igual a '*', sendo verdadeiro, realiza a multiplicação e escreverá o resultado na tela
		 	
		 } senao se (operador == '/') {
		 	escreva("\nO resultado da divisão é: ", primeiroNumero / segundoNumero)
		 	// Caso a variável operador não for igual a: '*' (da expressão anterior), o algoritimo tentará verificar 
		 	// se 'operador' é igual a '/', sendo verdadeiro, realiza a divisão e escreverá o resultado na tela
		 	
		 } senao {
		 	escreva("\nInsira os valores corretamente!")
		 	// Caso nenhuma das expressões anteriores resultarem em verdadeiro, o 'SENÃO' executará a escrita da mensagem 
		 	// na tela, informando o usuário que o valor inserido para 'operador' é inválido
		 	
		 }

		 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 819; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */