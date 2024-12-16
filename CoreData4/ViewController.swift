//
//  ViewController.swift
//  CoreData4
//
//  Created by user@59 on 16/12/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtnTapped(_ sender: Any) {
        
        let dict = ["name":txtName.text, "address":txtAddress.text, "city":txtCity.text, "mobile":txtMobile.text]
        DatabaseHelper.sharedInstance.save(object: dict as! [String:String])
        
    }
    
}

