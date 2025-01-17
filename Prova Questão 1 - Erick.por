programa
{
//Leia dois valores e efetue a divisão do primeiro pelo segundo. O segundo valor não pode ser ZERO ou negativo, caso isso ocorra informe ao usuário
//que o segundo número deve ser maior que zero e solicitar um novo valor. Deverá imprimir o resultado. 
//Ao final, perguntar se deseja calcular outra divisão e, caso sim, limpar a tela e pedir novos valores. 
	
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tp
	funcao inicio()
	{
		inteiro numero1, numero2
		real resultado
		caracter sn = '0'
		cadeia tecla
		logico sair = falso

		faca{
			escreva("Informe um número: ")
			leia(numero1)
			limpa()
			escreva("Informe outro número (maior que 0): ")
			leia(numero2)
			limpa()

			se(numero2 <= 0){
				escreva("ERRO. O segundo número deve ser maior que zero. Pressione uma tecla para voltar: ")
				leia(tecla)
				limpa()
			}senao se(numero2>0){

			resultado = tp.inteiro_para_real(numero1) / tp.inteiro_para_real(numero2)
	
			escreva(numero1, " / ", numero2, " = ", mat.arredondar(resultado, 2))
	
			escreva("\n\nDeseja calcular outra divisão? S/N\n")
			leia(sn)
			limpa()
			}

		}enquanto(sn != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */