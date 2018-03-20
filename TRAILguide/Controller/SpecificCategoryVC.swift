//
//  SpecificCategoryVC.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/19/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    //Outlets
    @IBOutlet weak var productCollection: UICollectionView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    //Data
    public private(set) var specificCategoryProducts = [Product]()
    var activity: Activity!

    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
        //After the view as loaded populate the label and background image
        initView(forActivity: activity)
    }
    
    // Function called by AllCategoriesVC when sending data via segue
    func initProducts(forActivity activity: Activity) {
        specificCategoryProducts = DataService.instance.getProductsForActivityCategory(forActivity: activity.name)
        self.activity = activity
    }
    
    func initView(forActivity activity: Activity) {
        productLabel.text = "\(activity.name) GEAR"
        backgroundImageView.image = UIImage(named: activity.imageName)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return specificCategoryProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = specificCategoryProducts[indexPath.row]
            cell.updateProductCell(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = specificCategoryProducts[indexPath.row]
        performSegue(withIdentifier: "DetailVC", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC {
            //Replace the back button text will an empty string
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            //send data to detailVC
            detailVC.initProductDetail(forProduct: sender as! Product)
        }
    }
    
}
