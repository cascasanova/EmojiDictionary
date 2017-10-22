//
//  DefinitionViewController.swift
//  Emoji Dictoinary
//
//  Created by Eugenio Casanova on 10/22/17.
//  Copyright © 2017 Eugenio Casanova. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🔔" {
            definitionLabel.text = "This is a bell!"
        }
        if emoji == "💩" {
            definitionLabel.text = "This is pooph!"
       }
        if emoji == "🦋" {
            definitionLabel.text = "This is a butterfly!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    


}
