//
//  Instrutor.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class Instrutor: Pessoa {
    private let especialidade: String
    
    public init(nome: String, email: String, especialidade: String) {
        self.especialidade = especialidade
        super.init(nome: nome, email: email)
    }
    
    public override func getDescricao() -> String {
        let stringFormatada = "\(super.getDescricao())\nEspecialidade: \(especialidade)"
        return stringFormatada
    }
}

