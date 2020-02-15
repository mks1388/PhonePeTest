//
//  GameViewModel.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import Foundation

protocol GameViewModelInterface: BaseViewModelProtocol {
    var arrGameModel: [GameModel]? { get }
    func loadGameData()
}

class GameViewModel: BaseViewModel, GameViewModelInterface {
    
    private var data: Data? {
        didSet {
            if let data = data {
                parseData(data: data)
            }
        }
    }
    
    private(set) var arrGameModel: [GameModel]? {
        didSet {
            viewModelDelegate?.bindViewModel()
        }
    }
    
    func loadGameData() {
        guard let filePath  = Bundle.main.path(forResource: Constants.File.logo.name, ofType: Constants.File.logo.type) else {
            return
        }
        viewModelDelegate?.activityIndicatorVisibility(indicatorStatus: .startAnimating)
        resourceClient.readResourceData(filePath: filePath) {[weak self] (result) in
            switch result {
            case .success(let data):
                self?.data = data
            case .failure(let error):
                //TODO: handle error
                self?.viewModelDelegate?.activityIndicatorVisibility(indicatorStatus: .stopAnimating)
                break
            }
        }
    }
}

// MARK: - Private
private extension GameViewModel {
    func parseData(data: Data) {
        jsonParser.parseData(data: data, type: [GameModel].self) {[weak self] (result) in
            switch result {
            case .success(let modelArr):
                self?.arrGameModel = modelArr
            case .failure(let error):
                //TODO: handle error
                break
            }
            self?.viewModelDelegate?.activityIndicatorVisibility(indicatorStatus: .stopAnimating)
        }
    }
}
