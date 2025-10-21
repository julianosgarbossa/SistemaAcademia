//
//  Aluno.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class Aluno: Pessoa {
    private var matricula: String
    private var nivel: NivelAluno = .iniciante
    public private(set) var plano: Plano
    
    public init(nome: String, email: String, matricula: String, plano: Plano) {
        self.matricula = matricula
        self.plano = plano
        super.init(nome: nome, email: email)
    }
    
    public override func getDescricao() -> String {
        let stringFormatada = "\(super.getDescricao())\nMatricula: \(matricula)\nPlano: \(plano.nome)"
        return stringFormatada
    }
}

