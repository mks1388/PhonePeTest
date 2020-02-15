//
//  JSONParser.swift
//  PhonePeTest
//
//  Created by Mithilesh on 15/02/20.
//  Copyright © 2020 Mithilesh. All rights reserved.
//

import UIKit

class JSONParser {
    func parseData<T: Decodable>(data: Data, type: T.Type, callBack: @escaping((Result<T, Error>) -> Void)) {
        do {
            let model = try JSONDecoder().decode(type, from: data)
            callBack(.success(model))
        } catch let error {
            callBack(.failure(error))
        }
    }
}
