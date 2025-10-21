//
//  PlanoMensal.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class PlanoMensal: Plano {
    
    public init() {
        super.init(nome: "Plano Mensal")
    }
    
    public override func calcularMensalidade() -> Double {
        return 120.0
    }
}

