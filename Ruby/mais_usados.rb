#Atividade: faça um programa que receba uma lista de projetos JavaScript hospedados no Github. Verifique quais são as 5 dependências mais utilizadas por esses projetos.

require 'json'
require 'open-uri'
endereco4 = ["https://raw.githubusercontent.com/surmon-china/vue-video-player/master/package.json"]

endereco = ["https://raw.githubusercontent.com/airbnb/javascript/master/package.json", 
            "https://raw.githubusercontent.com/vuejs/vue/dev/package.json",
            "https://raw.githubusercontent.com/surmon-china/vue-video-player/master/package.json",
            "https://raw.githubusercontent.com/vuejs/vuejs.org/master/package.json",
            "https://github.com/coderwhy/supermall/blob/master/package.json"
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
    File.open("vamove.txt") do |file|
        file.each_line do |lines|
            print JSON.parse(lines, {symbolize_names: true})
        end
end

