//
//  Modelo.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 25/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//
import UIKit
import Foundation

class Post {
    var texto:String
    var foto: UIImage
    var tag: [String] = []
    //var tags = ["Português", "Matemática", "Ciências", "Religião", "Atividades Domésticas"]
    
    init(textoInit: String, fotoInit: UIImage, tagInit: [String]) {
        self.texto = textoInit
        self.foto = fotoInit
        self.tag = tagInit
    }
    
    init(textoInit: String, fotoInit: UIImage) {
        self.texto = textoInit
        self.foto = fotoInit
    }
    
}

struct Dia {
    var data: String
    var postagem: [Post] = []
}


// var umPost = Post(texto: <#T##String#>, foto: <#T##UIImage#>, tag: <#T##[String]#>)
// var outroPost = Post(textoInit: <#T##String#>, fotoInit: <#T##UIImage#>)

// Falta 1 Init
 
