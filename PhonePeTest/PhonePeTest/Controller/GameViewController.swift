//
//  ViewController.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class GameViewController: BaseViewController {

    private var gameView: GameView {
        return view as! GameView
    }
    
    private let viewModel: GameViewModelInterface
    
    init(viewModel: GameViewModelInterface) {
        self.viewModel = viewModel
        
        super.init(nibName: String(describing: GameViewController.self), bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameView.viewModel = viewModel
        viewModel.viewModelDelegate = self
    }
}

// MARK: - ViewModelDelegate
extension GameViewController: ViewModelDelegate {
    func bindViewModel() {
        gameView.data = viewModel.arrGameModel
    }
}
