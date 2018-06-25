//
//  ViewController.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 21/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewTop: UITableView!
    
    var dias = ["Dia1", "Dia2", "Dia3", "Dia5", "Dia5"]
    var myIndex = 0
    
    override func viewDidLoad() {
        tableViewTop.separatorColor = UIColor(white:0.95, alpha:1)
        super.viewDidLoad()
        tableViewTop.dataSource = self
        tableViewTop.delegate = self
        //   setupTableView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
  // UI TableView Data Source (Protocolo)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(dias.count)
    }
        //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = dias[indexPath.row]
        cell.contentView.backgroundColor = UIColor(white:0.95, alpha:1)
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
       //Passar tela
    // UI Table View Delegate (Protocolo)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewControllerDia {
            destino.diaSelecionado = dias[myIndex]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
