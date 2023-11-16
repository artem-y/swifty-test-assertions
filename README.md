# swifty-test-assertions
Lightweight addition of useful assertions to XCTest

### Examples
```swift
    Assert(
        try sut.validate(colorHex: "ABCXYZ"), // tested expression
        throwsError: ArgumentValidator.ColorHexError.hasInvalidSymbols // check if this exact error is thrown
    )
```
More code examples using these helpers can be found in [examples-of-swifty-test-assertions](https://github.com/artem-y/examples-of-swifty-test-assertions) repository. They are kept there separately to make this library as lightweight as possible.
