# STRatingControl

[![CI Status](http://img.shields.io/travis/shuhrat10/STRatingControl.svg?style=flat)](https://travis-ci.org/shuhrat10/STRatingControl)
[![Version](https://img.shields.io/cocoapods/v/STRatingControl.svg?style=flat)](http://cocoapods.org/pods/STRatingControl)
[![License](https://img.shields.io/cocoapods/l/STRatingControl.svg?style=flat)](http://cocoapods.org/pods/STRatingControl)
[![Platform](https://img.shields.io/cocoapods/p/STRatingControl.svg?style=flat)](http://cocoapods.org/pods/STRatingControl)

**STRatingControl** is the new **wonderful** rating control written in Swift!. Supports AutoLayout. It was also designed to cover user’s needs during customization. Created with **delightful combination**, **STRatingControl** improves your user experience. 

## How It Looks

<img src="https://github.com/shuhrat10/STRatingControl/blob/master/Screenshots/demo.gif" alt="Demo" width="300"/>

## Installation
There are two ways to add the **STRatingControl** library to your project. Add it as a regular library or install it through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

` use_frameworks!
	pod 'STRatingControl'
`

You may also quick try the example project with

`pod try 'STRatingControl'`


## Properties

**STRatingControl** comes with a property set for it's customization as needed:

* `rating` : Rating value, can be set or get current value
* `maxRating` : Maximum rating value
* `filledStarImage` : Image for filled rating stars
* `emptyStarImage` : Image for empty rating stars
* `spacing` : Space between rating stars

## Usage and Customization

**STRatingControl** implements **IB_DESIGNABLE** and **IBInspectable** so you can fully customize it in Interface Builder.

<img src="https://github.com/shuhrat10/STRatingControl/blob/master/Screenshots/screen.jpg" alt="" width="100%"/>

Put on storyboard UIView, and set class STRatingControl.

* `rating` : You can set default rating value
* `maxRating` : You can set maximum rating value
* `filledStarImage` : Image for filled rating stars
* `emptyStarImage` : Image for empty rating stars
* `spacing` : Space between rating stars

## Delegate Method(s)

Tells the delegate when the rating is changed.

```swift
  func didSelectRating(control: STRatingControl, rating: Int)
```

Requirements

iOS 8.0+
Xcode 8.1+
Swift 3.0+

## Changelog

### v1.1.0
- Swift 3 support


### v1.0.1

- Added **didSelectRating** delegate method 

### v1.0.0
- Initial commit

## Author

This library is open-sourced by [Shukhrat Tursunov](http://stursunov.com).

If you or your users have other specific needs and you're having issues with this control, please contact me so we can figure it out! :-)

## License
The MIT License (MIT)
Copyright © 2016 Shukhrat Tursunov
