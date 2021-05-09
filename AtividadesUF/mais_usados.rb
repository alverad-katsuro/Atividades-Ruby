#Atividade: faça um programa que receba uma lista de projetos JavaScript hospedados no Github. Verifique quais são as 5 dependências mais utilizadas por esses projetos.

require 'json'
require 'open-uri'
endereco9 = ["https://raw.githubusercontent.com/coderwhy/supermall/master/package.json"]

endereco = ["https://raw.githubusercontent.com/airbnb/javascript/master/package.json", 
            "https://raw.githubusercontent.com/vuejs/vue/dev/package.json",
            "https://raw.githubusercontent.com/surmon-china/vue-video-player/master/package.json",
            "https://raw.githubusercontent.com/museui/muse-ui/master/package.json",
            "https://raw.githubusercontent.com/coderwhy/supermall/master/package.json"
]
    
def cria_lista(enderecos_string)
    (enderecos_string.size).times{|x|
                                    k = ""
                                    URI.open enderecos_string[x] do |pages|
                                        pages.each_line do |linhas|
                                                k += linhas
                                        end
                                        File.open("vamove.txt", "a") do |file|
                                            file.write (((JSON.parse(k, :symbolize_names=>true))[:devDependencies]).to_json)
                                            file.write "\n"
                                        end
                                    end
                                }
end


def return_array_of_hash (endereco="vamove.txt")
    array_of_hash = []
    File.open("vamove.txt", "r") do |file|
        file.each_line do |lines|
            array_of_hash.append(JSON.parse(lines.chomp, {symbolize_names: true}))
        end
    end
    return array_of_hash
end


def compara(array_of_hash)
    hash_universe = {}
    array_of_hash.each {|lines| hash_universe.update lines}
    hash_universe.each_key {|key| hash_universe[key] = 0}
    array_of_hash.each {|lines| lines.each_key {|sym| hash_universe[sym] += 1 if hash_universe.include? sym}}
    #hash_universe.each_value {|a| p a.class}
    teste = hash_universe.sort_by {|k, v| v}.reverse
    teste = teste[1..5]
    return teste.to_h
end


def apaga_txt()
    File.open("vamove.txt", "w") do |file|
        file.write ""
    end
end


def sequencia_logica(endereco)
    cria_lista(endereco)
    array_of_hash = return_array_of_hash()
    array_more_used = compara(array_of_hash)
    puts "--------- As dependencias mais usadas são ---------"
    array_more_used.map {|x| puts [x].to_h}
    apaga_txt()
end


sequencia_logica(endereco)