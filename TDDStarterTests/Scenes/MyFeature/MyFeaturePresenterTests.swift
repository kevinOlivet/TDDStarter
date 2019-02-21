//
//  MyFeaturePresenterTests.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

@testable import TDDStarter
import XCTest

 class MyFeaturePresenterTests: XCTestCase {
    // MARK: Subject under test

     var sut: MyFeaturePresenter!
     var spyViewController: MyFeatureDisplayLogicSpy!

    // MARK: Test lifecycle

    override  func setUp() {
        super.setUp()
        setupMyFeaturePresenter()
    }

    override  func tearDown() {
        spyViewController = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup

     func setupMyFeaturePresenter() {
        sut = MyFeaturePresenter()

        spyViewController = MyFeatureDisplayLogicSpy()
        sut.viewController = spyViewController
    }

    // MARK: Tests

//     func testPresentSomething() {
//        // Given
//        let response = MyFeature.Something.Response(someVariable: "someValue")
//        // When
//        sut.presentSomething(response: response)
//        // Then
//        XCTAssertTrue(spyViewController.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
//        XCTAssertEqual(spyViewController.displayMovementsViewModel?.someVariable, "someValue", "presentMovements should change the value to the correct format")
//    }
}
