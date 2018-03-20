//
//  ProductCell.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/19/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func updateProductCell(product: Product) {
        imageView.image = UIImage(named: product.imageName)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 20
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
    }
}
