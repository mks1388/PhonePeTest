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
    
    @IBOutlet weak var view: UIView!
    
    private var quizView: QuizView {
        return view as! QuizView
    }
    
    func bindData() {
        guard let data = data else {
            return
        }
        quizView.data = data[0]
    }
}
