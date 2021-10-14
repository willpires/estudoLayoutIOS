//
//  ViagemViewModel.swift
//  estudoLayout
//
//  Created by william pires on 13/10/21.
//

import Foundation

enum ViagemViewModelType:String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo:ViagemViewModelType { get }
    var viagens:[Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
