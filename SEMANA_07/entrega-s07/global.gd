extends Node2D

enum dialogs{
	introduction, tutorial, end
}
enum personagem{
	Idle, Walking, jumping, run, jump
}
var current_pers = personagem.Idle
var current_dialog = dialogs.introduction

var dialogos={
	dialogs.introduction: {
		"name":"jarvas",
		0:"Olá, você esta bem? Sou Jarvas, uma IA de nível 3 (Artificial superinteligence) que o seu mestre desenvolveu. Ele me fez com o propósito de prever qualquer risco à esta civilização e avisa-lo de cataclismos eminentes. ",
		1:"Além disso eu seria responsavel por qualquer plano de contingencia e caso não houvesse qualquer chance de preservação, eu deveria perpetuar pelo cosmos o legado desta civilização. ",
		2:"Estou te contactando pois detectei uma ameaça de extinção em massa sem qualquer chance de escapatória e o meu mestre sumiu. Mostrarei a você uma simulação do que acntecerá em cerca de 10 min",
		3:"",
		4:"este asteroide esta indetectavel e ja se aproximou o suficiente para começar a soltar pequenas partes que começarão a cair como pequenos meteoritos e a partir de agora o legado desta civilização esta nas tuas mãos",
		5:" ao sair desta sala, você poderá seguir em frente que encontrará uma estrutura de lasers e espelhos com um botão de emergência preparado pelo meu mestre, chegue até ele e acione o botão para preservar a nossa existencia na memória de outra civilização"
	}
}
