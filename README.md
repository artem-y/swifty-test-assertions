# SwiftyTestAssertions
Lightweight addition of useful assertions to XCTest  

I've been using these assertions in different projects for a while and they proved quite handy, so I decided to move them to separate package. It is important that this package only contains the actual assertions without extra noise, to make it small and easy to add.

### Installation
#### In Swift package:
1. Add `swifty-test-assertions` to package dependencies in `Package.swift`:
   
   ```swift
   .package(url: "git@github.com:artem-y/swifty-test-assertions.git", from: "0.1.0"),
   ```
2. Add `SwiftyTestAssertions` product dependency to test target(s) in `Package.swift`:
   ```swift
   .product(name: "SwiftyTestAssertions", package: "swifty-test-assertions"),
   ```
3. Import `SwiftyTestAssertions` module where they need to be used:
   ```swift
   import SwiftyTestAssertions
   ```
#### In Xcode project/workspace:
1. Go to File > Add package dependencies... in Xcode top navigation menu:
2. Search for `artem-y/swifty-test-assertions` (paste this link into search):

    ```swift
    git@github.com:artem-y/swifty-test-assertions.git
    ```
3. When Xcode finds the package, select "Up to Next Major Version" dependency rule and press "Add Package" button
4. Choose a test target that needs to use this package and press "Add Package"
5. Import `SwiftyTestAssertions` module where they need to be used:
   ```swift
   import SwiftyTestAssertions
   ```
### Examples
```swift
    Assert(
        try sut.validate(colorHex: "ABCXYZ"), // tested expression
        throwsError: ArgumentValidator.ColorHexError.hasInvalidSymbols // check if this exact error is thrown
    )
```
More code examples using these helpers can be found in [examples-of-swifty-test-assertions](https://github.com/artem-y/examples-of-swifty-test-assertions) repository. They are kept there separately to make this library as lightweight as possible.
