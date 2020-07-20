//
//  Mazda3Mini.swift
//  POO
//
//  Created by R.Fuentes on 2/20/19.
//  Copyright © 2019 R.Fuentes. All rights reserved.
//

import Foundation

class Mazda3Mini: Mazda3 {
    var porcentajeCarga:Int = 50
    
    func recargar() {
        porcentajeCarga = 100
        print("El auto ha sido cargado")
    }
}
