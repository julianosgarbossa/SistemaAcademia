import Foundation

// Testando o Sistema da Academia:

// Classe Pessoa
print("Classe Pessoa:")
let julianoPessoa: Pessoa = Pessoa(nome: "Juliano", email: "contato.julianosgarbossa@gmail.com")
print(julianoPessoa.getDescricao())
print("--------------------------------------------")


// Classe Aluno
print("Classe Aluno:")
let julianoAluno: Aluno = Aluno(nome: "Juliano", email: "contato.julianosgarbossa@gmail.com", matricula: "Paga", plano: PlanoMensal())
print(julianoAluno.getDescricao())
print(julianoAluno.plano.nome)
print("--------------------------------------------")

// Classe Instrutor
print("Classe Instrutor:")
let julianoInstrutor: Instrutor = Instrutor(nome: "Juliano", email: "contato.julianosgarbossa@gmail.com", especialidade: "Hipertrofia Muscular")
print(julianoInstrutor.getDescricao())
print("--------------------------------------------")

// Classe Plano
print("Classe Plano:")
let plano: Plano = Plano(nome: "Plano Mensal")
print(plano.calcularMensalidade())
print("--------------------------------------------")

// Classe PlanoMensal
print("Classe PlanoMensal:")
let planoMensal: PlanoMensal = PlanoMensal()
print(planoMensal.calcularMensalidade())
print("--------------------------------------------")

// Classe PlanoAnual
print("Classe PlanoAnual:")
let planoAnual: PlanoAnual = PlanoAnual()
print(planoAnual.calcularMensalidade())
print("--------------------------------------------")
