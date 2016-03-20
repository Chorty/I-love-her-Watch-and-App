//
//  ViewController.swift
//  FunFacts
//
//  Created by Pasan Premaratne on 10/22/15.
//  Copyright © 2015 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    @IBAction func showFunFact() {
        var randomColor = ColorModel().getRandomColor()
        var randomFact = factModel.getRandomFact()
        
        if (view.backgroundColor == randomColor) || (funFactLabel.text == randomFact) {
            randomColor = ColorModel().getRandomColor()
            randomFact = factModel.getRandomFact()
            print("duplicates \(randomColor) or \(randomFact) Color")
            view.backgroundColor = randomColor
            funFactButton.tintColor = randomColor
            funFactLabel.text = randomFact
        } else {
            print("duplicate")
            showFunFact()
            view.backgroundColor = randomColor
            funFactButton.tintColor = randomColor
            funFactLabel.text = factModel.getRandomFact()
            
        }
        //view.backgroundColor = randomColor
        //funFactButton.tintColor = randomColor
        //funFactLabel.text = factModel.getRandomFact()
        
        //}
    }
}


