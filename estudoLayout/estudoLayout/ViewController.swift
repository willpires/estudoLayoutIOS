//
//  ViewController.swift
//  estudoLayout
//
//  Created by william pires on 02/10/21.
//

import UIKit
import MaterialComponents

class ViewController:UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        configuraCell()
      }
    
    func configuraCell(){
        tableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
        tableView.backgroundColor =  UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }

}
    
extension ViewController :UITableViewDataSource {
        
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sessaoDeViagens?[section].numeroDeLinhas ?? 0
        }
        
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->UITableViewCell {
          
    let cell = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as! ViagemTableViewCell
    
    let viewModel = sessaoDeViagens?[indexPath.section]
    
    switch viewModel?.tipo {
        
    case .destaques:
        cell.configurarCelular(viewModel!.viagens[indexPath.row])
        return cell
    default:
        return UITableViewCell()
    }
        
}
     
}
    
extension ViewController: UITableViewDelegate {
    
func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("tableViewHeader", owner: self)?.first as? tableViewHeader
        headerView?.configuracaoView()
        return headerView
    }
    
func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }

func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    
}
    
}



