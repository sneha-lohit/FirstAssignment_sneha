//
//  SelectCountryViewController.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 19/03/21.
//

import UIKit

class SelectCountryViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    

    @IBOutlet weak var countryPicker: UIPickerView!
    
    
    var pickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryPicker.delegate = self
        countryPicker.dataSource = self
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        // Do any additional setup after loading the view.
       
        
        pickerData = [" Norway", " Switzerland ","Ireland","India", "Germany", "Australia", "Sweden","Singapore","Netherlands"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
        
        // Creating ViewController using Storyboard
        let productTableViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "PRODUCTTABLE_VID") as? ProductTableViewController
        productTableViewControllerObj?.countryName = pickerData[row]
        self.navigationController?.pushViewController(productTableViewControllerObj!, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
