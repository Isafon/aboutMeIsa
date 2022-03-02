//
//  ViewController.swift
//  aboutMeIsa
//
//  Created by isa fontana on 2/15/22.
//

import UIKit

class ViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var isaImageView: UIImageView!

    
//segmented controller:
    
    @IBOutlet weak var greenOrGoldSegment: UISegmentedControl!
    
    @IBOutlet weak var descriptionLabel: UITextView!
    
    
    
    
//Picker View:
    @IBOutlet weak var viewPickerIsa: UIPickerView!
    
    var pictures = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pictures.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pictures[row]
    }
    
    internal func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        view.endEditing(true)
        
        switch row {
            
        case 0:
            isaImageView.image = UIImage(named: "isaPic")
        case 1:
            isaImageView.image = UIImage(named: "isaPic2")
        case 2:
            isaImageView.image = UIImage(named: "isaPic3")
        case 3:
            isaImageView.image = UIImage(named: "isaPic4")
        case 4:
            isaImageView.image = UIImage(named: "isaPic5")
        case 5:
            isaImageView.image = UIImage(named: "isaPic6")
        case 6:
            isaImageView.image = UIImage(named: "isaPic7")
        case 7:
            isaImageView.image = UIImage(named: "isaPic8")
            
        default: break
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewPickerIsa.dataSource = self
        viewPickerIsa.delegate = self
        
        
    }
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        switch greenOrGoldSegment.selectedSegmentIndex
        
        {
        case 0:
            descriptionLabel.text = "Those with Green color personality strengths tend to be perfectionistic, analytical, conceptual, cool, calm, inventive and logical. They seek knowledge and understanding as well as always looking for explanations and answers. Greens have a large vocabulary and can argue both sides of an issue. Often, Greens take the time to concentrate and give correct answers."
        case 1:
            descriptionLabel.text = "Those with Gold color personality strengths tend to be loyal, dependable, organized, thorough, sensible, punctual and caring. They notice and remember facts, like directions and instructions, set deadlines and want them to be met. They enjoy check lists and checking things off the list. Golds can be good with money and like to have things balanced and on track. Golds are good organizers and see that time is importan. They don’t like to waste it and every minute is important."
            
        default: break
        }
    }
    @IBAction func buttonTapped(_ sender: Any) {
        
        UIApplication.shared.openURL((NSURL(string: "https://www.16personalities.com/infj-personality")! as URL))
    }
}
