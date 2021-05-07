class Salario
    def initialize (vendas)
      @salario = 1000
      @bonus = lambda{|salario| salario * 0.2}
      @vendas = vendas
    end
    
    def calcular_salario_com_bonus
      if @vendas > 10
        (@bonus.call @salario) + @salario
      end
    end
  end
  
  x = Salario.new 11
  puts x.calcular_salario_com_bonus
  