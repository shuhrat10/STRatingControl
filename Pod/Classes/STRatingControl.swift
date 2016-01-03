//
//  STRatingControl.swift
//  STRatingBarExample
//
//  Created by Shukhrat Tursunov on 12/29/15.
//  Copyright © 2015 Shukhrat Tursunov. All rights reserved.
//

import UIKit

@IBDesignable

public class STRatingControl: UIView {
  
  // MARK: Properties
  
  @IBInspectable public var rating : Int = 0 {
    didSet {
      if rating < 0 {
        rating = 0
      }
      if rating > maxRating {
        rating = maxRating
      }
      setNeedsLayout()
    }
  }
  @IBInspectable var maxRating : Int = 5 {
    didSet {
      setNeedsLayout()
    }
  }
  @IBInspectable var filledStarImage : UIImage? {
    didSet {
      setNeedsDisplay()
    }
  }
  @IBInspectable var emptyStarImage : UIImage? {
    didSet {
      setNeedsDisplay()
    }
  }
  @IBInspectable var spacing : Int = 5 {
    didSet {
      setNeedsDisplay()
    }
  }
  
  private var ratingButtons = [UIButton]()
  private var buttonSize : Int {
    return Int(CGRectGetHeight(self.frame))
  }
  private var width : Int {
    return (buttonSize + spacing) * maxRating
  }
  
  // MARK: Initialization
  
  func initRate() {
    if ratingButtons.count == 0 {
      
      for _ in 0..<maxRating {
        let button = UIButton()
        
        button.setImage(emptyStarImage, forState: .Normal)
        button.setImage(filledStarImage, forState: .Selected)
        button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
        button.userInteractionEnabled = false
        
        button.adjustsImageWhenHighlighted = false
        ratingButtons += [button]
        addSubview(button)
      }
    }
  }
  
  override public func layoutSubviews() {
    super.layoutSubviews()
    
    self.initRate()
    
    // Set the button's width and height to a square the size of the frame's height.
    var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
    
    // Offset each button's origin by the length of the button plus spacing.
    for (index, button) in ratingButtons.enumerate() {
      buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
      button.frame = buttonFrame
    }
    updateButtonSelectionStates()
  }
  
  override public func intrinsicContentSize() -> CGSize {
    return CGSize(width: width, height: buttonSize)
  }
  
  func updateButtonSelectionStates() {
    for (index, button) in ratingButtons.enumerate() {
      // If the index of a button is less than the rating, that button should be selected.
      button.selected = index < rating
    }
  }
  
  // MARK: Gesture recognizer
  
  override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    handleStarTouches(touches, withEvent: event)
  }
  
  override public func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
    handleStarTouches(touches, withEvent: event)
  }
  
  func handleStarTouches(touches: Set<UITouch>, withEvent event: UIEvent?) {
    if let touch = touches.first {
      let position = touch.locationInView(self)
      
      if position.x > -50 && position.x < CGFloat(width + 50) {
        ratingButtonSelected(position)
      }
    }
  }
  
  func ratingButtonSelected(position: CGPoint) {
    for (index, button) in ratingButtons.enumerate() {
      if position.x > CGRectGetMinX(button.frame) {
        self.rating = index + 1
      } else if position.x < 0 {
        self.rating = 0
      }
    }
  }
  
}