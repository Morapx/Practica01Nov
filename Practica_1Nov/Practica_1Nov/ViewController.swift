//
//  ViewController.swift
//  Practica_1Nov
//
//  Created by Alumno on 11/1/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var datos : [Datos] = []
    
    @IBOutlet weak var tvTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! celdadecontactos
        celda.lblNombre.text = datos[indexPath.row].nombre
        celda.lblCorreo.text = datos[indexPath.row].correo
        celda.lblNumero.text = datos[indexPath.row].nunmero
        
        return celda
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.title = "listano se que"
    }


}

