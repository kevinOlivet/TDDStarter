//
//  MyFeatureInteractorTests.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

@testable import TDDStarter
import XCTest

 class MyFeatureInteractorTests: XCTestCase {
    // MARK: Subject under test

     var sut: MyFeatureInteractor!
     var spyPresenter: MyFeaturePresentationLogicSpy!
     var spyWorker: MyFeatureWorkerSpy!

    // MARK: Test lifecycle

    override  func setUp() {
        super.setUp()
        setupMyFeatureInteractor()
    }

    override  func tearDown() {
        spyPresenter = nil
        spyWorker = nil
        sut = nil
        super.tearDown()
    }

    // MARK: Test setup

     func setupMyFeatureInteractor() {
        sut = MyFeatureInteractor()

        spyPresenter = MyFeaturePresentationLogicSpy()
        sut.presenter = spyPresenter

        spyWorker = MyFeatureWorkerSpy()
        sut.worker = spyWorker
    }

    // MARK: Test doubles

     class MyFeatureWorkerSpy: MyFeatureWorker {
//         var fetchSomethingCalled = false
//        override  func fetchSomething(completionHandler: @escaping ([SomethingDecodable]?, Error?) -> Void) {
//            fetchSomethingCalled = true
//        }
    }

    // MARK: Tests

//     func testDoSomething() {
//        // Given
//        let request = MyFeature.Something.Request()
//        // When
//        sut.doSomething(request: request)
//        // Then
//        XCTAssertTrue(spyWorker.fetchSomethingCalled, "doSomething(request:) should ask the worker to fetch something")
//        XCTAssertTrue(spyPresenter.presentSomethingCalled, "doSomething(request:) should ask the presenter to format the result")
//    }

}
