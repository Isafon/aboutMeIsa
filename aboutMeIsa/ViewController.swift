//
//  ViewController.swift
//  aboutMeIsa
//
//  Created by isa fontana on 2/15/22.
//

import UIKit

class ViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource {

 //image views:
    @IBOutlet weak var photo2ImageView: UIImageView!
    
    @IBOutlet weak var photo5ImageView: UIImageView!
    @IBOutlet weak var photo4ImageView: UIImageView!
    @IBOutlet weak var photo3ImageView: UIImageView!
    @IBOutlet weak var photo1ImageView: UIImageView!
    @IBOutlet weak var isaImageView: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    //segmented controller:
    @IBOutlet weak var descriptionLabelColor: UILabel!
    
    @IBOutlet weak var greenOrGoldSegment: UISegmentedControl!
    
    @IBOutlet weak var descriptionLabel: UITextView!
    
 // Hobbies button
    
    @IBOutlet weak var hobbiesButtonTapped: UIButton!
    
    
    
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
       // labelDivider.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        photo1ImageView.isHidden = true
        photo2ImageView.isHidden = true
        photo3ImageView.isHidden = true
        photo4ImageView.isHidden = true
        photo5ImageView.isHidden = true
    }
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        switch greenOrGoldSegment.selectedSegmentIndex
        
        {
        case 0:
            descriptionLabel.text = "Those with Green color personality strengths tend to be perfectionistic, analytical, conceptual, cool, calm, inventive and logical. They seek knowledge and understanding as well as always looking for explanations and answers. Greens have a large vocabulary and can argue both sides of an issue. Often, Greens take the time to concentrate and give correct answers."
            descriptionLabel.backgroundColor = .systemGreen
        case 1:
            descriptionLabel.text = "Those with Gold color personality strengths tend to be loyal, dependable, organized, thorough, sensible, punctual and caring. They notice and remember facts, like directions and instructions, set deadlines and want them to be met. They enjoy check lists and checking things off the list. Golds can be good with money and like to have things balanced and on track. Golds are good organizers and see that time is importan. They don’t like to waste it and every minute is important."
            descriptionLabel.backgroundColor = .systemYellow
        default: break
        }
    }
    @IBAction func buttonTapped(_ sender: Any) {
        
        UIApplication.shared.openURL((NSURL(string: "https://www.16personalities.com/infj-personality")! as URL))
    }
    
    @IBAction func onHobbiesButtonTapped(_ sender: UIButton) {
        isaImageView.isHidden = true
        greenOrGoldSegment.isHidden = true
        descriptionLabel.isHidden = true
        viewPickerIsa.isHidden = true
        descriptionLabelColor.isHidden = true
        photo1ImageView.isHidden = false
        photo2ImageView.isHidden = false
        photo3ImageView.isHidden = false
        photo4ImageView.isHidden = false
        photo5ImageView.isHidden = false
        
        
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        isaImageView.isHidden = false
        greenOrGoldSegment.isHidden = false
        descriptionLabel.isHidden =
        false
        viewPickerIsa.isHidden =
        false
        descriptionLabelColor.isHidden =
        false
        photo1ImageView.isHidden = true
        photo2ImageView.isHidden = true
        photo3ImageView.isHidden = true
        photo4ImageView.isHidden = true
        photo5ImageView.isHidden = true
        
    }
    
}
