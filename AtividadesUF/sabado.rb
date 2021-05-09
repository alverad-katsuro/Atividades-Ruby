def forca()
    palavras = ["amigo"]
    palavra_sorteada = palavras[rand(0...palavras.size)].chars
    palavra_acertada = ("_"*(palavra_sorteada.size)).chars
    palavras_erradas = []
    vidas = 10
    jogando = true
    while jogando
        print palavra_acertada, "\n"
        puts "Vidas restantes #{vidas}"
        puts "Digite o chute"
        chute = gets.chomp
        if palavras_erradas.include? chute
            puts "Você ja usou essa letra"
        else
            palavras_erradas.append(chute)
            if palavra_sorteada.include? chute
                for k in 0...palavra_sorteada.size
                    if palavra_sorteada[k] == chute
                        palavra_acertada[k] = chute
                        puts "#{palavra_acertada[k]}"
                        if palavra_acertada == palavra_sorteada
                            puts "Parabens vc ganhouuuuuuuuuuuuuuuuuuuuuuuuuu"
                            sleep 5
                            jogando = false
                        end
                        system("cls")
                    end
                end
            else
                puts "Você errou e perdeu uma vida"
                vidas -=1
                if vidas == 0
                    puts "Você perdeu"
                    jogando = false
                end
            end
        end
    end
end


forca()