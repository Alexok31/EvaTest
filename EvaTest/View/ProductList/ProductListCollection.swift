//
//  File.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import Foundation
import UIKit

extension ProductListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProductCollectionCell
        cell.layer.cornerRadius = 5
        cell.delegate = self
        cell.codeLabel.text = productsData[indexPath.row].productCode
        if cell.productImage.image == nil {
             cell.productImage.loadGif(name: "loading")
        }
        if let urlStr = self.productsData[indexPath.row].imageUrl {
            cell.productImage.downloadImeg(from: urlStr)
        }
        if seceltCell != nil && indexPath.row == seceltCell{
            AnimationServise().highlightLabelAnimating(label: cell.codeLabel)
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if scrollOn {
            guard let row = self.seceltCell else {return}
            let indexToScrollTo = IndexPath(item: row, section: 0)
            self.productListCollection.scrollToItem(at: indexToScrollTo, at: .centeredVertically, animated: false)
            scrollOn = false
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthCell = (collectionView.frame.width / 2) - 12
        let heightCell = widthCell * 1.5
        return CGSize(width: widthCell, height: heightCell)
    }
}
