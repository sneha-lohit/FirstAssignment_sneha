//
//  ViewController.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 18/03/21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    

    
    @IBOutlet weak var SegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.userName.delegate = self
        self.password.delegate = self
        
    }
    
       
    @IBAction func SegmentSelectIndicator(_ sender: UISegmentedControl!) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("Login Clicked")
           
        case 1:
            print("Registration Clicked")
            
        ShowRegisterScreen()
        default:
            break;
        }
    }
    func ShowRegisterScreen() {
        let registerViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "REGISTER_VID") as? RegistrationViewController
      
            self.view.addSubview((registerViewControllerObj?.view!)!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        password.resignFirstResponder()
        userName.resignFirstResponder()
        return true
    }
    
    
    @IBAction func LogIn(_ sender: Any) {

        if userName.text?.isEmpty ?? true {
     print("useraname is enpty ")
            ShowUserNameEmptyAlert()
        }else if password.text?.isEmpty ?? true{
            print("password is enpty ")
            ShowPasswordEmptyAlert()
        }else{
            print("not  enpty ")
            let objBuyNowVC = self.storyboard?.instantiateViewController(withIdentifier: "SELECT_VID") as? SelectCountryViewController
            if let objBuyNowVC = objBuyNowVC {
                self.navigationController?.pushViewController(objBuyNowVC, animated: true)
                
        }
        }
    }
    
    func ShowUserNameEmptyAlert(){
        let alert = UIAlertController(title: "Alert", message: "User Name Empty", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")
             case .cancel:
                print("default")
              case .destructive:
                print("default")
              }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    func  ShowPasswordEmptyAlert(){
        
        let alert = UIAlertController(title: "Alert", message: "Password Empty", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")
              case .cancel:
                 print("default")
               case .destructive:
                 print("default")


        }}))
        self.present(alert, animated: true, completion: nil)
        
    }

   


}

