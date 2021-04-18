def txt_to_hash(endereco = "test.txt")
    arquivo = File.new(endereco, "r")
    linhas = arquivo.readlines
    palavras = linhas.map {|lines| lines.chomp.downcase.split}
    palavras_diferentes = []
    qt_palavras = 0
    for linhas in palavras
        qt_palavras += linhas.size.to_i
        for palavras in linhas
            palavras_diferentes.append(palavras)
        end
    end
    palavras = palavras_diferentes
    palavras_diferentes = palavras_diferentes.uniq
    dict_palavras = {}
    for k in palavras_diferentes
        dict_palavras.store(k, (palavras.count k)) 
    end
    puts qt_palavras
    puts dict_palavras
end
    
txt_to_hash()