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
                makeWrongErrorTypeMessage(
                    actualError: actualError,
                    expectedError: error
                ),
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

/// Asserts that an async expression throws expected error.
/// - parameter expression: Async throwable expression.
/// - parameter error: Expected `Equatable` error.
/// - parameter file: The file where the assertion failed.
/// - parameter line: The line on which the assertion failed.
public func AssertAsync<T, E: Error & Equatable>(
    _ expression: @autoclosure (() async throws -> T),
    throwsError error: E,
    file: StaticString = #filePath,
    line: UInt = #line
) async {
    do {
        _ = try await expression()
        XCTFail(
            "AssertAsync..throwsError failed: didn't throw an error",
            file: file,
            line: line
        )
    } catch (let actualError) {
        guard let actualError = actualError as? E else {
            XCTFail(
                makeWrongErrorTypeMessage(
                    actualError: actualError,
                    expectedError: error
                ),
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

fileprivate func makeWrongErrorTypeMessage(actualError: Error, expectedError: Error) -> String {
    """
    Threw wrong type of error ("\(type(of: actualError))") \
    instead of expected type ("\(type(of: expectedError))")
    """
}
