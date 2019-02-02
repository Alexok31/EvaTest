//
//  ViewController.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import UIKit

protocol CollectionViewCellDelegate: class {
    func collectionViewCell(_ cell: UICollectionViewCell, buttonTapped: UIButton)
}

class ProductListViewController: UIViewController {

    @IBOutlet var productListCollection: UICollectionView!
    
    var scrollOn = true
    var seceltCell : Int?
    
    var productsData = [ProductStructure]() {
        didSet {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.productListCollection.reloadData()
            }
        }
    }
    
    let cellId = R.reuseIdentifier.productListCellId.identifier
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.observeProductsInfo),
                                               name: NSNotification.Name(rawValue: "reloadProductsInfo"), object: nil)
        observeProductsInfo()
        setUpNavbar()
        productListCollection.register(R.nib.productCollectionCell(), forCellWithReuseIdentifier: cellId)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver("reloadProductsInfo")
    }
    
    @objc func observeProductsInfo() {
        FirebaseHelper().observeProducts { (dataProductList) in
            self.productsData.append(dataProductList)
            guard let row = self.seceltCell else {return}
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.scrollToSelectItem(row: row)
            }
        }
    }
    
    func setUpNavbar() {
        let imageView = UIImageView(image: R.image.evaLogo())
        self.navigationItem.titleView = imageView
        self.navigationController?.navigationBar.setBackgroundImage(R.image.navigationBar(), for: .default)
    }
    
    func scrollToSelectItem(row : Int) {
        if self.productsData.count >= (row + 1) {
            self.productListCollection.scrollToItem(at:IndexPath(item: row, section: 0), at: .top, animated: true)
        }
    }
}


extension ProductListViewController: CollectionViewCellDelegate {
    func collectionViewCell(_ cell: UICollectionViewCell, buttonTapped: UIButton) {
        let indexPath = self.productListCollection.indexPath(for: cell)
        let scannerVc = R.storyboard.main.scannerVcId()
        seceltCell = indexPath?.row
        scannerVc?.productId = "\((indexPath?.row)!)"
        scrollOn = true
        present(scannerVc!, animated: true, completion: nil)
    }
}
