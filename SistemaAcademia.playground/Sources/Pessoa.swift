//
//  Pessoa.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class Pessoa {
    public let nome: String
    private let email: String
    
    public init(nome: String, email: String) {
        self.nome = nome
        self.email = email
    }
    
    public func getDescricao() -> String {
        let stringFormatada = "Nome: \(nome)\nEmail: \(email)"
        return stringFormatada
    }
}

