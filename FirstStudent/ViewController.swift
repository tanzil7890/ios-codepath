//
//  ViewController.swift
//  FirstStudent
//
//  Created by Mohammad Tanzil Idrisi on 2/1/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var morePetsSwitcher: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetLabel: UILabel!
    


    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func morePetsSwitch(_ sender: Any) {
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
           
           // Lets us choose the title we have selected from the segmented control
           // In our example that is whether it is first, second, third or forth
           let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
           
           // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetLabel.text!) dogs. It is  that I want more pets."
           
           //print(introduction)
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

