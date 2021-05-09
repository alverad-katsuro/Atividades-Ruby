def main(a)
    for k in a
        puts "\n"
        for x in k
            print("| #{x} | ")
        end
    end
end


def jogada(a)
    puts "Digite a Linha"
    lin = gets.to_i
    lin -= 1
    if !(lin in 0..2)
        puts "Digite um valor entra 1 e 3"
        jogada(a)
    end
    puts "Digite a Coluna"
    col = gets.to_i
    col -= 1
    if !(col in 0..2)
        puts "Digite um valor entra 1 e 3"
        jogada(a)
    end
    if a[lin][col] == "-"

        return [lin, col]
    else
        puts "Você selecionou um espaço ja preenchido"
        main(a)
        puts " \n"
        jogada(a)
    end
end


def jogador_1(a)
    puts "Jogador 1"
    x = jogada(a)
    a[x[0]][x[1]] = 0
    return a
end


def jogador_2(a)
    puts "Jogador 2"
    x = jogada(a)
    a[x[0]][x[1]] = 1
    return a
end


def vit(a)
    for x in ["0", "1"]
        for k in (0...(a.size)) #linha
        j1_v = 0
        j2_v = 0
        j1_h = 0
        j2_h = 0
            for m in (0...(a[k].size)) #col
                if x == (a[m][k].to_s) ## conta as colunas
                    if x == "0"
                        j1_v += 1
                        if j1_v == 3; return 1; end
                    elsif x == "1"
                        j2_v += 1
                        if j2_v == 3; return 2; end
                    end
                end
                if x == (a[k][m].to_s) ## conta linhas ### se por elsif da erro?? pq?
                    if x == "0"
                        j1_h += 1
                        if j1_h == 3; return 1; end
                    elsif x == "1"
                        j2_h += 1
                        if j2_h == 3; return 2; end
                    end               
                 end
            end
        end
    end
    return 0
end


def vert(a)
    for k in [0, 1]
        if (a[0][0] == k) && (a[1][1] == k) && (a[2][2] == k)
            return (k.to_i) + 1
        end
        if (a[0][2] == k) && (a[1][1] == k) && (a[2][0] == k)
            return (k.to_i) + 1
        end
    end
end
    


def cond_vit(a)
    vitoria = vit(a)
    ana_vit(vitoria)
    vitoria = vert(a)
    p vitoria
    ana_vit(vitoria)
end


def ana_vit(vitoria)
    if vitoria == 1
        puts "\nO primeiro jogador ganhouuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\n"
        exit!
    elsif vitoria == 2
        puts "\nO segundo jogador ganhouuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\n"
        exit!
    end
end


def jogo()
    a = [["-","-","-"],["-","-","-"],["-","-","-"]]
    cont = 0
    while cont <= 9
        cond_vit(a)
        main(a)
        puts " \n"
        a = jogador_1(a)
        main(a)
        cond_vit(a)
        puts " \n"
        a = jogador_2(a)
        cond_vit(a)
        cont += 2
    end
end


jogo()