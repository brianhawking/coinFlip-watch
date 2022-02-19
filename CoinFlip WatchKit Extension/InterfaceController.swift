//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by Brian Veitch on 2/19/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var flipLabel: WKInterfaceLabel!
    @IBOutlet weak var flipButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    
    @IBAction func flipButtonTapped() {
        
        flipLabel.setText("Flipping the coin.")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            self.flipLabel.setText("Flipping the coin..")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                self.flipLabel.setText("Flipping the coin...")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    let randomFlip = Bool.random()
                    
                    self.flipLabel.setText(randomFlip ? "Heads" : "Tails")
                    
                }
                
            }
            
        }
        
    }
    
}
