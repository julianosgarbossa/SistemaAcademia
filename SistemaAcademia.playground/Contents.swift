import Foundation

class Academia {
    
    let nome: String
    var alunosMatriculados: [String: Aluno] = [:]
    var instrutoresContratados: [String: Instrutor] = [:]
    var aparelhos: [Aparelho] = []
    var aulasDisponiveis: [Aula] = []
    
    init(nome: String) {
        self.nome = nome
    }
    
    func adicionarAparelho(aparelho: Aparelho) {
        aparelhos.append(aparelho)
    }
    
    func adicionarAula(aula: Aula) {
        aulasDisponiveis.append(aula)
    }
    
    func contratarInstrutor(instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }
    
    func matricularAluno(aluno: Aluno) {
        if alunosMatriculados[aluno.matricula] != nil {
            print("Erro! Aluno com matrícula: \(aluno.matricula) já está matriculado")
        } else {
            alunosMatriculados[aluno.matricula] = aluno
            print("Aluno matriculado com sucesso!")
        }
    }
    
    func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(aluno: novoAluno)
        return novoAluno
    }
    
    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        return alunosMatriculados[matricula]
    }
    
    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        
        if alunosMatriculados.isEmpty {
            print("Nenhum aluno matriculado")
        } else {
            let alunosOrdenados = alunosMatriculados.values.sorted { $0.nome < $1.nome }
            
            for aluno in alunosOrdenados {
                print(aluno.getDescricao())
            }
        }
        
        print("--------- Rodapé ---------")
    }
    
    func listarAulas() {
        print("--- Lista de Aulas Disponíveis ---")
        
        if aulasDisponiveis.isEmpty {
            print("Nenhuma aula disponível.")
        } else {
            for aula in aulasDisponiveis {
                print(aula.getDescricao())
            }
        }
        
        print("--------- Rodapé ---------")
    }
}


// ------ TESTE DA CLASSE ACADEMIA ------

// 1. Criar a academia
let academia = Academia(nome: "SmartFit")
print("Academia \(academia.nome) criada!\n")

// 2. Adicionar aparelhos
let aparelho1 = Aparelho(nomeItem: "Esteira")
let aparelho2 = Aparelho(nomeItem: "Supino")
let aparelho3 = Aparelho(nomeItem: "Leg Press")

academia.adicionarAparelho(aparelho: aparelho1)
academia.adicionarAparelho(aparelho: aparelho2)
academia.adicionarAparelho(aparelho: aparelho3)
print("Lista de Aparelhos:")
print("\(academia.aparelhos[0].nomeItem)")
print("\(academia.aparelhos[1].nomeItem)")
print("\(academia.aparelhos[2].nomeItem)\n")

// 2. Adicionar aulas
let instrutor = Instrutor(nome: "Renato Cariani", email: "renatocariani@gmail.com", especialidade: "Hipertrofia")
let plano = PlanoMensal()
let aluno = Aluno(nome: "Juliano Sgarbossa", email: "julianosgarbossa@gmail.com", matricula: "Paga", plano: plano)
let aula1 = AulaPersonal(nome: "Aula Hipertrofia Personal", instrutor: instrutor, aluno: aluno)
academia.adicionarAula(aula: aula1)
academia.listarAulas()
