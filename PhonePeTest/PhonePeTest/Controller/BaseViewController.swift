//
//  BaseViewController.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    private let activityIndicator: UIActivityIndicatorView = {
        let loader = UIActivityIndicatorView(style: .whiteLarge)
        loader.color = UIColor.gray
        loader.hidesWhenStopped = true
        return loader
    }()
    
    deinit {
        hideActivityIndicator()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(activityIndicator)
        activityIndicator.center = view.center
    }
    
    func activityIndicatorVisibility(indicatorStatus: ActivityIndicatorStatus) {
        switch indicatorStatus {
        case .startAnimating:
            self.showActivityIndicator()
        case .stopAnimating:
            self.hideActivityIndicator()
        }
    }
}

//MARK: - Private
private extension BaseViewController {
    func showActivityIndicator() {
        activityIndicator.startAnimating()
        view.isUserInteractionEnabled = false
    }
    
    func hideActivityIndicator() {
        activityIndicator.stopAnimating()
        view.isUserInteractionEnabled = true
    }
}
