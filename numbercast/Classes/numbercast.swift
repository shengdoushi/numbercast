//
//  numbercast.swift
//  Pods
//
//  Created by Macintosh HD on 2016/12/18.
//
//


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
public func numbercast<T: ExpressibleByIntegerLiteral>(_ from: Any, _ testToValue: T = 0)->T?{
    if let val = from as? T {
        return val
    }
    
    if from is Int {
        let val = from as! Int
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is UInt {
        let val = from as! UInt
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is Int8 {
        let val = from as! Int8
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is UInt8 {
        let val = from as! UInt8
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is Int16 {
        let val = from as! Int16
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is UInt16 {
        let val = from as! UInt16
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is Int32 {
        let val = from as! Int32
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is UInt32 {
        let val = from as! UInt32
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is Int64 {
        let val = from as! Int64
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is UInt64 {
        let val = from as! UInt64
        if testToValue is Int {
            return Int(exactly: val) as? T
        }else if testToValue is UInt {
            return UInt(exactly: val) as? T
        }else if testToValue is Int8 {
            return Int8(exactly: val) as? T
        }else if testToValue is UInt8 {
            return UInt8(exactly: val) as? T
        }else if testToValue is Int16 {
            return Int16(exactly: val) as? T
        }else if testToValue is UInt16 {
            return UInt16(exactly: val) as? T
        }else if testToValue is Int32 {
            return Int32(exactly: val) as? T
        }else if testToValue is UInt32 {
            return UInt32(exactly: val) as? T
        }else if testToValue is Int64 {
            return Int64(exactly: val) as? T
        }else if testToValue is UInt64 {
            return UInt64(exactly: val) as? T
        }else if testToValue is Float {
            return Float(val) as? T
        }else if testToValue is Double {
            return Double(val) as? T
        }else if testToValue is Float80 {
            return Float80(val) as? T
        }
    }else if from is Float {
        let val = from as! Float
        if testToValue is Float {
            return val as? T
        }else if testToValue is Double {
            return Double(exactly: val) as? T
        }else if testToValue is Float80 {
            return Float80(exactly: val) as? T
        }
        
        if testToValue is Int || testToValue is UInt ||
            testToValue is Int8 || testToValue is UInt8 ||
            testToValue is Int16 || testToValue is UInt16 ||
            testToValue is Int32 || testToValue is UInt32 ||
            testToValue is Int64 || testToValue is UInt64 {
            if val > Float(UInt64.max) || val < Float(Int64.min){
                return nil
            }
            
            let i64: Int64 = llroundf( truncf(val) )
            return numbercast(i64, testToValue)
        }
    }else if from is Double {
        let val = from as! Double
        if testToValue is Float {
            return Float(exactly: val) as? T
        }else if testToValue is Double {
            return val as? T
        }else if testToValue is Float80 {
            return Float80(exactly: val) as? T
        }
        
        if testToValue is Int || testToValue is UInt ||
            testToValue is Int8 || testToValue is UInt8 ||
            testToValue is Int16 || testToValue is UInt16 ||
            testToValue is Int32 || testToValue is UInt32 ||
            testToValue is Int64 || testToValue is UInt64 {
            if val > Double(UInt64.max) || val < Double(Int64.min){
                return nil
            }
            let i64: Int64 = llround( trunc(val) )
            return numbercast(i64, testToValue)
        }
    }else if from is Float80 {
        let val = from as! Float80
        if testToValue is Float {
            return Float(exactly: val) as? T
        }else if testToValue is Double {
            return Double(exactly: val) as? T
        }else if testToValue is Float80 {
            return val as? T
        }
        
        if testToValue is Int || testToValue is UInt ||
            testToValue is Int8 || testToValue is UInt8 ||
            testToValue is Int16 || testToValue is UInt16 ||
            testToValue is Int32 || testToValue is UInt32 ||
            testToValue is Int64 || testToValue is UInt64 {
            if let dVal = Double(exactly: val) {
                if dVal > Double(UInt64.max) || dVal < Double(Int64.min) {
                    return nil
                }
                let i64: Int64 = llround( trunc(dVal) )
                return numbercast(i64, testToValue)
            }
        }
    }
    else if from is String {
        let str = from as! String
        if testToValue is Int {
            if let v = Int(str) {
                return v as? T
            }
        }else if testToValue is UInt {
            if let v = UInt(str) {
                return v as? T
            }
        }else if testToValue is Int8 {
            if let v = Int8(str) {
                return v as? T
            }
        }else if testToValue is UInt8 {
            if let v = UInt8(str) {
                return v as? T
            }
        }else if testToValue is Int16 {
            if let v = Int16(str) {
                return v as? T
            }
        }else if testToValue is UInt16 {
            if let v = UInt16(str) {
                return v as? T
            }
        }else if testToValue is Int32 {
            if let v = Int32(str) {
                return v as? T
            }
        }else if testToValue is UInt32 {
            if let v = UInt32(str) {
                return v as? T
            }
        }else if testToValue is Int64 {
            if let v = Int64(str) {
                return v as? T
            }
        }else if testToValue is UInt64 {
            if let v = UInt64(str) {
                return v as? T
            }
        }else if testToValue is Float {
            return Float(str) as? T
        }else if testToValue is Double {
            return Double(str) as? T
        }else if testToValue is Float80 {
            return Float80(str) as? T
        }
        
        if testToValue is Int || testToValue is UInt ||
            testToValue is Int8 || testToValue is UInt8 ||
            testToValue is Int16 || testToValue is UInt16 ||
            testToValue is Int32 || testToValue is UInt32 ||
            testToValue is Int64 || testToValue is UInt64 {
            if let val = Double(str){
                return numbercast(val, testToValue)
            }
        }
    }
    
    return nil
}
