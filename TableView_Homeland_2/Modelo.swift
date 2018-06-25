//
//  Modelo.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 25/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//
import UIKit
import Foundation

struct Post {
    var texto:String
    var foto: UIImage
    var tag: [String]
    //var tags = ["Português", "Matemática", "Ciências", "Religião", "Atividades Domésticas"]
}

struct Dia {
    var data: String
    var postagem: [Post] = []
}
