//
//  DetailVC.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/19/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    
    //Data from SpecificCategoryVC
    public private(set) var product: Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewData()
    }
    
    //Called from SepcificCategoryVC
    func initProductDetail(forProduct product: Product) {
        self.product = product
    }
    
    func initViewData() {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.name
        productDescription.text = product.description
    }
}
