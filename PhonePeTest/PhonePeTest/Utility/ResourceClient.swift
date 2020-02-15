//
//  ResourceClient.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

protocol ResourceClientInterface {
    func readResourceData(filePath: String, completion: @escaping((Result<Data, Error>) -> Void))
}

class ResourceClient: ResourceClientInterface {
    func readResourceData(filePath: String, completion: @escaping((Result<Data, Error>) -> Void)) {
        DispatchQueue.global().async {
            let url = URL(fileURLWithPath: filePath)
            do {
                let data = try Data(contentsOf: url, options: .uncached)
                completion(Result.success(data))
            } catch let error {
                completion(.failure(error))
            }
        }
    }
}
