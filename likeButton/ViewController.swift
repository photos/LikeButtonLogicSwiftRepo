//
//  ViewController.swift
//  likeButton
//
//  Created by Forrest Collins on 6/20/15.
//  Copyright (c) 2015 Forrest Collins. All rights reserved.
//

// *** ALGORITHM ***
// when the button is tapped, change from an empty icon to a filled in one
// when the button is typed, either add 1 or detract 1 from a count variable


import UIKit

var likedImage = false
var likeData = 0
var prevData = 20

class ViewController: UIViewController {

    var image = UIImage()
    
    //----------------------
    // MARK: - View Did Load
    //----------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        likeCountLabel.text = "\(prevData) Likes"
    }
    
    //-------------------
    // MARK: - UI Outlets
    //-------------------
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var heartButtonIcon: UIButton!
    @IBAction func heartButtonTapped(sender: AnyObject) {
        
        // if hasn't liked yet and pressed like button
        if likedImage == false && likeData == 0 {
            
            image = UIImage(named: "filledHeart.png")!
            likedImage = true
            likeData = 1
            likeCountLabel.text = "\(likeData + prevData)" + " Likes"
 
        // if already liked and about to dislike
        } else {
            
            image = UIImage(named: "emptyHeart.png")!
            likedImage = false
            likeData = 0
            likeCountLabel.text = "\(likeData + prevData)" + " Likes"
        }
        
        heartButtonIcon.setImage(image, forState: .Normal)
    }
}

