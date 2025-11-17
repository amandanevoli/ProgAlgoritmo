
programa
{
	funcao inicio(){
		inteiro t, i, m
		cadeia r
		r="s"
		enquanto(r=="s"){
			escreva("Programa Tabuada")
			escreva("Qual a tabuada desejada?")
			leia(t)
			se((t>=1)e(t<=10)){
				i=0
				enquanto(i<=10){
					m=t*i
					escreva(t,"x",i,"=",m,"\n")
					i=i+1
				}
			}senao{
				escreva("Digite um número entre 1 e 10")
			}
			escreva("Deseja continuar(S/N)?")
			leia(r)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */