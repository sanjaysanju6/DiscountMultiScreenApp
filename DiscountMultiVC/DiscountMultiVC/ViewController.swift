//
//  ViewController.swift
//  DiscountMultiVC
//
//  Created by Butham,Sanjay Kumar on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var Discount: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalDiscountButton(_ sender: UIButton) {
        //read the data and convert it to double
        var amount = Double(amountOutlet.text!)
        var discrate = Double(Discount.text!)
        priceAfterDiscount = amount! - (amount! * discrate!/100)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOutlet.text!
            destination.discrate = Discount.text!
            destination.priceAfterDiscout = String( priceAfterDiscount)
        }
    }
}

