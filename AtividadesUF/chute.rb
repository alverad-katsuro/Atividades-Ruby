segredo = 42

puts "Digite o valor do chute"
chute = gets
chute = chute.to_i

if chute == segredo
    puts "Você acertou"
else
    puts "Errou"
end