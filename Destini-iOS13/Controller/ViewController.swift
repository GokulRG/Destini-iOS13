//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if (sender.currentTitle == storyBrain.stories[storyBrain.getCurrentStory()].choice1) {
            storyBrain.updateCurrentStory(userChoice: 1)
        } else {
            storyBrain.updateCurrentStory(userChoice: 2)
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.getCurrentStory()].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.getCurrentStory()].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.getCurrentStory()].choice2, for: .normal)
    }
    
}

