//
//  CollectionViewHelper.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/2/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation
import UIKit

protocol CollectionViewCellDelegate: class {
    func collectionViewCell(_ cell: UICollectionViewCell, buttonTapped: UIButton)
}

extension ProductListViewController: CollectionViewCellDelegate {
    
    func collectionViewCell(_ cell: UICollectionViewCell, buttonTapped: UIButton) {
        let indexPath = self.productListCollection.indexPath(for: cell)
        let scannerVc = R.storyboard.main.scannerVcId()
        seceltCell = indexPath?.row
        scannerVc?.productId = "\((indexPath?.row)!)"
        scrollOn = true
        productsData.removeAll()
        present(scannerVc!, animated: true, completion: nil)
    }
}

