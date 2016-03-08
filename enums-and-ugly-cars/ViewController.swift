//
//  ViewController.swift
//  enums-and-ugly-cars
//
//  Created by Vyacheslav Horbach on 08/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLbl: UILabel!
    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        theLbl.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnTapped(sender: UIButton!) {
        
        if sender.tag == Cars.BMW.rawValue {
            theLbl.text = "BMW is awesome!"
        } else if sender.tag == Cars.HONDA.rawValue {
            theLbl.text = "Somebody get that shit out of my face!"
        } else if sender.tag == Cars.TESLA.rawValue {
            theLbl.text = "The new kid on the block is cool!"
        } else {
            theLbl.text = "This is the ugliest car, ever!"
        }
        
    }

}

