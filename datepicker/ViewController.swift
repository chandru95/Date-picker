//
//  ViewController.swift
//  datepicker
//
//  Created by Ragulkumar K V on 04/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
        
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
        datepicker.addTarget(self, action: #selector(dateChange(datepicker:)), for: UIControl.Event.valueChanged)
        datepicker.frame.size  = CGSize(width: 0, height: 300)
        datepicker.preferredDatePickerStyle = .wheels
    
        textfield.inputView = datepicker
        textfield.text = formatter(date: Date())
        
    }
    @objc func dateChange(datepicker:UIDatePicker){
        textfield.text = formatter(date: datepicker.date)
    }
    
       func formatter(date : Date) ->String {
        let formater = DateFormatter()
        formater.dateFormat = "MMMM dd yyy"
           self.view.endEditing(true)
        return formater.string(from: date)
        
    }
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
}
