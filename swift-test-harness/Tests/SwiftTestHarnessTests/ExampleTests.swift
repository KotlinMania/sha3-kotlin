#if canImport(Testing)
import Testing
import Sha3

@Suite("Sha3 Swift Export Tests")
struct Sha3ExportTests {
    @Test("Sha3 swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Sha3 swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Sha3

final class Sha3ExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Sha3 swift module imported cleanly")
    }
}
#endif
