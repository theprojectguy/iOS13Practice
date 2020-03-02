//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        // Correction: Create the method to return the title, the choice1 and the choice2
        storyLabel.text = storyBrain.storyArray[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.storyArray[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyArray[storyBrain.storyNumber].choice2, for: .normal)
    }
    
}

