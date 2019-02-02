//
//  ProductCollectionCell.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import UIKit

class ProductCollectionCell: UICollectionViewCell {
    
    weak var delegate: CollectionViewCellDelegate?

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var codeLabel: UILabel!
    @IBOutlet var openScanner: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func openScanner(_ sender: Any) {
        self.delegate?.collectionViewCell(self, buttonTapped: openScanner)
    }
    
   
}
