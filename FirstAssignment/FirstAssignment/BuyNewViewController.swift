//
//  BuyNewViewController.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 19/03/21.
//

import UIKit

class BuyNewViewController: UIViewController {

  
 //   @IBOutlet weak var Price : UILabel!
 //   @IBOutlet weak var BuyButton : UIButton!

    var dict : [String: Any] = [:]
    
    @IBOutlet weak var productName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(false, animated: false)
        // Do any additional setup after loading the view.
        
      if let name = dict["name"] as? String {
        productName.text = name
       }
        
        
    //    if let price = dict["price"] as? Int {
      //      Price.text = "\(price)"
            
        //} else {
          //  Price.text = "Nil"
            //BuyButton.isEnabled = false
    //    }
        
        

    }
    

   

}
