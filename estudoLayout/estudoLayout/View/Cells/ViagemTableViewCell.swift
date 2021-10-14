//
//  ViagemTableViewCell.swift
//  estudoLayout
//
//  Created by william pires on 13/10/21.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {
   
    @IBOutlet weak var backgroundViewCell: UIView!
    
    @IBOutlet weak var viagemImagem: UIImageView!
    
    @IBOutlet weak var tituloViagemLabel: UILabel!
    
    @IBOutlet weak var subTitulo: UILabel!
    
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    
    @IBOutlet weak var statusCancelamentoLabel: UILabel!
    
    func configurarCelular(_ viagem:Viagem?){
        viagemImagem.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subTitulo.text = viagem?.subtitulo
        precoViagemLabel.text = "R$\(viagem?.preco)"
        
        let atributoString:NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto)")
        
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value:1 , range: NSMakeRange(0, atributoString.length))
        
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numeroDeDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
            let diarias = numeroDeDias == 1 ? "Diarias":"Diarias"
            let hospedes = numeroDeHospedes == 1 ?"Pessoa":"Pessoas"
            diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        
        
        
    }
    
}
