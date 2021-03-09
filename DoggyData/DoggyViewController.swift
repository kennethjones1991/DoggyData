//
//  DoggyViewController.swift
//  DoggyData
//
//  Created by Kenneth Jones on 3/8/21.
//

import UIKit

class DoggyViewController: UIViewController {
    
    @IBOutlet weak var doggyImage: UIImageView!
    @IBOutlet weak var temperamentLabel: UILabel!
    @IBOutlet weak var expectancyLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var doggy: Doggy!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        title = doggy.name
        doggyImage.image = UIImage(named: doggy.image)
        temperamentLabel.text = "Temperament: \(doggy.temperament.joined(separator: ", ").capitalized)"
        expectancyLabel.text = "Life expectancy: \(doggy.lifeExpectancy)"
        descriptionLabel.text = doggy.description
    }
}

