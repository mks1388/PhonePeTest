//
//  LabelCVCell.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class LabelCVCell: BaseCollectionViewCell<String> {
    @IBOutlet weak var label: UILabel!
    
    func bindData() {
        label.text = data
    }
}
