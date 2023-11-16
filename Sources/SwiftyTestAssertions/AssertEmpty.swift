import XCTest

/// Asserts that a collection is empty
/// - parameter collection: Instance of any type that conforms to the `Collection` protocol.
/// - parameter file: The file where the assertion failed.
/// - parameter line: The line on which the assertion failed.
func AssertEmpty(
    _ collection: any Collection,
    file: StaticString = #filePath,
    line: UInt = #line
) {
    guard !collection.isEmpty else { return }
    XCTFail(
        "(\"\(collection)\") is not empty",
        file: file,
        line: line
    )
}
