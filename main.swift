/*
    Este é um jogo de Pedra, papel ou tesoura contra o computador ao estilo "melhor de três".
 
    Programa criado por Eduardo Cortez para o módulo 2 do curso de Desenvolva em Swift, a ser aplicado nos iOS Labs, no Brasil.
 */

// Introdução
print("##### PEDRA, PAPEL, TESOURA ####\n\n")
print("Bem vindo(a)! Este é um jogo de Pedra, Papel, Tesoura ao estilo \"melhor de três\".\n")

// Variáveis utilizadas no jogo
var playerChoice = Int()
var playerPoints = 0
var computerPoints = 0
var intComputerChoice = Int()
var stringComputerChoice = String()

// Começando o jogo
for _ in 1...3 {
    
    // Escolha do jogador
    print("\nPara essa jogada, qual é sua opção? (digite o número correspondente)")
    print("1 - Pedra")
    print("2 - Papel")
    print("3 - Tesoura")
    
    playerChoice = Int(readLine()!)!
    
    if playerChoice == 1 {
        print("\nVocê escolheu PEDRA.")
    } else if playerChoice == 2 {
        print("\nVocê escolheu PAPEL.")
    } else if playerChoice == 3 {
        print("\nVocê escolheu TESOURA.")
    } else {
        print("\nEscolha inválida. O computador venceu essa rodada")
        computerPoints += 1
    }
    
    print("\nPressione enter para continuar")
    readLine()
    
    if playerChoice >= 1 && playerChoice <= 3 {
        intComputerChoice = Int.random(in: 1...3)
        
        if intComputerChoice == 1 {
            stringComputerChoice = "PEDRA"
        } else if intComputerChoice == 2 {
            stringComputerChoice = "PAPEL"
        } else {
            stringComputerChoice = "TESOURA"
        }
        
        print("\nO computador escolheu \(stringComputerChoice).")
        
        if playerChoice == 1 {
            if intComputerChoice == 1{
                print("Vocês empataram nesta rodada.")
            } else if intComputerChoice == 2 {
                print("O computador ganhou esta rodada.")
                computerPoints += 1
            } else {
                print("Você ganhou esta rodada.")
                playerPoints += 1
            }
        } else if playerChoice == 2 {
            if intComputerChoice == 1 {
                print("Você ganhou esta rodada.")
                playerPoints += 1
            } else if intComputerChoice == 2 {
                print("Vocês empataram nesta rodada.")
            } else {
                print("O computador ganhou esta rodada.")
                computerPoints += 1
            }
        } else {
            if intComputerChoice == 1 {
                print("O computador ganhou esta rodada.")
                computerPoints += 1
            } else if intComputerChoice == 2 {
                print("Você ganhou esta rodada.")
                playerPoints += 1
            } else {
                print("Vocês empataram nesta rodada.")
            }
        }
     
        print("\nPressione enter para continuar")
        readLine()
        
    }

}

if playerPoints > computerPoints {
    print("\n\n🎉🎉🎉 Parabéns, você venceu!!! 🎉🎉🎉")
} else if playerPoints < computerPoints {
    print("\n\nPuxa, que pena. O computador venceu este jogo.")
} else {
    print("\n\nUau! Essa partida foi disputada. Vocês empataram.")
}

