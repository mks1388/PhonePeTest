//
//  BaseCollectionViewCell.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

protocol BaseCollectionViewCellInterface {
    func bindData()
}

extension BaseCollectionViewCellInterface {
    func bindData(){}
}

class BaseCollectionViewCell<T>: UICollectionViewCell, BaseCollectionViewCellInterface {
    var data: T? {
        didSet {
            bindData()
        }
    }
}
