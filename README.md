
## Installation

numbercast is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'numbercast', :git => 'https://github.com/shengdoushi/numbercast.git'
```

## Usage

This library just has one function: *numbercast(from)*:

```swift
/// convert number on runtime from one type to another
///
/// - examples:
///
///   Int 128 -> Int64 128
///
///   Float 12.3 -> Int 12
///
///   String "12.3" -> Int 12
///
///   Int 288 -> Int8 nil (because overflow)
///
///
/// - parameters:
///   - from: the number which to convert, the type can be either: 
///           **Int**, **UInt**, **Int8**, **UInt8**, **Int16**, **UInt16**,
///           **Int32**, **UInt32**, **Int64**, **UInt64**, 
///           **Float**, **Double**, **Float80**, 
///           **String**
///   - testToValue: the test value of convert target type, the type can be either:
///           **Int**, **UInt**, **Int8**, **UInt8**, **Int16**, **UInt16**,
///           **Int32**, **UInt32**, **Int64**, **UInt64**,
///           **Float**, **Double**, **Float80**
///
/// - returns: the convert result. if convert fail(maybe overflow), return nil
///
///
func numbercast<T: ExpressibleByIntegerLiteral>(_ from: Any, _ testToValue: T = 0)->T?
```

This function can convert number from one type to another, if fail, return nil.

```swift
let result: Int? = numbercast(Float(64)) // result: Optional(64)
let result2: Int8? = numbercast(Int(222)) // result2: nil, because overflow
let result3: Int? = numbercast("12.7")    // result3: Optional(12)
```



## Author

guolihui, guolihui112@gmail.com

## License

numbercast is available under the MIT license. See the LICENSE file for more info.
