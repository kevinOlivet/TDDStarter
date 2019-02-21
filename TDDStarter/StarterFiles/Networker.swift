//
//  Networker.swift
//  TDDTesting
//
//  Created by Jon Kevin Olivet on 2/4/19.
//  Copyright © 2019 Jon Kevin Olivet. All rights reserved.
//

import Foundation

protocol NetworkerProtocol {
    func getMovimientos(successCompletion: @escaping ([Movement]?) -> Void,
                        failureCompletion: @escaping (Error?) -> Void)

}

class Networker: NetworkerProtocol {

    // Dependency Injection for testing
    let session: URLSession
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }

    func getMovimientos(successCompletion: @escaping ([Movement]?) -> Void,
                        failureCompletion: @escaping (Error?) -> Void) {

        var paymentMethodArray: [Movement] = []

        let url = "https://www.apple.com/mac/"

        guard let urlStable = URL(string: url) else { return }
        let request = URLRequest(url: urlStable)

        let task = session.dataTask(with: request) { (data:Data?, response:URLResponse?, error:Error?) in
            guard error == nil else {
                failureCompletion(error)
                return }
            guard let data = data else { return }

            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [AnyObject] {
                    for dict in json {
                        guard let name = dict["name"] as? String else { return }
                        guard let amount = dict["amount"] as? Double else { return }
                        let paymentMethod = Movement(name: name,
                                                     amount: amount)
                        paymentMethodArray.append(paymentMethod)
                    }
                    DispatchQueue.main.async {
                        successCompletion(paymentMethodArray)
                    }
                }
            } catch {
                DispatchQueue.main.async {

                    // TODO: - Remove when backend is ready. For now use fake data.
                    paymentMethodArray = [Movement(name: "Kevin", amount: 123),
                                          Movement(name: "Alejandro", amount: 456),
                                          Movement(name: "Ivan", amount: 789),
                                          Movement(name: "Roberto", amount: 1234),
                                          Movement(name: "Magno", amount: 5678),
                                          Movement(name: "Julian", amount: 9012)]

                    successCompletion(paymentMethodArray)
                    //                    failureCompletion(error)
                }
            }
        }
        task.resume()
    }
}
