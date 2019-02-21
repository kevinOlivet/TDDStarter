//
//  MyFeatureModels.swift
//  TDDStarter
//
//  Created on 2/21/19.
//

enum MyFeature {
    enum Something {
        struct Request {}
        enum Response {
            struct Success {
                var movementsResponse: [Movement]
            }
            struct Failure {
                let error: Error
            }
        }
        enum ViewModel {
            struct Success {
                var movementsViewModels: [IndividualMovement]
            }
            struct Failure {
                let title: String
                let subTitle: String
            }
            struct IndividualMovement {
                let name: String
                let amount: String
            }
        }
    }
}
