//
//  ViewController.swift
//  EvaTest
//
//  Created by Александр Харченко on 2/1/19.
//  Copyright © 2019 Александр Харченко. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {

    @IBOutlet var productListCollection: UICollectionView!
    
    var scrollOn = true
    var loading = true
    var seceltCell : Int?
    
    let cellId = R.reuseIdentifier.productListCellId.identifier
    
    var productsData = [ProductStructure]() {
        didSet {
            self.productListCollection.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeProductsInfo()
        setUpNavbar()
        productListCollection.register(R.nib.productCollectionCell(), forCellWithReuseIdentifier: cellId)
        NotificationCenter.default.addObserver(self, selector: #selector(self.observeProductsInfo),
                                               name: NSNotification.Name(rawValue: NotificationMane.reloadProductsInfo), object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(NotificationMane.reloadProductsInfo)
    }
    
    
    // Mark - receiving and observe data from the Firebase cloud database
    
    @objc func observeProductsInfo() {
        FirebaseHelper().observeProducts { (dataProductList) in
            self.productsData.append(dataProductList)
            guard let row = self.seceltCell else {return}
            self.scrollToSelectItem(row: row)
        }
    }
    
    func setUpNavbar() {
        let imageView = UIImageView(image: R.image.evaLogo())
        self.navigationItem.titleView = imageView
        self.navigationController?.navigationBar.setBackgroundImage(R.image.navigationBar(), for: .default)
    }
    
    func scrollToSelectItem(row : Int) {
        if self.productsData.count >= (row + 1) {
            self.productListCollection.scrollToItem(at:IndexPath(item: row, section: 0), at: .centeredVertically, animated: true)
        }
    }
}
