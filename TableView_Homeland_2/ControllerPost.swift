//
//  ControllerPost.swift
//  TableView_Homeland_2
//
//  Created by Guilherme Daguir Lima Viana on 21/06/18.
//  Copyright © 2018 Guilherme Daguir Lima Viana. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class ControllerPost: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    
    
    
    
    @IBOutlet weak var caixaDeTexto: UITextView!
    
    
    
    
    @IBOutlet weak var visualizarImagem: UIImageView!
    
    @IBAction func ImportarImagem(_ sender: AnyObject) {
       
        let imagem = UIImagePickerController()
        imagem.delegate = self
        
        imagem.sourceType = UIImagePickerControllerSourceType.photoLibrary
        // ou .camera pare acessar a camera
        
        imagem.allowsEditing = false
        // permitir edicao ou nao
        
        self.present(imagem, animated: true) {
            // depois é completado
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
        {
        if let imagem = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
        visualizarImagem.image = imagem
        }
        else {
            //mensagem de erro
            
            }
            
        self.dismiss(animated: true, completion: nil)
    
    }
    
    
=======
class ControllerPost: UIViewController, UITableViewDelegate {

>>>>>>> master
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        caixaDeTexto.backgroundColor = UIColor.lightGray
        caixaDeTexto.font = UIFont.boldSystemFont(ofSize: 20)
        //caixaDeTexto.font = UIFont(name:"Verdana", size:17)
        
        
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    
    
    

}
