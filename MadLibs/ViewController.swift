//
//  ViewController.swift
//  MadLibs
//
//  Created by Patrick Hayes on 11/7/17.
//  Copyright © 2017 Patrick Hayes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var madlibLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        madlibLabel.text = "..."
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submit(_ sender: UIStoryboardSegue) {
        if sender.source is MadLibViewController{
            if let controller = sender.source as? MadLibViewController{
        
                    let adjective = controller.adjectiveField.text!
                    let verb1 = controller.verbField.text!
                    let verb2 = controller.verb2Field.text!
                    let noun = controller.nounField.text!
                
                    let str = "We are having a perfectly \(adjective) time now.  Later we will \(verb1) and \(verb2) in the \(noun)."
                
                    madlibLabel.text = str
            }
        }
    }

    
    
}

