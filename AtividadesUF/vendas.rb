class Salario
    def initialize (vendas)
      @salario = 1000
      @bonus = lambda{|salario| salario * 0.2}
      @vendas = vendas
    end
    
    def calcular_bonus
      if @vendas > 10
        "id: #{@bonus.object_id} Proc: #{@bonus}"
      else
        bonus = 0
      end
    end

    def salario_final
        @salario + calcular_bonus()
    end
end

if caller.length == 0
    x = Salario.new 11
    puts x.calcular_bonus
end