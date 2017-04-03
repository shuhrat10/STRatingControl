//
//  ViewController.swift
//  STRatingControl
//
//  Created by Shukhrat Tursunov on 01/03/2016.
//  Copyright (c) 2016 Shukhrat Tursunov. All rights reserved.
//

import UIKit
import STRatingControl

class ViewController: UIViewController {

  // MARK: Properties
  
  @IBOutlet weak var ratingControl: STRatingControl!
  
  // MARK: Initialization
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.ratingControl.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: Action
  
  @IBAction func minusButton(_ sender: AnyObject) {
    ratingControl.rating -= 1
  }
  
  @IBAction func plusButton(_ sender: AnyObject) {
    ratingControl.rating += 1
  }

}


extension ViewController: STRatingControlDelegate {
  
  func didSelectRating(_ control: STRatingControl, rating: Int) {
    print("Did select rating: \(rating)")
  }
  
}
