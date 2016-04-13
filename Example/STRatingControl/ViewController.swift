//
//  ViewController.swift
//  STRatingControl
//
//  Created by Shukhrat Tursunov on 01/03/2016.
//  Copyright (c) 2016 Shukhrat Tursunov. All rights reserved.
//

import UIKit
import STRatingControl

class ViewController: UIViewController, STRatingControlDelegate {

  // MARK: Properties
  
  @IBOutlet weak var ratingControl: STRatingControl!
  
  // MARK: Initialization
  
  override func viewDidLoad() {
    super.viewDidLoad()
    ratingControl.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: Action
  
  @IBAction func minusButton(sender: AnyObject) {
    ratingControl.rating -= 1
  }
  
  @IBAction func plusButton(sender: AnyObject) {
    ratingControl.rating += 1
  }
    
  // MARK: Delegate
  func didSelectRating(ratingControl: STRatingControl, rating: Int) {
    print("Rating set to: \(rating)")
  }

}

