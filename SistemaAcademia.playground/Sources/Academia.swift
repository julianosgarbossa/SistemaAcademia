//
//  Academia.swift
//  Created by Juliano Sgarbossa on 24/10/25.
//

public class Academia {
    
    public let nome: String
    public var alunosMatriculados: [String: Aluno] = [:]
    public var instrutoresContratados: [String: Instrutor] = [:]
    public var aparelhos: [Aparelho] = []
    public var aulasDisponiveis: [Aula] = []
    
    public init(nome: String) {
        self.nome = nome
    }
    
    public func adicionarAparelho(aparelho: Aparelho) {
        aparelhos.append(aparelho)
    }
    
    public func adicionarAula(aula: Aula) {
        aulasDisponiveis.append(aula)
    }
    
    public func contratarInstrutor(instrutor: Instrutor) {
        instrutoresContratados[instrutor.email] = instrutor
    }
    
    public func matricularAluno(aluno: Aluno) {
        if alunosMatriculados[aluno.matricula] != nil {
            print("Erro! Aluno com matrícula: \(aluno.matricula) já está matriculado")
        } else {
            alunosMatriculados[aluno.matricula] = aluno
            print("Aluno matriculado com sucesso!")
        }
    }
    
    public func matricularAluno(nome: String, email: String, matricula: String, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, plano: plano)
        matricularAluno(aluno: novoAluno)
        return novoAluno
    }
    
    public func buscarAluno(porMatricula matricula: String) -> Aluno? {
        return alunosMatriculados[matricula]
    }
    
    public func listarAlunos() {
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
    
    public func listarAulas() {
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

extension Academia {
    public func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        let totalAlunos = alunosMatriculados.count
        let totalInstrutores = instrutoresContratados.count
        let totalAulas = aulasDisponiveis.count
        
        return (totalAlunos: totalAlunos, totalInstrutores: totalInstrutores, totalAulas: totalAulas)
    }
}
