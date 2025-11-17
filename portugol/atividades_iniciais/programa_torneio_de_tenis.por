programa
{
	
	funcao inicio()
	{
		inteiro v, p, r, x, z, g=0
		cadeia c
		c="s"
		enquanto(c=="s"){
			escreva("Classificação do Participante no Torneio de Tênis\n")
			escreva("Digite a quantidade de partidas que o participante venceu: ")
			leia(v)
			escreva("Digite a quantidade de partidas que o participante perdeu: ")
			leia(p)
			r=v+p
			x=1
			z=1
			se(r>6){
				escreva("O participante jogou mais que 6 jogos no torneio de tênis.")
			}senao{
				escreva("Jogos\n")
				enquanto(x<=v){
					escreva("V\n")
					x=x+1
				}
			}
			enquanto(z<=p){
				escreva("P\n")
				z=z+1
			}
			se(v==0){
				g=-1}
			se((v==1)ou(v==2)){
				g=1
				}senao se((v==3)ou(v==4)){
				g=2
				}senao se((v==5)ou(v==6)){
				g=3
				}
			escreva("Grupo de classificação: ", g,"\n")
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
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */