//
//  TestData.swift
//  TestProject1221Systems
//  Created by Alibek Ismagulov on 22.08.2023.


import Foundation


class GlobalVariables {
    static var history: [HistoryModel] = [HistoryModel(image: "Image", text: "Spar"), HistoryModel(image: "social", text: "Socials"), HistoryModel(image: "city", text: "City"), HistoryModel(image: "cocktail", text: "Cocktail"),HistoryModel(image: "Image", text: "Spar"), HistoryModel(image: "social", text: "Socials"), HistoryModel(image: "city", text: "City"), HistoryModel(image: "cocktail", text: "Cocktail")]
    static var promo: [PromoModel] = [PromoModel(image: "certificate"),PromoModel(image: "shop_basket"),PromoModel(image: "kitchen"),PromoModel(image: "certificate"),PromoModel(image: "shop_basket"),PromoModel(image: "kitchen")]
    static var bonus: [BonusModel] = [BonusModel(image: "coffee", bonuses: "coffee"),BonusModel(image: "basket", bonuses: "basket"), BonusModel(image: "party", bonuses: "party"),BonusModel(image: "coffee", bonuses: "coffee"),BonusModel(image: "basket", bonuses: "basket"), BonusModel(image: "party", bonuses: "party")]
    static var recommended: [ProductCatalogueItemModel] = [ProductCatalogueItemModel(image: "coca", price: 299),ProductCatalogueItemModel(image: "cheese", price: 499),ProductCatalogueItemModel(image: "lays", price: 399),ProductCatalogueItemModel(image: "coca", price: 299),ProductCatalogueItemModel(image: "cheese", price: 499),ProductCatalogueItemModel(image: "lays", price: 399)]
    static var party: [ProductCatalogueItemModel] = [ProductCatalogueItemModel(image: "coca", price: 299),ProductCatalogueItemModel(image: "cheetos", price: 499),ProductCatalogueItemModel(image: "pringles", price: 399),ProductCatalogueItemModel(image: "coca", price: 299),ProductCatalogueItemModel(image: "cheetos", price: 499),ProductCatalogueItemModel(image: "pringles", price: 399)]
    static var sugar: [ProductCatalogueItemModel] = [ProductCatalogueItemModel(image: "yogurt", price: 299),ProductCatalogueItemModel(image: "snikers", price: 499),ProductCatalogueItemModel(image: "coca", price: 399),ProductCatalogueItemModel(image: "yogurt", price: 299),ProductCatalogueItemModel(image: "snikers", price: 499),ProductCatalogueItemModel(image: "coca", price: 399)]
    
}


