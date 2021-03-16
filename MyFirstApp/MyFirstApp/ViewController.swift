//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 堀田優介 on 2021/04/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func ChangeLabel(_ sender: Any) {
        myLabel.text = "You changed me!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

