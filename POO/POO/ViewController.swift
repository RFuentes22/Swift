//
//  ViewController.swift
//  POO
//
//  Created by R.Fuentes on 2/19/19.
//  Copyright © 2019 R.Fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitulo: UILabel!
    
    var objectMazda3Mini:Mazda3Mini?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelTitulo.text = "Fábrica de Automóviles"
    }


    @IBAction func crearObject(_ sender: UIButton) {
        objectMazda3Mini = Mazda3Mini()
        print("Object created")
    }
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        if objectMazda3Mini != nil {
            print("El carro Mazda 3 es de tamaño \(objectMazda3Mini!.tamaño), tiene \(objectMazda3Mini!.numPuertas) puertas, su color es \(objectMazda3Mini!.color) y su precio es de \(objectMazda3Mini!.precio) y su porcentaje de carga es: \(objectMazda3Mini!.porcentajeCarga)")
        }
        else {
            print("El objecto aun no ha sido creado")
        }
    }
    
    @IBAction func encender(_ sender: UIButton) {
        
        if objectMazda3Mini != nil {
            objectMazda3Mini!.encender()
        }
        else {
            print("El objecto aun no ha sido creado")
        }
    }
    
    @IBAction func acelerar(_ sender: UIButton) {
        
        if objectMazda3Mini != nil {
            objectMazda3Mini!.acelerar()
        }
        else {
            print("El objecto aun no ha sido creado")
        }

    }
    
    
    @IBAction func recargar(_ sender: UIButton) {
        if objectMazda3Mini != nil {
            objectMazda3Mini!.recargar()
        }
        else {
            print("El objecto aun no ha sido creado")
        }
        
    }
    
    
    
}

