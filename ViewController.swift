//
//  ViewController.swift
//  Multiples-App-Exercise
//
//  Created by Jonathan Tsistinas on 3/16/16.
//  Copyright © 2016 Techinator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    var multipleToAddBy = 0
    var currentMultiple = 0
    
    //outlets
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var whatMultipleText: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multiplesLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    //Actions
    @IBAction func onAddButtonTapped(sender: AnyObject) {
        currentMultiple++
        updateMultiplesLabel()
        
        if isGameOver() {
            restartGame()
    }
}
    
    
    @IBAction func onPlayButtonPressed(sender: UIButton) {
        if whatMultipleText.text != nil && whatMultipleText.text != "" {
            
            logoImage.hidden = true
            whatMultipleText.hidden = true
            playButton.hidden = true
            
            multiplesLabel.hidden = false
            addButton.hidden = false
        
            multipleToAddBy = Int(multiplesLabel.text!)!
            currentMultiple = 0
            
            updateMultiplesLabel()
        }
    }
    
    func restartGame() {
        multipleToAddBy = currentMultiple
        whatMultipleText.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        whatMultipleText.hidden = false
        
        addButton.hidden = true
        multiplesLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentMultiple == multipleToAddBy {
            return true
        }else {
            return false
        }
    }
    
    func updateMultiplesLabel(){
        multiplesLabel.text = "\(currentMultiple)"
    
    
    

    }


}

