//
//  InterfaceController.swift
//  FunFacts Watch Extension
//
//  Created by Matt Joslin on 3/25/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import WatchKit
import Foundation
import UIKit


class InterfaceController: WKInterfaceController {
   let factModel2 = FactModel()
    @IBOutlet var factButtonOutlet: WKInterfaceSwitch!
    @IBOutlet var buttonText: WKInterfaceButton!
    @IBOutlet var labelButtonText: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func factSwitchAction(value: Bool) {
        labelButtonText.setText("Switch is \(value)")
    }
    @IBAction func factButtonAction() {
        labelButtonText.setText("Button Pressed")
        buttonText.setTitle("My Button")
    //labelButtonText.setText(factModel2.getRandomFact())
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
