//
//  Servise.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FirebaseHelper {
    
    func handleSendProductCode(productId: String, code: String) {
        let ref = Database.database().reference().child("productsId")
        let childFef = ref.child(productId)
        childFef.updateChildValues(["productCode" : code])
    }
    
    func observeProducts(completion: @escaping ((ProductStructure) -> ())) {
        let roomRef = Database.database().reference().child("productsId")
        roomRef.observe(.childAdded) { (snapshot) in
            guard let dictionary = snapshot.value as? [String : Any] else { return }
            guard let productsInfo = GetData().getProductInfo(from: dictionary) else {return}
            completion(productsInfo)
        }
    }
}
