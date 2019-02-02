//
//  GetData.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation


class GetData {
    
    func getProductInfo(from dictionary: Any) -> ProductStructure? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            return try JSONDecoder().decode(ProductStructure.self, from: jsonData)
        } catch {
            return nil
        }
    }
}
