//
//  ProductCatalogueView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct ProductCatalogueView: View {
    
    private var section: String
    private var sectionItems: [ProductCatalogueItemModel]
    
    init(section: String, sectionItems: [ProductCatalogueItemModel]) {
        self.section = section
        self.sectionItems = sectionItems
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(section)
                .font(.system(size: Constants.textSize, weight: .bold, design: .rounded))
                .padding(Constants.padding)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: Constants.spacing) {
                    ForEach(sectionItems, id: \.self) { item in
                        NavigationLink {
                            
                        } label: {
                            ProductCatalogueViewItem(productCatalogueItem: item)
                        }
                        .padding(Constants.padding)
                    }
                }
            }
        }
        .padding(.leading, Constants.viewPadding)
    }
}

private enum Constants {
    static let textSize: CGFloat = 30
    static let padding: CGFloat = 5
    static let viewPadding: CGFloat = 10
    static let spacing: CGFloat = 10
}

struct ProductCatalogueView_Previews: PreviewProvider {
    
    static var section = ""
    static var sectionItems: [ProductCatalogueItemModel] = GlobalVariables.recommended
    
    static var previews: some View {
        ProductCatalogueView(section: section, sectionItems: sectionItems)
    }
}
