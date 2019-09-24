//
//  ViewController.swift
//  UserDefaults-Lab
//
//  Created by Angela Garrovillas on 9/24/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var noDefaultView: UIView!

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if let text = nameTextField.text {
            
        }
    }
    
    private func getDateFromPicker() -> (month: String, day: String) {
        let month = datePicker.date.description.components(separatedBy: "-")[1]
        let day = datePicker.date.description.components(separatedBy: "-")[2]
        return (month,day)
        //example: 2019-09-24
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignFirstResponder()
        return true
    }
}
