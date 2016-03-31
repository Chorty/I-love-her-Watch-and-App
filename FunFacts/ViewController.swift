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
        let randomColor = ColorModel().getRandomColor() //= funFactButton.tintColor
        let randomFact: String = factModel.getRandomFact()
        //randomFact = factModel.getRandomFact()
        //let randomC = ColorModel().getRandomColor().toHexString()
        //print(UIColor(hexString: randomColor.toHexString()))
        //print(randomColor.toHexString())//.toHexString())
        let viewBackC = funFactButton.tintColor.toHexString()
        print(viewBackC)
        print(randomColor.toHexString())
        if randomColor.toHexString() == viewBackC {
        print("color")
            view.backgroundColor = ColorModel().getRandomColor()
            funFactButton.tintColor = ColorModel().getRandomColor()

            //    print(viewBackC)
            
            //print(UIColor(hexString: randomColor.toHexString()).toHexString())
            //print(randomColor.toHexString())//randomColor = ColorModel().getRandomColor()
            //showFunFact()
        
            //randomFact = factModel.getRandomFact()
            //print(ColorModel().getRandomColor())
            //view.backgroundColor = randomColor
            //funFactButton.tintColor = randomColor
            //funFactLabel.text = randomFact
            showFunFact()
            //view.backgroundColor = randomColor
            //funFactButton.tintColor = randomColor
            funFactLabel.text = factModel.getRandomFact()
        } else if funFactLabel.text == randomFact {
            print("duplicate fact")
            //showFunFact()
            //view.backgroundColor = randomColor
            //funFactButton.tintColor = randomColor
            //funFactLabel.text = factModel.getRandomFact()
            showFunFact()
            
            view.backgroundColor = randomColor
            funFactButton.tintColor = randomColor
            funFactLabel.text = factModel.getRandomFact()
        } else {
            print("else")
            
            
            view.backgroundColor = randomColor
            funFactButton.tintColor = randomColor
            funFactLabel.text = factModel.getRandomFact()
        }
    }
}
