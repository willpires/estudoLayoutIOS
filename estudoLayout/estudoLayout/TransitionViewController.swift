//
//  TransitionViewController.swift
//  estudoLayout
//
//  Created by william pires on 03/10/21.
//

import Foundation

import UIKit
import Material

class TransitionViewController: UIViewController {
    fileprivate var fabButton: FABButton!
    
    
    let v1 = UIView()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.blue.base
        
        v1.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        v1.motionIdentifier = "v1"
        v1.backgroundColor = .green
        view.addSubview(v1)
        
        prepareNavigationItem()
    }
}

fileprivate extension TransitionViewController {
    func prepareNavigationItem() {
        navigationItem.titleLabel.text = "New Title"
        navigationItem.detailLabel.text = "Transitioned View"
    }
}
