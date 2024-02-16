require_relative 'conta'


class ContaCorrente < Conta
    attr_accessor :limite

    def initialize(numero, titular, saldo, limite)
        super(numero, titular, saldo) ## O supér roda o pai initialize do pai
        @limite = limite
    end


    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
        elsif (saldo + limite) >= valor
            puts "Saldo insuficiente, será utilizado o limite da conta para seguir, você tem certeza?"
            returnCliente  = gets.chomp
            if returnCliente == "Sim"
                diferenca = valor - saldo
                self.saldo -= valor
                self.limite -= diferenca
            else
                puts "Operação cancelada com sucesso"
            end

        end
    end



end