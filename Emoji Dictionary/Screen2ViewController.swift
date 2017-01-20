//
//  Screen2ViewController.swift
//  Emoji Dictionary
//
//  Created by Pujita Tipnis on 1/20/17.
//  Copyright © 2017 Pujita Tipnis. All rights reserved.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var bigEmoji: UILabel!
    @IBOutlet weak var textEmoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigEmoji.text = emoji
        
        if emoji == "😊" {
            textEmoji.text = "A smiling face"
        } else if emoji == "🙁" {
            textEmoji.text = "A sad face"
        } else if emoji == "😍" {
            textEmoji.text = "A smiley with heart eyes"
        } else if emoji == "🐶" {
            textEmoji.text = "A cute hamster"
        } else {
            textEmoji.text = "Poop! Gross!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
