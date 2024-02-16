require_relative 'cliente'

class Conta
    attr_reader :numero, :titular, :saldo
    attr_accessor :saldo
    
    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    ## Self.saldo == @saldo - self mesma função que @
    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
        else
            puts "Saldo insuficiente para realizar transação"
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        if sacar(valor)
            conta_destino.depositar(valor)
        else
            ## Já existe um puts no @saque que já esta me retornando uma mensagem de erro
        end
    end

 
end