//
//  DataService.swift
//  TRAILguide
//
//  Created by Leo Espinal on 3/18/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import Foundation

class DataService {
    //Use Singleton for the data service
    static let instance = DataService()
    
    //Activity Cell Data
    private let activityCategories = [
        Activity(_name: "HIKING", _imageName: "hikingBG.png"),
        Activity(_name: "CAMPING", _imageName: "campingBG.png"),
        Activity(_name: "DIVING", _imageName: "divingBG.png"),
        Activity(_name: "RV LIFE", _imageName: "rvBG.png"),
        Activity(_name: "FISHING", _imageName: "fishingBG.png"),
        Activity(_name: "BACKPACKS", _imageName: "backpackingBG.png")
    ]
    
    //Product Data
    private let campingProducts = [
        Product(_name: "SLEEPING BAG", _description: "A sleeping bag is a camping essential. It provides a warm and semi-comfortable place to sleep when camping. Some sleeping bags are rated for temperatures below 0 degrees F! We recommend the SnugSleeper SubZero bag for camping anywhere you think you might be cold.", _imageName: "sleepingBag.png"),
        Product(_name: "CAMPING STOVE", _description: "A camping stove is a really nice addition to the camping experience. Forget about struggling to start a fire in a local camp grill, just fire up the Cole Burner 2018 which is our top rated propane stove.", _imageName: "campingStove.png"),
        Product(_name: "TENT", _description: "A tent is definitely a must have when camping. It provides shelter during an overnight stay on any campsite. On nights with high winds we recommend the Windsor Vising Tent which keeps very sturdy during highwinds.", _imageName: "pupTent.png"),
        Product(_name: "COOLER", _description: "A spacicious cooler for all of your food and beverages are an absolute must on any camping trip. With this 60\" x 60\" cooler you definitely can't go wrong and have plenty of space to store and keep your food cool for up to 72 hours.", _imageName: "foodCooler.png"),
        Product(_name: "PARACORD BRACLET", _description: "An essential camping survival tool.", _imageName: "paracordBracelet.png"),
        Product(_name: "TACTICLE KNIFE", _description: "An essential camping survival tool.", _imageName: "tacticalKnife.png")
    ]
    
    //TODO: Add the following product data
    private let hikingProducts = [Product]()
    
    private let divingProducts = [Product]()
    
    private let rvProducts = [Product]()
    
    private let fishingProducts = [Product]()
    
    private let backpacks = [Product]()
    
    //Getters
    func getActivityCategories() -> [Activity] {
        return activityCategories
    }
    
    func getCampingProducts() -> [Product] {
        return campingProducts
    }
    
    func getHikingProducts() -> [Product] {
        return hikingProducts
    }
    
    func getDivingProducts() -> [Product] {
        return divingProducts
    }
    
    func getRvProducts() -> [Product] {
        return rvProducts
    }
    
    func getFishingProducts() -> [Product] {
        return fishingProducts
    }
    
    func getBackpacks() -> [Product] {
        return backpacks
    }
    
    func getProductsForActivityCategory(forActivity name: String) -> [Product] {
        let productData: [Product]
        switch name {
            case "HIKING":
                productData = getHikingProducts()
            case "CAMPING":
                productData = getCampingProducts()
            case "DIVING":
                productData = getDivingProducts()
            case "RV LIFE":
                productData = getRvProducts()
            case "FISHING":
                productData = getFishingProducts()
            case "BACKPACKS":
                productData = getBackpacks()
            default:
                productData = [Product]()
        }
        return productData
    }
}
