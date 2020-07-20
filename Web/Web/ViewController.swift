//
//  ViewController.swift
//  Web
//
//  Created by R.Fuentes on 7/19/20.
//  Copyright © 2020 R.Fuentes. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

        var webView: WKWebView!
    
    //@IBOutlet weak var WebView: WKWebView!
    
    override func loadView() {
         let webConfiguration = WKWebViewConfiguration()
         webView = WKWebView(frame: .zero, configuration: webConfiguration)
         webView.uiDelegate = self
         view = webView
     }
     override func viewDidLoad() {
         super.viewDidLoad()
         
         let myURL = URL(string:"https://www.apple.com")
         let myRequest = URLRequest(url: myURL!)
        // webView.load(myRequest)
        
        let tarea = URLSession.shared.dataTask(with: myURL!){datos,respuesta,error in
            if error == nil {
                let datosString = NSString(data:datos!,encoding: String.Encoding.utf8.rawValue)
                print(datosString!)
            }else {
                print(error!)
            }
            
            
        }
        tarea.resume()
     }

}

