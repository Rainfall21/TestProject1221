//
//  ProductCatalogueViewItem.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct ProductCatalogueViewItem: View {
    
    private var productCatalogueItem: ProductCatalogueItemModel
    
    init(productCatalogueItem: ProductCatalogueItemModel) {
        self.productCatalogueItem = productCatalogueItem
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Image(productCatalogueItem.image)
                .resizable()
                .frame(width: Constants.imageWidth, height: Constants.imageHeight, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius))
            HStack(alignment: .center, spacing: .zero) {
                Text("\(productCatalogueItem.price/100).\(productCatalogueItem.price%100) р/шт")
                    .padding(.leading, Constants.padding)
                    .foregroundColor(Color.black)
                    .font(.system(size: Constants.textSize, weight: .bold , design: .rounded))
                ZStack(alignment: .center) {
                    Circle()
                        .frame(width: Constants.circleWidth)
                        .foregroundColor(Color.green)
                    Image(systemName: "basket.fill")
                        .foregroundColor(Color.white)
                }
                .padding(.bottom, Constants.basketBottomPadding)
                .padding(.leading, Constants.basketLeadingPadding)
            }
        }
        .background(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .foregroundColor(Color.white)
                .shadow(color: .black.opacity(Constants.shadowOpacity), radius: Constants.shadowRadius)
        )
    }
}

private enum Constants {
    static let imageWidth: CGFloat = 175
    static let imageHeight: CGFloat = 200
    static let cornerRadius: CGFloat = 25
    static let padding: CGFloat = 10
    static let textSize: CGFloat = 20
    static let circleWidth: CGFloat = 45
    static let basketBottomPadding: CGFloat = 5
    static let basketLeadingPadding: CGFloat = 15
    static let shadowOpacity: CGFloat = 0.15
    static let shadowRadius: CGFloat = 5
}

struct ProductCatalogueViewItem_Previews: PreviewProvider {
    static var productCatalogueItem: ProductCatalogueItemModel = GlobalVariables.recommended.first!
    static var previews: some View {
        ProductCatalogueViewItem(productCatalogueItem: productCatalogueItem)
    }
}
