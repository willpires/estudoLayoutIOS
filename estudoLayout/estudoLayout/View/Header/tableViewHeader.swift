//
//  tableViewHeader.swift
//  estudoLayout
//
//  Created by william pires on 03/10/21.
//

import UIKit

class tableViewHeader: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var imagemView: UIImageView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerView: UIView!
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    func configuracaoView(){
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]

    }

}
