//
//  APIClient.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class APIClient {
    func sendRequest(urlString: String, completion: @escaping((Data?, URLResponse?, Error?) -> Void)) {
        guard let url = URL(string: "") else {
            return
        }
        URLSession.shared.dataTask(with: url, completionHandler: completion)
    }
}
