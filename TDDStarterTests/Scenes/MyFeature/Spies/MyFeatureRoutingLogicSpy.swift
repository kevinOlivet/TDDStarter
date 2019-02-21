//
//  MyFeatureRoutingLogicSpy.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

@testable import TDDStarter
import Foundation

 class MyFeatureRoutingLogicSpy: NSObject, MyFeatureRoutingLogic, MyFeatureDataPassing {
     var dataStore: MyFeatureDataStore?
}
