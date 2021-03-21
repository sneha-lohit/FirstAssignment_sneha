//
//  RegistrationViewController.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 19/03/21.
//

import UIKit

class RegistrationViewController: UIViewController ,UITextFieldDelegate{
   
    @IBOutlet weak var dateTxtFld: UITextField!
    let datePicker = UIDatePicker()
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var ageLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateTxtFld.delegate = self
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Nav, toolbar
       // let getDate = UIBarButtonItem(title: "Get Date", style: .done, target: nil, action: #selector(getDateBtnClicked))

        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnClicked))

      
        toolBar.setItems([doneBtn], animated: true)
        
        datePicker.datePickerMode = .date


        dateTxtFld.inputView = datePicker
        dateTxtFld.inputAccessoryView = toolBar
        
        
        let normalBtn = UIButton(frame: CGRect(x: 0, y: 50, width: 30, height: 100))
        normalBtn.setTitle("Test", for: .normal)
        normalBtn.setTitleColor(UIColor.black, for: .normal)
        //        self.view.addSubview(normalBtn)


        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
      userName.resignFirstResponder()
        password.resignFirstResponder()
        confirmPassword.resignFirstResponder()
        
      return true
    }
    
    
    
   @objc func getDateBtnClicked() {
        let dateformatter = DateFormatter()
        //        dateformatter.dateStyle = .short
        dateformatter.dateFormat = "dd/MM/yyyy"
    dateTxtFld.text = dateformatter.string(from: datePicker.date)
    }
    
    @objc func doneBtnClicked() {
        print("doneBtnClicked")
        dateTxtFld.endEditing(true)
        let dateformatter = DateFormatter()
        //        dateformatter.dateStyle = .short
        dateformatter.dateFormat = "dd/MM/yyyy"
        dateTxtFld.text = dateformatter.string(from: datePicker.date)
    }

      
    @IBAction func RegisterCalled(_ sender: UIButton) {
        print("register called")
        let objBuyNowVC = self.storyboard?.instantiateViewController(withIdentifier: "SELECT_VID") as? SelectCountryViewController
        if let objBuyNowVC = objBuyNowVC {
            self.navigationController?.pushViewController(objBuyNowVC, animated: true)
    }
    }
    
    @IBAction func BackCalled(_ sender: UIButton) {
        
        print("BAck called")
        self.navigationController?.popViewController(animated: true)
    }
    

}
