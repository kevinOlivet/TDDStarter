//
//  MyFeatureRouter.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

import UIKit

@objc
 protocol MyFeatureRoutingLogic {
    // func routeToSomewhere(segue: UIStoryboardSegue?)
}

 protocol MyFeatureDataPassing {
     var dataStore: MyFeatureDataStore? { get }
}

 class MyFeatureRouter: NSObject, MyFeatureRoutingLogic, MyFeatureDataPassing {
    weak  var viewController: MyFeatureViewController?
     var dataStore: MyFeatureDataStore?

    // MARK: Routing

    // func routeToSomewhere(segue: UIStoryboardSegue?) {
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}

    // MARK: Navigation

    // func navigateToSomewhere(source: MyFeatureViewController, destination: SomewhereViewController) {
    //  source.show(destination, sender: nil)
    //}

    // MARK: Passing data

    // func passDataToSomewhere(source: MyFeatureDataStore, destination: inout SomewhereDataStore) {
    //  destination.name = source.name
    //}
}
