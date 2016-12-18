import UIKit
import XCTest
import numbercast

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func checkNumberCast<T>(_ value: Any, _ testValue: T)->Bool where T: Equatable, T:ExpressibleByIntegerLiteral {
        if let v = numbercast(value, testValue) {
            return v == testValue
        }
        return false
    }
    
    func testIntCast() {
        // 相同类型
        XCTAssertTrue(checkNumberCast(Int(12), Int(12)))
        XCTAssertTrue(checkNumberCast(UInt(12), UInt(12)))
        XCTAssertTrue(checkNumberCast(Int8(12), Int8(12)))
        XCTAssertTrue(checkNumberCast(UInt8(12), UInt8(12)))
        XCTAssertTrue(checkNumberCast(Int16(12), Int16(12)))
        XCTAssertTrue(checkNumberCast(UInt16(12), UInt16(12)))
        XCTAssertTrue(checkNumberCast(Int32(12), Int32(12)))
        XCTAssertTrue(checkNumberCast(UInt32(12), UInt32(12)))
        XCTAssertTrue(checkNumberCast(Int64(12), Int64(12)))
        XCTAssertTrue(checkNumberCast(UInt64(12), UInt64(12)))
        
        // 向宽转型
        XCTAssertTrue(checkNumberCast(Int(12), Int64(12)))
        XCTAssertTrue(checkNumberCast(UInt(12), UInt64(12)))
        XCTAssertTrue(checkNumberCast(Int8(12), Int16(12)))
        XCTAssertTrue(checkNumberCast(UInt8(12), UInt16(12)))
        XCTAssertTrue(checkNumberCast(Int16(12), Int32(12)))
        XCTAssertTrue(checkNumberCast(UInt16(12), UInt32(12)))
        XCTAssertTrue(checkNumberCast(Int32(12), Int64(12)))
        XCTAssertTrue(checkNumberCast(UInt32(12), UInt64(12)))
        
        // 向窄转型
        XCTAssertTrue(checkNumberCast(Int(12), Int16(12)))
        XCTAssertTrue(checkNumberCast(UInt(12), UInt16(12)))
        XCTAssertTrue(checkNumberCast(Int16(12), Int8(12)))
        XCTAssertTrue(checkNumberCast(UInt16(12), UInt8(12)))
        XCTAssertTrue(checkNumberCast(Int32(12), Int16(12)))
        XCTAssertTrue(checkNumberCast(UInt32(12), UInt16(12)))
        XCTAssertTrue(checkNumberCast(Int64(12), Int32(12)))
        XCTAssertTrue(checkNumberCast(UInt64(12), UInt32(12)))
        
        // 向窄转型溢出 失败
        XCTAssertFalse(checkNumberCast(Int(Int16.max)+1, Int16(12)))
        XCTAssertFalse(checkNumberCast(UInt(UInt16.max)+1, UInt16(12)))
        XCTAssertFalse(checkNumberCast(Int16(Int8.max)+1, Int8(12)))
        XCTAssertFalse(checkNumberCast(UInt16(UInt8.max)+1, UInt8(12)))
        XCTAssertFalse(checkNumberCast(Int32(Int16.max)+1, Int16(12)))
        XCTAssertFalse(checkNumberCast(UInt32(UInt16.max)+1, UInt16(12)))
        XCTAssertFalse(checkNumberCast(Int64(Int32.max)+1, Int32(12)))
        XCTAssertFalse(checkNumberCast(UInt64(UInt32.max)+1, UInt32(12)))
        
        // string
        XCTAssertTrue(checkNumberCast("12", Int(12)))
        XCTAssertTrue(checkNumberCast("12", UInt(12)))
        XCTAssertTrue(checkNumberCast("12", Int8(12)))
        XCTAssertTrue(checkNumberCast("12", UInt8(12)))
        XCTAssertTrue(checkNumberCast("12", Int16(12)))
        XCTAssertTrue(checkNumberCast("12", UInt16(12)))
        XCTAssertTrue(checkNumberCast("12", Int32(12)))
        XCTAssertTrue(checkNumberCast("12", UInt32(12)))
        XCTAssertTrue(checkNumberCast("12", Int64(12)))
        XCTAssertTrue(checkNumberCast("12", UInt64(12)))
        
        
        // float vs double
        
        XCTAssertTrue(checkNumberCast(Float(12.0), Int8(12)))
        XCTAssertFalse(checkNumberCast(Float(1222.0), Int8(12)))
        
    }

}
