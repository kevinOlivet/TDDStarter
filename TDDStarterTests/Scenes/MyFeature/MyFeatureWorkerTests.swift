//
//  MyFeatureWorkerTests.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

//import OHHTTPStubs
@testable import TDDStarter
import XCTest

 class MyFeatureWorkerTests: XCTestCase {
    // MARK: Subject under test

     var sut: MyFeatureWorker!

    // MARK: Test lifecycle

    override  func setUp() {
        super.setUp()
        setupMyFeatureWorker()
    }

    override  func tearDown() {
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup

     func setupMyFeatureWorker() {
        sut = MyFeatureWorker()
    }

    // MARK: Tests


//     func testFetchSomethingSuccess() {
//        // Given
//        let fakeJsonFile = "POST_Fake_Json_File.json"
//        let bundle = Bundle.main
//
//        let url = "https://www.apple.com/mac/"
//
//        guard let urlPath = URL(string: url)?.path else { XCTFail("testFetchSomething url error"); return }
//        stub(condition: isPath(urlPath)) { _ in
//            return fixture(
//                filePath: OHPathForFileInBundle(fakeJsonFile, bundle)!,
//                status: 200,
//                headers: ["Content-Type" as NSObject: "application/json" as AnyObject]
//            )
//        }
//
//        let expectation = self.expectation(description: "calls the callback with a resource object")
//
//        // When
//        sut.fetchSomething() { (something, _, status) in
//            // Then
//            XCTAssertEqual(status, 200, "should equal 200")
//            XCTAssertEqual(something?.someVariable, "", "someVariable should match json")
//            XCTAssertEqual(something?.someOtherVariable, "", "someOtherVariable should match json")
//            expectation.fulfill()
//        }
//
//        self.waitForExpectations(timeout: 0.3, handler: nil)
//        OHHTTPStubs.removeAllStubs()
//    }

//     func testFetchSomethingFail() {
//        // Given
//        let url = "https://www.apple.com/mac/"
//
//        guard let urlPath = URL(string: url)?.path else { XCTFail("testFetchSomething url error"); return }
//
//        stub(condition: isPath(urlPath)) { _ in
//            let notConnectedError = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue)
//            return OHHTTPStubsResponse(error: notConnectedError)
//        }
//        let expectation = self.expectation(description: "down network")
//
//        // When
//        sut.fetchSomething() { (_, error, _) in
//            // Then
//            XCTAssertNotNil(error)
//            expectation.fulfill()
//        }
//        self.waitForExpectations(timeout: 0.3, handler: nil)
//        OHHTTPStubs.removeAllStubs()
//    }
}
