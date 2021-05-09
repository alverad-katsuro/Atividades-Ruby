def txt_to_hash(endereco = "test.txt")
    arquivo = File.new(endereco, "r")
    linhas = arquivo.readlines
    arquivo.close
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



#Quantos bytes são necessários para armazenar o seguinte array: [1,2,3,4]. Justifique sua resposta.
# Não há metodos especificos para ver o tamanho do array, porém individualmente seria
x = 0
[1,2,3,4].map {|v| x += (v.bit_length)}

#x = 8 bits ou 1 byte
#Obs: o tamanho do array é igual a soma dos objetos nele, ou seja, a soma do tamanho de cada item. 