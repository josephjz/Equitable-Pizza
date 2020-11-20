//
//  ViewController.swift
//  Equitable Pizza
//
//  Created by Jennifer Joseph on 11/19/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfFriendsTextField: UITextField!
    @IBOutlet weak var numberOfSlicesTextField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.text! = ""
        numberOfSlicesTextField.becomeFirstResponder()
    }


    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        
        // Check to see if the value in numberOfSlices.text is a valid Double, if it is not resultsLabel should read: “Please enter a valid number of slices.”
        guard let numberOfSlices = Double(numberOfSlicesTextField.text!) else {
            resultsLabel.text! = "Please enter a valid number of slices."
            return
        }
        
        // Check to see if the value of numberOfEaters.text is a valid Double, if it is not resultsLabel should read: “Please enter a valid number of eaters.”
        guard let numberOfFriends = Double(numberOfFriendsTextField.text!) else {
            resultsLabel.text! = "Please enter a valid number of friends."
            return
        }
        
        // Check to see if the value in numberOfEaters.text is not zero, if it is zero, resultLabel should read: “Cannot divide pizza by zero.”
        
        guard numberOfFriends != 0 else {
            resultsLabel.text! = "Cannot divide by 0."
            return
        }
        
        // if we make it here, we print the valid results!
        var slicesPerPerson = (numberOfSlices/numberOfFriends).rounded()
        resultsLabel.text! = "Everyone receives \(slicesPerPerson) slices!"
    }
}

