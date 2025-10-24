import Foundation

// ------ SIMULAÇÃO DO SISTEMA DA ACADEMIA ------

let academia: Academia = Academia(nome: "Academia POO 360")
let planoMensal: PlanoMensal = PlanoMensal()
let planoAnual: PlanoAnual = PlanoAnual()
let instrutor1: Instrutor = Instrutor(nome: "Renato", email: "renato@gmail.com", especialidade: "Musculação")
let instrutor2: Instrutor = Instrutor(nome: "Rafael", email: "rafael@gmail.com", especialidade: "Funcional")

academia.contratarInstrutor(instrutor: instrutor1)
academia.contratarInstrutor(instrutor: instrutor2)

let alunoJuliano: Aluno = academia.matricularAluno(nome: "Juliano", email: "juliano@gmail.com", matricula: "2025001", plano: planoMensal)
let alunaJanile: Aluno = academia.matricularAluno(nome: "Janile", email: "janile@gmail.com", matricula: "2025002", plano: planoAnual)

let aulaPersonal: AulaPersonal = AulaPersonal(nome: "Aula Musculação", instrutor: instrutor1, aluno: alunoJuliano)
let aulaColetiva: AulaColetiva = AulaColetiva(nome: "Aula Funcional", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aula: aulaPersonal)
academia.adicionarAula(aula: aulaColetiva)

aulaColetiva.inscrever(aluno: alunoJuliano)
aulaColetiva.inscrever(aluno: alunaJanile)

let alunaPaula: Aluno = academia.matricularAluno(nome: "Paula", email: "paula@gmail.com", matricula: "2025003", plano: planoMensal)

aulaColetiva.inscrever(aluno: alunaPaula)

let alunaAlana: Aluno = academia.matricularAluno(nome: "Alana", email: "alana@gmail.com", matricula: "2025004", plano: planoAnual)

aulaColetiva.inscrever(aluno: alunaAlana)

academia.listarAulas()
academia.listarAlunos()

let todasAsAulas: [Aula] = [aulaPersonal, aulaColetiva]

for aula in todasAsAulas {
    print(aula.getDescricao())
}

let todasAsPessoa: [Pessoa] = [alunoJuliano, instrutor1, alunaJanile, instrutor2]

for pessoa in todasAsPessoa {
    print(pessoa.getDescricao())
}

let relatorio = academia.gerarRelatorio()
print("-------- Relatório --------")
print("Alunos Matriculados: \(relatorio.totalAlunos)")
print("Instrutores Contratados: \(relatorio.totalInstrutores)")
print("Aulas Disponíveis: \(relatorio.totalAulas)")





