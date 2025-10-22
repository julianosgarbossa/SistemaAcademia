//
//  Manutencao.swift
//  Created by Juliano Sgarbossa on 22/10/25.
//

public protocol Manutencao {
    var nomeItem: String {get set}
    var dataUltimaManutencao: String {get}
    func realizarManutencao() -> Bool
}
