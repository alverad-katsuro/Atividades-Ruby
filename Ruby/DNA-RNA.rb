# 1) O DNA é uma string cujo alfabeto contém os seguintes símbolo: "A", "C", "G" e "T". Dado um DNA, calcule a ocorrência de cada símbolo. Imprima cada ocorrência separado por um espaço.
# Entrada: "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

dna = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"

a = dna.count("A")
g = dna.count("G")
c = dna.count("C")
t = dna.count("T")

puts ("#{a} #{c} #{g} #{t}")



#Um RNA é uma string formada de um alfabeto contendo os símbolos "A", "C", "G" e "U". Dado uma string de RNA, sua transcrição é feita através da substituição de todas ocorrências de “T” em para “U”. Transcreva o RNA a seguir: 
#"GATGGAACTTGACTACGTAAATT".

dna = "GATGGAACTTGACTACGTAAATT"
rna = ""

for k in 0..(dna.size)
    if dna[k] == "A" then rna = rna + "U"
    elsif dna[k] == "T" then rna = rna + "A"
    elsif dna[k] == "C" then rna = rna + "G"
    else rna = rna + "C"
    end
end
puts "A fita de RNA é #{rna}"