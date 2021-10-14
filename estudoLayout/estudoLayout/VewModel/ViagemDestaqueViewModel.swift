//
//  ViagemDestaqueViewModel.swift
//  estudoLayout
//
//  Created by william pires on 13/10/21.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel{
    
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(_ viagens:[Viagem]) {
        self.viagens = viagens
    }
    
    
}
