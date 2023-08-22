//
//  PromoItemView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct PromoItemView: View {
    
    @State var promoItem: PromoModel
    
    var body: some View {
        Image(promoItem.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius))
            .frame(width: Constants.imageWidth, height: Constants.imageHeight, alignment: .center)
            .shadow(color: .black.opacity(Constants.opacity), radius: Constants.shadowRadius)
    }
}

private enum Constants {
    static let cornerRadius: CGFloat = 25
    static let imageHeight: CGFloat = 150
    static let imageWidth: CGFloat = 250
    static let shadowRadius: CGFloat = 10
    static let opacity: CGFloat = 0.15
}

struct PromoItemView_Previews: PreviewProvider {
    static var promoItem: PromoModel = GlobalVariables.promo.first!
    static var previews: some View {
        PromoItemView(promoItem: promoItem)
    }
}
