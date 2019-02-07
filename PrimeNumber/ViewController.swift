//
//  ViewController.swift
//  PrimeNumber
//
//  Created by IMCS2 on 2/6/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var UserInput: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBAction func ChcekButton(_ sender: Any) {
        let a = UserInput.text
        if Int(a!) == nil{
                let alert = UIAlertController(title: "Error in Input", message: "Input should only contain numbers", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true)
                ResultLabel.text = "Error in input, non-numeric values are in input."
        }
        else{//enters only if input is numeric
            let aNum = Int(a!)
            if aNum! == 1
            {
                ResultLabel.text = "1 is neither prime nor composite"
            }
            else if aNum! < 1{
                let alert = UIAlertController(title: "Error in Input", message: "Input should be in greater than 0", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true)
                ResultLabel.text = "Error, input should be in greater than 0"
            }
            else{
                let num: Int? = Int(UserInput.text!)
                let range = num!/2+1
                var flag = 0
                for i in 2..<range{
                    if(num! % i == 0){
                        flag = 1
                        break
                    }
                }
                if flag == 0{
                    ResultLabel.text = "Result: \(num!) is a Prime"
                }
                else{
                    ResultLabel.text = "Result: \(num!) is not a Prime"
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

