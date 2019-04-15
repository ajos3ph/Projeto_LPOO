Algoritmo "PROJETO_LPOO"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Aldo Henrique
// Descrição   : Menu de Opções (função)
// Autor(a)    : André José da Silva Fernandes
// Data atual  : 14/04/2019
Var
   menu:caracter
   n1,n2,resultado,divisao:real
   numero,contador,cont1,cont2,x:inteiro
   m,f,sexo:caracter
   n,idade,y:inteiro
   totalM,totalF,totalidade,idadeM,idadeF:inteiro
   mediaidade,mediaM,mediaF:real
   numMax, contador2 : inteiro
   soma1,numero3,maior,menor,media : real
   codmorse : inteiro
   contador4, contador5, Max, n, binario : inteiro
   decimal : real
   z: caracter


   //FUNÇÃO DIVIDIR//
funcao f_div(num1:inteiro;num2:inteiro):real
inicio
   divisao<-num1/num2
   retorne divisao
fimfuncao


Inicio
   repita
      escreval("MENU")
      escreval("1 Divisão")
      escreval("2 Faixa Etária")
      escreval("3 Números Primos")
      escreval("4 Maior, Menor e Média")
      escreval("5 Código Morse")
      escreval("6 Mudança de Base")
      escreval("Sair")
      leia(menu)
      limpatela

      se(menu="1") entao
         escreval("Digite o primeiro número")
         leia(n1)
         escreval("Dígite o segundo Número")
         leia(n2)
         resultado<-f_div(n1,n2)
         escreval("o resultado é",resultado)
      fimse

      se(menu="2")entao
         escreval("digite a quantidade de pessoas")
         leia(n)
         para y de 1 ate n faca
            escreval("digite a idade da",y," pessoa")
            leia(idade)
            totalidade<-totalidade+idade
            escreval("digite o sexo da",y," pessoa")
            leia(sexo)
            se (sexo="m") entao
               totalM<-totalM+1
               idadeM<-idadeM+idade
            senao
               se (sexo="f") entao
                  totalF<-totalF+1
                  idadeF<-idadeF+idade
               fimse
            fimse
         fimpara
         mediaidade<-totalidade/n
         escreval("A Média da idade das pessoas é de",mediaidade," anos.")
         mediaM<-idadeM/totalM
         mediaF<-idadeF/totalF
         escreval("A Média da idade do sexo masculino é de",mediaM," anos.")
         escreval("A Média da idade do sexo feminino é de",mediaF," anos.")
      fimse

      se(menu="3")entao
         escreval("Digite um número: ")
         leia(numero)
         contador<-0
         cont1<-2
         cont2<-1
         se numero>0 entao
            enquanto cont1<=numero faca
               enquanto cont2<=cont1 faca
                  se cont1 mod cont2=0 entao
                     contador<-contador+1
                  fimse
                  cont2<-cont2+1
               fimenquanto
               se contador=2 entao
                  escreval(cont1)
                  x<-x+cont1
               fimse
               cont1<-cont1+1
               cont2<-1
               contador<-0
            fimenquanto
            escreval("A Soma numeros primos é: ",x)
         fimse
      fimse

      se(menu="4") entao
         escreval("Digite a quantidade de numeros:")
         leia(numMax)
         contador2 <- 0
         repita
            escreval("Digite o numero: ")
            leia(numero3)
            se numero3 > maior entao
               maior <- numero3
            fimse
            se (numero3 > 0) e ((numero3 < menor) ou (menor = 0)) entao
               menor <- numero3
            fimse
            soma1 <- soma1 + numero3
            contador2 <- contador2 + 1
         ate (contador2 >= numMax)
         media <- soma1 / contador2

         escreval("O maior e ", maior)
         escreval("O menor e ", menor)
         escreval("A media e ", media)

         se(menu="5") entao
            limpatela
            escreval("Código Morse")
            escreval("Digite um número de 0 a 20")
            leia(morse)
            escolha (morse)
            caso 0
               escreval("-----")
            caso 1
               escreval(".----")
            caso 2
               escreval("..---")
            caso 3
               escreval("...--")
            caso 4
               escreval("....-")
            caso 5
               escreval(".....")
            caso 6
               escreval("-....")
            caso 7
               escreval("--...")
            caso 8
               escreval("---..")
            caso 9
               escreval("----.")
            caso 10
               escreval(".---- -----")
            caso 11
               escreval(".---- .----")
            caso 12
               escreval(".---- ..---")
            caso 13
               escreval(".---- ...--")
            caso 14
               escreval(".---- ....-")
            caso 15
               escreval(".---- .....")
            caso 16
               escreval(".---- -....")
            caso 17
               escreval(".---- --...")
            caso 18
               escreval(".---- ---..")
            caso 19
               escreval(".---- ----.")
            caso 20
               escreval("..--- -----")
            outrocaso
               escreval("Valor invalido")
            fimescolha
         fimse

         se(menu="6") entao
            escreval("Digite a quantidade de numeros:")
            leia(Max)
            repita
               contador5 <- 0
               binario <- 0
               decimal <- 0
               repita
                  escreval("Digite um numero maior que 0:")
                  leia(n)
                  se n <= 0 entao
                     escreval("O numero digitado não e maior que 0")
                  fimse
               ate n > 0
               repita
                  escreval("Digite b para binario e d para decimal")
                  leia(z)
                  se (z <> "B") e (z <> "b") e (z <> "D") e (z <> "d") entao
                     escreval("A letra deve ser b ou d")
                  fimse
               ate (z = "B") ou (z = "b") ou (z = "D") ou (z = "d")

               resultado <- ""
               se (z = "B") ou (z = "b") entao
                  enquanto n > 0 faca
                     se (n mod 2) = 0 entao
                        resultado <- "0" + resultado
                     senao
                        resultado <- "1" + resultado
                     fimse
                     n <- n div 2/
                  fimenquanto
                  escreval("O valor em binario e ",resultado)
               fimse
               se (z = "D") ou (z = "d") entao
                  enquanto n > 0 faca
                     binario <- n mod 10
                     decimal <- decimal + (binario*2 ^ contador5)
                     contador5 <- contador5 +1
                     n <- n\10
                  fimenquanto
                  escreval("O valor decimal e ",decimal)
               fimse

               contador4 <- contador4 + 1
            ate (contador4 >= Max)

            se(menu="7") entao
               escreval("Menu finalizado")

            ate(menu="7")

Fimalgoritmo