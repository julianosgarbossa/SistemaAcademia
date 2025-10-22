//
//  AulaColetiva.swift
//  Created by Juliano Sgarbossa on 22/10/25.
//

public class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private let capacidadeMaxima: Int
    
    public init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int = 25) {
        self.capacidadeMaxima = capacidadeMaxima
        super.init(nome: nome, instrutor: instrutor)
    }
    
    public func inscrever(aluno: Aluno) -> Bool {
        if alunosInscritos.count >= capacidadeMaxima {
            print("Capacidade máxima atingida")
            return false
        }
        
        if alunosInscritos[aluno.matricula] != nil {
            print("Aluno \(aluno.nome) já está inscrito")
            return false
        }
        
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) inscrito")
        return true
    }
    
    public override func getDescricao() -> String {
        let vagasDisponiveis = capacidadeMaxima - alunosInscritos.count
        let stringFormatada = "\(super.getDescricao())\nInscritos: \(alunosInscritos.count)/\(capacidadeMaxima)\nVagas: \(vagasDisponiveis)"
        return stringFormatada
    }
}

