linhas = File.open("boletim-covid-21-04-2021.csv").readlines
linhas.map! {|l| l.chomp.split(",")}
linha_zero = linhas[0]
linha_zero.map! {|x| x.to_sym}
colunas = []
linhas.delete_at 0
for col in 0...(linhas[0].size) # é tomado por base que o banco de dados tem a mesma quantidade de colunas
    colunas.append([]) # adiciona uma coluna para cada coluna do banco
    for lin in 0...(linhas.size)
        colunas[col].append(linhas[lin][col])
    end
end
matriz = Hash[linha_zero.zip(colunas)]
matriz[:deaths].map! {|values| (values.to_i)}
matriz[:confirmed].map! {|values| (values.to_i)}
matriz[:vaccination].map! {|values| (values.to_i)}
total_deaths = matriz[:deaths].sum
total_confirmed = matriz[:confirmed].sum
total_vaccnination = matriz[:vaccination].sum
def busca_max(coluna, matriz)
    state = []
    max_array = matriz[coluna].max(3)
    for max in max_array
        index = ((matriz[coluna]).index(max)) 
        state.append(matriz[:state][index])
    end
    return state
end

def busca_min(coluna, matriz)
    state = []
    min_array = matriz[coluna].min(3)
    for min in min_array
        index = ((matriz[coluna]).index(min)) 
        state.append(matriz[:state][index])
    end
    return state
end

puts "Estados com maior número de vacinados --> #{busca_max(:vaccination, matriz)}", "Estados com menor número de vacinados --> #{busca_min(:vaccination, matriz)}"
puts "Estados com maior número de casos confirmados --> #{busca_max(:confirmed, matriz)}", "Estados com menor número de casos confirmados --> #{busca_min(:confirmed, matriz)}"
puts "Estados com mais obitos --> #{busca_max(:deaths, matriz)}", "Estados com menos obitos --> #{busca_min(:deaths, matriz)}"
puts "Total de Vacinados #{total_vaccnination}", "Total de Casos Confirmados #{total_confirmed}", "Total de Mortes #{total_deaths}"
