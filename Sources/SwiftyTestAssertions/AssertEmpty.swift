import XCTest

/// Asserts that a collection is empty
/// - parameter collection: Instance of any type that conforms to the `Collection` protocol.
/// - parameter message: Optional custom failure message.
/// - parameter file: The file where the assertion failed.
/// - parameter line: The line on which the assertion failed.
public func AssertEmpty(
    _ collection: any Collection,
    _ message: String? = nil,
    file: StaticString = #filePath,
    line: UInt = #line
) {
    guard !collection.isEmpty else { return }
    XCTFail(
        message ?? "(\"\(collection)\") is not empty",
        file: file,
        line: line
    )
}
