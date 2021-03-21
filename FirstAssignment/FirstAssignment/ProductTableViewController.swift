//
//  ProductTableViewController.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 19/03/21.
//

import UIKit

class ProductTableViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
   

    var countryName : String!
    
    @IBOutlet weak var CustomTable: UITableView!
    @IBOutlet weak var CountryLable: UILabel!
    
    var nameArr = ["iPhone 7", "iPhone 8","iPhone 8 Plus", "iPhone X", "iPhone XR", "iPhone 11", "iPhone 12"]
   
    var priceArr = [40000, 50000,60000,70000,80000,90000,90000]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  print(countryName)
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        CountryLable.text = countryName
      
        self.CustomTable.rowHeight = 150
        
        // Do any additional setup after loading the view.
        CustomTable.delegate = self
        CustomTable.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let nameStr = nameArr[indexPath.row]
        let customCell = tableView.dequeueReusableCell(withIdentifier: "CUSTOM_CID", for: indexPath) as! ProductTableViewCell
//        if indexPath.section == 0 {
//            customCell.nameLbl.text = "Name : \(nameiPadArr[indexPath.row])"
//        } else {
//            customCell.nameLbl.text = "Name : \(nameArr[indexPath.row])"
//        }
        
        
        
        
        
        customCell.productName.text = "Name : \(nameStr)"
        customCell.Price.text = "Price : \(priceArr[indexPath.row])"
        customCell.BuyButton.addTarget(self, action: #selector(buyNowBtnClicked(_:)), for: .touchUpInside)
        customCell.BuyButton.tag = indexPath.row
        return customCell
    }
    
   
    
     @objc func buyNowBtnClicked(_ sender : UIButton) {
        // print(sender.tag)
        
        let objBuyNowVC = self.storyboard?.instantiateViewController(withIdentifier: "BUYNOW_VID") as? BuyNewViewController
        if let objBuyNowVC = objBuyNowVC {
            
            var dict : [String : Any] = [:]
        
            dict["name"] = nameArr[sender.tag]
            
           
            objBuyNowVC.dict = dict
            
            self.navigationController?.pushViewController(objBuyNowVC, animated: true)
            
        
    }
  
}
}


