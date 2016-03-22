//
//  ViewController.swift
//  Multiples-App-Exercise
//
//  Created by Jonathan Tsistinas on 3/16/16.
//  Copyright © 2016 Techinator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var whatMultipleText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multiplesLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    //properties
    var multiple = 0
    var runningSum = 0
    let MAX_SUM = 50
    

    @IBAction func onAddButtonTapped(sender: AnyObject) {
        //Since we never change the newSum value make it a constant
        let newSum = runningSum + multiple
        updateMultiplesLabel(runningSum, mul: multiple, newSum:newSum)
        runningSum += multiple
        
        if isGameOver() {
            restartGame()
    }
}
    
    
    @IBAction func onPlayButtonPressed(sender: AnyObject) {
        if whatMultipleText.text != nil && whatMultipleText.text != "" {
            
            logoImage.hidden = true
            whatMultipleText.hidden = true
            playButton.hidden = true
            multiplesLabel.hidden = false
            addButton.hidden = false

            resetLabel()
            multiple = Int(whatMultipleText.text!)!
            runningSum = 0
        }
    }
    
    func restartGame() {
        multiple = 0
        whatMultipleText.text = ""
        whatMultipleText.hidden = false
        logoImage.hidden = false
        playButton.hidden = false
        whatMultipleText.hidden = false
        addButton.hidden = true
        multiplesLabel.hidden = true
    }
    
    func resetLabel() {
        multiplesLabel.text = "Press Add to add!"
    }
    
    func isGameOver() -> Bool {
        if runningSum >= MAX_SUM {
            return true
        }else {
            return false
        }
    }
    
    func updateMultiplesLabel(oldSum: Int, mul: Int, newSum: Int){
        multiplesLabel.text = "\(oldSum) + \(mul) = \(newSum)"
    }


}