//
//  TableViewController.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 21/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dias = ["Hoje", "Dia1", "Dia2", "Dia3", "Dia4"]
    var dia = ["data1", "data2", "data3", "data4", "data5"]
    var myIndex = 0
    
    struct diaConteudo {
        var data:String
        var post:String
    }
    
    struct postagemConteudo {
        var mensagem:String
        var disciplina:String
        //arquivo - como fazer isso?
    }
    
    class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return(dias.count)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            cell.textLabel?.text = dias[indexPath.row]
            return(cell)
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndex = indexPath.row
            performSegue(withIdentifier: "segue", sender: self)
}
