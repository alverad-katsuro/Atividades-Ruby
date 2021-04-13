#- [recomendação] nao usar estruturas de dados 
#- [prazo] entregar até 23:59, formato de planilha que vcs ja conhecem
#- [atividade] faça dois programas que traduzam textos. no primeiro programa, o usuário insere um texto em portugues e esse texto é traduzido para código morse. no segundo programa, é feito o inverso; o usuário passa o texto em código morse e este texto é traduzido para portugues. Tabela de código morse: http://www.csgnetwork.com/morsecodechrtbl.html

def pt_morse()
    puts "Digita uma frase qlqr sem caracteres especiais so o albeto e os numeros"
    entra = gets.upcase.delete("\n").gsub(" "," / ")
    for k in entra.delete(" ").chars
        if !((k in "A".."Z") || (k.to_i in 0..9) || k == "/")
            pt_morse()
        end
    end
    entra = entra.gsub "A", ".- "
    entra = entra.gsub "B", "-... "
    entra = entra.gsub "C", "-.-. "
    entra = entra.gsub "D", "-.. "
    entra = entra.gsub "E", ". "
    entra = entra.gsub "F", "..-. "
    entra = entra.gsub "G", "--. "
    entra = entra.gsub "H", ".... "
    entra = entra.gsub "I", ".. "
    entra = entra.gsub "J", ".--- "
    entra = entra.gsub "K", "-.- "
    entra = entra.gsub "L", ".-.. "
    entra = entra.gsub "M", "-- "
    entra = entra.gsub "N", "-. "
    entra = entra.gsub "O", "--- "
    entra = entra.gsub "P", ".--. "
    entra = entra.gsub "Q", "--.- "
    entra = entra.gsub "R", ".-. "
    entra = entra.gsub "S", "... "
    entra = entra.gsub "T", "- "
    entra = entra.gsub "U", "..- "
    entra = entra.gsub "V", "...- "
    entra = entra.gsub "W", ".-- "
    entra = entra.gsub "X", "-..- "
    entra = entra.gsub "Y", "-.-- "
    entra = entra.gsub "Z", "--.. "
    entra = entra.gsub "0", ".---- "
    entra = entra.gsub "1", "..--- "
    entra = entra.gsub "2", "...-- "
    entra = entra.gsub "3", "....- "
    entra = entra.gsub "4", "..... "
    entra = entra.gsub "5", "-.... "
    entra = entra.gsub "6", "--... "
    entra = entra.gsub "7", "---.. "
    entra = entra.gsub "8", "----. "
    entra = entra.gsub "9", "----- "
    puts "O morse da frase é"
    puts entra
end

def morse_pt()
    puts "Digita uma frase qlqr em morse"
    entra = gets.delete("\n")
    for k in entra.delete(" ").chars
        if !(k == "." || k == "-" || k == "/")
            morse_pt()
        end
    end
    entra = entra.split
    for k in 0...(entra.length)
        if entra[k] == ".-"
            entra[k] = "A"
        elsif entra[k] == "-..."
            entra[k] = "B"
        elsif entra[k] == "-.-."
            entra[k] = "C"
        elsif entra[k] == "-.."
            entra[k] = "D"
        elsif entra[k] == "."
            entra[k] = "E"
        elsif entra[k] == "..-."
            entra[k] = "F"
        elsif entra[k] == "--."
            entra[k] = "G"
        elsif entra[k] == "...."
            entra[k] = "H"
        elsif entra[k] == ".."
            entra[k] = "I"
        elsif entra[k] == ".---"
            entra[k] = "J"
        elsif entra[k] == "-.-"
            entra[k] = "K"
        elsif entra[k] == ".-.."
            entra[k] = "L"
        elsif entra[k] == "--"
            entra[k] = "M"
        elsif entra[k] == "-."
            entra[k] = "N"
        elsif entra[k] == "---"
            entra[k] = "O"
        elsif entra[k] == ".--."
            entra[k] = "P"
        elsif entra[k] == "--.-"
            entra[k] = "Q"
        elsif entra[k] == ".-."
            entra[k] = "R"
        elsif entra[k] == "..."
            entra[k] = "S"
        elsif entra[k] == "-"
            entra[k] = "T"
        elsif entra[k] == "..-"
            entra[k] = "U"
        elsif entra[k] == "...-"
            entra[k] = "V"
        elsif entra[k] == ".--"
            entra[k] = "W"
        elsif entra[k] == "-..-"
            entra[k] = "X"
        elsif entra[k] == "-.--"
            entra[k] = "Y"
        elsif entra[k] == "--.."
            entra[k] = "Z" 
        elsif entra[k] == ".----"
            entra[k] = "0" 
        elsif entra[k] == "..---"
            entra[k] = "1"
        elsif entra[k] == "...--"
            entra[k] = "2" 
        elsif entra[k] == "....-"
            entra[k] = "3"
        elsif entra[k] == "....."
            entra[k] = "4"
        elsif entra[k] == "-...."
            entra[k] = "5"
        elsif entra[k] == "--..."
            entra[k] = "6"
        elsif entra[k] == "---.."
            entra[k] = "7"
        elsif entra[k] == "----."
            entra[k] = "8"
        elsif entra[k] == "-----"
            entra[k] = "9"
        elsif entra[k] == "--..--"
            entra[k] = ","
        elsif entra[k] == ".-.-.-"
            entra[k] = "."
        elsif entra[k] == "..--.."
            entra[k] = "?"
        elsif entra[k] == "-...-"
            entra[k] = "="
        end
    end
    puts "A palavra é"
    for k in (0...(entra.size))
        print entra[k] +" "
    end
end

pt_morse()
morse_pt()