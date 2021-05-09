require 'test/unit'

require_relative 'biblioteca.rb'
class TestBiblioteca < Test::Unit::TestCase
    def setup
        @livro = Livros.new "livro", "autor", "genero"
        @livro2 = Livros.new "l", "a", "g"
        @biblioteca = Biblioteca.new
        @biblioteca.adicionar_livro @livro
        @biblioteca.adicionar_livro @livro2
    end

    def test_return_autor_livro
        assert_equal ({:autor => ["livro", "genero"]}), @livro.return_autor_livro
    end

    def test_return_livro_autor
        assert_equal ({:livro => ["autor", "genero"]}), @livro.return_livro_autor
    end

    def test_output_alfa_autor
        assert_equal @biblioteca.output_alfa_autor, {:a => ["l", "g"], :autor => ["livro", "genero"]}
    end

    def test_output_alfa_livro
        assert_equal @biblioteca.output_alfa_livro, {:l => ["a", "g"], :livro => ["autor", "genero"]}
    end
end