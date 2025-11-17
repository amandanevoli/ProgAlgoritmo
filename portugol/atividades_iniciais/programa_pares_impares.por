programa
{
	inteiro r, n
	funcao inicio(){
		cadeia c
		c="s"
		enquanto(c=="s"){
			escreva("Prorama Pares e Ímpares\n\n")
			escreva("Digite um número inteiro: ")
			leia(n)
			r=n%2
			se(r==0){
				escreva("O número ", n, " é par.\n\n")
			}senao{
				escreva("O número ", n, " é ímpar.\n\n")
			}
			escreva("Deseja continuar? (S/N)")
			leia(c)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 359; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */