//
//  BaseView.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

protocol BaseViewInterface {
    func bindData()
}

extension BaseViewInterface {
    func bindData(){}
}

class BaseView<T>: UIView, BaseViewInterface {

    var data: T? {
        didSet {
            bindData()
        }
    }
}
