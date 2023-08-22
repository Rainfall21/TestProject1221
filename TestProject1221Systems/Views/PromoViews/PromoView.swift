//
//  PromoView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct PromoView: View {
    
    @State var promoItems: [PromoModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: Constants.spacing ) {
                ForEach(promoItems, id: \.self) { item in
                    NavigationLink {
                        
                    } label: {
                        PromoItemView(promoItem: item)
                    }
                }
            }
            .padding(.leading, Constants.padding)
        }
    }
}

private enum Constants {
    static let spacing: CGFloat = 15
    static let padding: CGFloat = 10
}

struct PromoView_Previews: PreviewProvider {
    static let promoItems: [PromoModel] = GlobalVariables.promo
    static var previews: some View {
        PromoView(promoItems: promoItems)
    }
}
