//
//  MyFeatureInteractor.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

import Foundation

protocol MyFeatureBusinessLogic {
//    func doSomething(request: MyFeature.Something.Request)
}

protocol MyFeatureDataStore {
    //var name: String { get set }
}

class MyFeatureInteractor: MyFeatureBusinessLogic, MyFeatureDataStore {
    var presenter: MyFeaturePresentationLogic?
    var worker: MyFeatureWorker = MyFeatureWorker()
    // var name: String = ""

    // MARK: Methods

//     func doSomething(request: MyFeature.Something.Request) {
//        worker.doSomeWork()
//
//        let response = MyFeature.Something.Response()
//        presenter?.presentSomething(response: response)
//    }
}
