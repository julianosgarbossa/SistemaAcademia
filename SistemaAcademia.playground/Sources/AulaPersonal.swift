//
//  AulaPersonal.swift
//  Created by Juliano Sgarbossa on 22/10/25.
//

public class AulaPersonal: Aula {
    
    private let aluno: Aluno
    
    public init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.aluno = aluno
        super.init(nome: nome, instrutor: instrutor)
    }
    
    public override func getDescricao() -> String {
        let stringFormatada = "\(super.getDescricao())\nAluno: \(aluno.nome)"
        return stringFormatada
    }
}
