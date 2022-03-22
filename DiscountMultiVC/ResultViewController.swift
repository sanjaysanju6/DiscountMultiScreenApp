//
//  ResultViewController.swift
//  DiscountMultiVC
//
//  Created by Butham,Sanjay Kumar on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

   
    @IBOutlet weak var enterAmountOutlet: UILabel!
    
    @IBOutlet weak var enteredDiscountRateOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscountOutlet: UILabel!
    
    var amount = " "
    var discrate = ""
    var priceAfterDiscout = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        enterAmountOutlet.text = enterAmountOutlet.text! + amount
        enteredDiscountRateOutlet.text = enteredDiscountRateOutlet.text! + discrate
        PriceAfterDiscountOutlet.text = PriceAfterDiscountOutlet.text! + priceAfterDiscout
        // Do any additional setup after loading the view.
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
