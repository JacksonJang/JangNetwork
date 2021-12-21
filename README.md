# JangNetwork
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/JangNetwork.svg?style=flat-square)](https://img.shields.io/cocoapods/v/JangNetwork.svg)

*JangNetwork is based on URLSession network. you can use efficiently. This Library is lightweight networking.*

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate JangNetwork into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'JangNetwork'

# or 

pod 'JangNetwork', '~> 0.0.3'
```

## Usage
Using JangNetwork is really simple. You can access an API like this : 
```swift
import JangNetwork
```
```swift
JN.request(url: "http://example.com") {(result) in            
        switch result {
            case .success(let data):
                // do somthing with the result in success
            case .failure(let error):
                // do somthing with the result in failure
        }
    }
}
```

