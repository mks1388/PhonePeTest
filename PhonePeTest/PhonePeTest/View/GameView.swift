//
//  GameView.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class GameView: BaseView<[GameModel]> {
    var viewModel: GameViewModelInterface!
    
    @IBOutlet weak var quizView: QuizView!
    
    func bindData() {
        //TODO: load view with data
    }
}
