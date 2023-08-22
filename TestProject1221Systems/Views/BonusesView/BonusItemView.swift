//
//  BonusItemView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct BonusItemView: View {
    
    @State var bonusItems: BonusModel
    
    var body: some View {
        Image(bonusItems.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: Constants.radius))
            .frame(width: Constants.imageWidth, height: Constants.imageHeight, alignment: .center)
            .shadow(color: .black.opacity(Constants.opacity), radius: Constants.shadowRadius)
            .scaledToFit()
    }
}

struct BonusItemView_Previews: PreviewProvider {
    static var bonusItems: BonusModel = GlobalVariables.bonus.first!
    static var previews: some View {
        BonusItemView(bonusItems: bonusItems)
    }
}

private enum Constants {
    static let imageHeight: CGFloat = 125
    static let imageWidth: CGFloat = 100
    static let opacity: CGFloat = 0.15
    static let shadowRadius: CGFloat = 10
    static let radius: CGFloat = 25
}
