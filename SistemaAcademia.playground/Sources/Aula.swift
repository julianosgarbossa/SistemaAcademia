//
//  Aula.swift
//  Created by Juliano Sgarbossa on 22/10/25.
//

public class Aula {
    private var nome: String
    private var instrutor: Instrutor
    
    public init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }
    
    public func getDescricao() -> String {
        let stringFormatada = "Nome da Aula: \(nome)\nInstrutor: \(instrutor.nome)"
        return stringFormatada
    }
}
