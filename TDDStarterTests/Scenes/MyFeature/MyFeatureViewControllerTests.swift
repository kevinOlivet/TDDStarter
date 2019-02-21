//
//  MyFeatureViewControllerTests.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

@testable import TDDStarter
import XCTest

 class MyFeatureViewControllerTests: XCTestCase {
    // MARK: Subject under test
     var sut: MyFeatureViewController!
     var spyInteractor: MyFeatureBusinessLogicSpy!
     var spyRouter: MyFeatureRoutingLogicSpy!
     var window: UIWindow!

    // MARK: Test lifecycle

    override  func setUp() {
        super.setUp()
        window = UIWindow()
        setupMyFeatureViewController()
    }

    override  func tearDown() {
        spyInteractor = nil
        spyRouter = nil
        sut = nil
        window = nil
        super.tearDown()
    }

    // MARK: Test setup
    
     func setupMyFeatureViewController() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = (storyboard.instantiateViewController(withIdentifier: "MyFeatureViewController") as! MyFeatureViewController)

        spyInteractor = MyFeatureBusinessLogicSpy()
        sut.interactor = spyInteractor

        spyRouter = MyFeatureRoutingLogicSpy()
        sut.router = spyRouter

        loadView()
    }

     func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Tests

//     func testShouldDoSomethingWhenViewIsLoaded() {
//        // Given
//        // When
//        // Then
//        XCTAssertTrue(spyInteractor.doSomethingCalled, "viewDidLoad() should ask the interactor to do something")
//        XCTAssertEqual(spyInteractor.doSomethingRequest?.someVariable, "some value", "doSomething(request:) have the proper information")
//    }

//     func testDisplaySomething() {
//        // Given
//        let viewModel = MyFeature.Something.ViewModel()
//        // When
//        sut.displaySomething(viewModel: viewModel)
//        // Then
//        XCTAssertEqual(sut.nameTextField.text, "", "displaySomething(viewModel:) should update the name text field")
//    }

}
