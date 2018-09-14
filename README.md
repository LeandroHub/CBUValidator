# CBUValidator

[![CI Status](https://img.shields.io/travis/LeandroHub/CBUValidator.svg?style=flat)](https://travis-ci.org/LeandroHub/CBUValidator)
[![Version](https://img.shields.io/cocoapods/v/CBUValidator.svg?style=flat)](https://cocoapods.org/pods/CBUValidator)
[![License](https://img.shields.io/cocoapods/l/CBUValidator.svg?style=flat)](https://cocoapods.org/pods/CBUValidator)
[![Platform](https://img.shields.io/cocoapods/p/CBUValidator.svg?style=flat)](https://cocoapods.org/pods/CBUValidator)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.



## Requirements

This library runs on Objective-C and Swift 4 projects. 

## Installation

CBUValidator is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CBUValidator'
```

## Usage

### Swift

```swift
import CBUValidator
.
.
let cbu = "2850590940090418135201"
if cbu.validateCBU() {
    print("Valid!")
} else {
    print("Invalid!")
} 
```

### Objective-C

You'll probably need to create a swift file so that your project gets ready to run a Swift pod. Also check you target's Build Settings so that it matches a 4.0 Swift version: open your target's Build Settings, search for the keyboard 'swift' and make any necessary changes. 

```
@import CBUValidator;
.
.
NSString *cbu = @"2850590940090418135201";
if (cbu.validateCBU) {
    NSLog(@"Valid!");
} else {
    NSLog(@"Invalid!");
}
```

## Author

LeandroHub, leandro.fournier@gmail.com

## License

CBUValidator is available under the MIT license. See the LICENSE file for more info.
