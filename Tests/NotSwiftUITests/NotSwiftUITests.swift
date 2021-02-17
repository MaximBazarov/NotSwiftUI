    import XCTest
    @testable import NotSwiftUI

    final class NotSwiftUITests: XCTestCase {

        func testBody() {
            @ViewBuilder var sut: Body {
                Text("One")
                if true {
                    Text("Only if true")
                }
                Text("Two")
                Text("Three")
            }
            XCTAssertEqual(sut.body.debugDescription,
            """
              Text("One")
                Text("Only if true")
              Text("Two")
              Text("Three")
            """)
        }
    }
