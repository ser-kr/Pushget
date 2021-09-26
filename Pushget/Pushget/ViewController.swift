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
    @IBAction func get(_ sender: Any) {
        AF.request("http://numbersapi.com/random/year").responseString { response in
                    debugPrint("Response: \(response)")
                    if response.error == nil {
                        self.label.text = response.value
                    } else {
                        self.label.text = "Error"
                    }
                }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
    }


}

