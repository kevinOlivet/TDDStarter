//
//  MyFeatureViewController.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

import UIKit

 protocol MyFeatureDisplayLogic: AnyObject {
//     func displaySomething(viewModel: MyFeature.Something.ViewModel)
}

 class MyFeatureViewController: UIViewController, MyFeatureDisplayLogic {
     var interactor: MyFeatureBusinessLogic?
     var router: (NSObjectProtocol & MyFeatureRoutingLogic & MyFeatureDataPassing)?

    //@IBOutlet weak var nameTextField: UITextField!

    // MARK: Object lifecycle

    override  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

     required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: Setup

    private func setup() {
        let viewController = self
        let interactor = MyFeatureInteractor()
        let presenter = MyFeaturePresenter()
        let router = MyFeatureRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: Routing

    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

    // MARK: View lifecycle

    override  func viewDidLoad() {
        super.viewDidLoad()
//        doSomething()
    }

    // MARK: Methods

//     func doSomething() {
//        let request = MyFeature.Something.Request()
//        interactor?.doSomething(request: request)
//    }

//     func displaySomething(viewModel: MyFeature.Something.ViewModel) {
        //nameTextField.text = viewModel.name
//    }
}
