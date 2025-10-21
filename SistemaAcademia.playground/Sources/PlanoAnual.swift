//
//  PlanoAnual.swift
//  Created by Juliano Sgarbossa on 21/10/25.
//

public class PlanoAnual: Plano {
    
    public init() {
        super.init(nome: "Plano Anual (Promocional)")
    }
    
    public override func calcularMensalidade() -> Double {
        let valorMensalComDesconto = (120.0 * 12 * (1 - 0.20)) / 12
        return valorMensalComDesconto
    }
}
