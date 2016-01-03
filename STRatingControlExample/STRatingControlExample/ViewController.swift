//
//  ViewController.swift
//  STRatingControlExample
//
//  Created by Shukhrat Tursunov on 12/29/15.
//  Copyright © 2015 Shukhrat Tursunov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: Properties

  @IBOutlet weak var ratingControl: STRatingControl!
  
  // MARK: Initialization

  override func viewDidLoad() {
    super.viewDidLoad()
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
  
}