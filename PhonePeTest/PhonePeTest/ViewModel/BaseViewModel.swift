//
//  BaseViewModel.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import Foundation

protocol ViewModelDelegate: class {
    func bindViewModel()
    func activityIndicatorVisibility(indicatorStatus: ActivityIndicatorStatus)
}

protocol BaseViewModelProtocol: class {
    var apiClient: APIClient { get }
    var resourceClient: ResourceClient { get }
    var jsonParser: JSONParser { get }
    var viewModelDelegate: ViewModelDelegate? { get set }
}

class BaseViewModel: BaseViewModelProtocol {
    var apiClient: APIClient
    var resourceClient: ResourceClient
    var jsonParser: JSONParser
    
    weak var viewModelDelegate: ViewModelDelegate?
    
    init() {
        apiClient = APIClient()
        resourceClient = ResourceClient()
        jsonParser = JSONParser()
    }
}
