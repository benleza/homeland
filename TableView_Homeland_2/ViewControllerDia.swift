//
//  ViewControllerDia.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 21/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//

import UIKit

var postDia = ["post1", "post2"]
var myIndex2 = 0

class ViewControllerDia:  UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var images = ["fotinho"]
    var diaSelecionado = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(postDia.count)

    }
   
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = UITableViewCell (style: UITableViewCellStyle.default, reuseIdentifier: "cell2")
            cell2.textLabel?.text = postDia[indexPath.row]
            return(cell2)
    }
    
    func tableView( _ tableView:UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex2 = indexPath.row
        performSegue(withIdentifier: "segue2", sender: self)
    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 print("dia" + diaSelecionado)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
