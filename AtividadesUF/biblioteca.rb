class Biblioteca
    def initialize livros_object = []
        @livros_object = livros_object
    end

    def adicionar_livro livro
        @livros_object << livro
    end

    def output_alfa_autor
        livros = {}
        @livros_object.each do |object_livros|
            autor_livros = object_livros.return_autor_livro #armazena o hash_array autor_livro
            if livros.include? autor_livros.keys[0]
                livros[autor_livros.keys[0]] << autor_livros.values[0]
            else
                livros = livros.merge(autor_livros)
            end
        end
        livros = livros.sort.to_h
        livros.map do |key, value|
            puts "#{key} autor de #{value[0]} do genero #{value[1]}"
        end
        return livros
    end

    def output_alfa_livro
        livros = {}
        @livros_object.each do |object_livros|
            autor_livros = object_livros.return_livro_autor #armazena o hash_array autor_livro
            if livros.include? autor_livros.keys[0]
                livros[autor_livros.keys[0]] << autor_livros.values[0]
            else
                livros = livros.merge(autor_livros)
            end
        end
        livros = livros.sort.to_h
        livros.map do |key, value|
            puts "#{key} do autor #{value[0]} do genero #{value[1]}"
        end
        return livros
    end
end

class Livros
    def initialize (nome_do_livro, autor, genero)
        @nome_do_livro = nome_do_livro
        @autor = autor
        @genero = genero
    end

    def to_s
        "Nome do livro: #{@nome_do_livro}; Nome do autor: #{@autor}; Genêro: #{@genero}"
    end

    def return_autor_livro
        return {@autor.to_sym => [@nome_do_livro, @genero]}
    end

    def return_livro_autor
        return {@nome_do_livro.to_sym => [@autor, @genero]}
    end
end



def chama_tudo
    liv = Livros.new "Calculo", "Guidorize", "Matematica"
    liv2 = Livros.new "The Wheel of Time", "Jordan", "Ficção"
    liv3 = Livros.new "Senhor dos Aneis", "Tolkin", "Ficção"
    liv4 = Livros.new "Mar Despedacado", "N lembrooo", "Ficção"
    liv5 = Livros.new "Memórias Postumas de Brás Cubas", "Machado de Assis", "Romance"
    biblioteca = Biblioteca.new
    biblioteca.adicionar_livro liv2
    biblioteca.adicionar_livro liv3
    biblioteca.adicionar_livro liv
    biblioteca.adicionar_livro liv4
    biblioteca.adicionar_livro liv5
    system('cls')
    puts "################################"
    puts "Alfabetico - Autores\n\n"
    biblioteca.output_alfa_autor
    puts " "
    puts "################################"
    puts "Alfabetico - Livros \n\n"
    biblioteca.output_alfa_livro
end


if caller.length == 0
    chama_tudo()
end