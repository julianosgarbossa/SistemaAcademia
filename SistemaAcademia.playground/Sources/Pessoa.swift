//
//  Pessoa.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class Pessoa {
    private let nome: String
    private var email: String
    
    public init(nome: String, email: String) {
        self.nome = nome
        self.email = email
    }
    
    public func getDescricao() -> String {
        let stringFormatada = nome + " " + email
        return stringFormatada
    }
}

