extends Node2D

var teste = false
var valor = 0
var numero = 0  #variavel não pode possuir acentos
var lista = []    #para definir uma varialvel se usa var antes
var nome = ""
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text) 
	nome = $LineEdit.text 
	#nedte código iremos receber 2 textos diferentes, um número para a lista e um nome

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	$Label.text = str(lista)
#mostra a lista criada, neste caso a lista precisa ser convertida a string por conta da label que espera este tipo de dado

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0  #as variaveis necessitam ser iniciadas com os valores que utilizaremos, no caso elas deverão ser inteiros por serem de controle
	var i = 0 
	var nome_saida ="" #variavel criada para evitar a repetição de baldo no laço(incremento  a acada cont!=0).
	while i < len(lista): # o while precisa de uma condição booleana para funcionar, neste caso quando era apenas len() ele ão tinha um parametro
							#com i< len() ele vai comparar e retornar se a condição é true ou false e assim entrar no laço e depois sair dele
		if(lista[i]%2==1):
			cont+=1
			i+=1
		else:
			i+=1
		if(cont!=0):
			nome_saida = nome+"baldo"
			i+=1
		else:
			nome_saida = nome
	# a cada condicional se incrementou 1 à variavel de controle i para o laço while não ser infinito 	
			 
		
		$Label2.text = nome_saida
#no código original as variaveis não foram iniciadas corretamente com var, a condição do while era sempre true
#repetia o baldo muitas vezes após o nome 
