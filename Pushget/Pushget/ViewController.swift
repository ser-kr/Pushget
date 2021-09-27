//
//  ViewController.swift
//  Pushget
//
//  Created by SK on 26.09.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBAction func getFact(_ sender: Any) {
        AF.request("http://numbersapi.com/random/year").responseString { response in
            if response.error == nil {
                self.label.text = response.value
            } else {
                self.label.text = "Error \(String(reflecting: response.error))"
            }
        }
    }
}

