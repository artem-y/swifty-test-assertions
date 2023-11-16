import XCTest

/// Asserts that an expression throws expected error.
/// - parameter expression: Throwable expression.
/// - parameter error: Expected `Equatable` error.
/// - parameter file: The file where the assertion failed.
/// - parameter line: The line on which the assertion failed.
public func Assert<T, E: Error & Equatable>(
    _ expression: @autoclosure (() throws -> T),
    throwsError error: E,
    file: StaticString = #filePath,
    line: UInt = #line
) {

    XCTAssertThrowsError(
        try expression(),
        file: file,
        line: line
    ) { actualError in
        guard let actualError = actualError as? E else {
            XCTFail(
                """
                Threw wrong type of error \"(\"\(type(of: actualError))\")\" \
                instead of expected type \"(\"\(type(of: error))\")\"
                """,
                file: file,
                line: line
            )
            return
        }

        XCTAssertEqual(
            error,
            actualError,
            file: file,
            line: line
        )
    }
}
