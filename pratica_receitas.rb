INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3


def bem_vindo()
    puts "Bem-Vindo a sua rede social de receitas! "
end


def menu() 
    puts "Escolha uma opção: "
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas receitas"
    puts "[#{SAIR}] Sair"   

    return gets.to_i
end

def inserir_receita()
         
    puts "Digite o nome da receita: "
    receita_nome = gets.chomp()
    puts "Digite o tipo da receita"
    tipo_receita = gets.chomp()
    puts
    puts "Receita #{receita_nome} cadastrada com sucesso"
    puts
    return { nome: receita_nome, tipo: tipo_receita }
end


def imprimir_receitas(receitas)
    puts "============== Receitas cadastradas: ============="

        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
        if receitas.empty?
            puts "Nenhuma receita cadastrada até o momento"
        end
end

bem_vindo()

receitas = []


option = menu()

loop do  
    if (option == INSERIR_RECEITA)      
        receitas << inserir_receita()

    elsif (option == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)

    elsif (option == SAIR)
        break

    else 
        puts "Opção invalida, escolha um número de 1 a 3!"
         
    end
    option = menu()
end


puts
puts "Até logo"