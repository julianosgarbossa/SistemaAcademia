//
//  Aparelho.swift
//  Created by Juliano Sgarbossa on 22/10/25.
//

public class Aparelho: Manutencao {
    
    public var nomeItem: String
    public private(set) var dataUltimaManutencao: String = "Nenhuma"
    
    public init(nomeItem: String) {
        self.nomeItem = nomeItem
    }
    
    public func realizarManutencao() -> Bool {
        print("Iniciando manutenção do aparelho: \(nomeItem)")
        print("Manutenção concluída com sucesso!")
        dataUltimaManutencao = "22/10/2025"
        return true
    }
}
