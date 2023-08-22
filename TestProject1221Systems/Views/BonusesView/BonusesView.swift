//
//  BonusesView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct BonusesView: View {
    
    private var bonusItems: [BonusModel]
    private var personBonus: Int
    
    init(bonusItems: [BonusModel], personBonus: Int) {
        self.bonusItems = bonusItems
        self.personBonus = personBonus
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: .zero) {
            ZStack(alignment: .topLeading) {
                NavigationLink {
                    
                } label: {
                    Image("spar-bonus")
                        .resizable()
                        .scaledToFill()
                        .frame(height: Constants.bonusImageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: Constants.cornerRadius))
                        .shadow(color: .black.opacity(Constants.shadowOpacity), radius: Constants.shadowRadius)
                        .padding(Constants.padding)
                }
                Text("\(personBonus) бонусов")
                    .font(.system(size: Constants.textSize, weight: .bold, design: .rounded))
                    .padding(.leading, Constants.textPadding)
                    .padding(.top, Constants.textPadding)
            }
            .padding(.trailing, Constants.bonusPadding)
            .padding(.bottom, Constants.bonusPadding)
            .padding(.top, Constants.bonusPadding)
            .frame(maxWidth: .infinity)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: .zero) {
                    ForEach(bonusItems, id: \.self) { item in
                        NavigationLink {
                            
                        } label: {
                            BonusItemView(bonusItems: item)
                                .padding(.all, Constants.padding)
                        }
                    }
                }
            }
        }
        .padding(.leading, Constants.viewPadding)
    }
}

private enum Constants {
    static let bonusImageHeight: CGFloat = 150
    static let cornerRadius: CGFloat = 25
    static let shadowOpacity: CGFloat = 0.15
    static let shadowRadius: CGFloat = 10
    static let padding: CGFloat = 10
    static let bonusPadding: CGFloat = 5
    static let textSize: CGFloat = 25
    static let textPadding: CGFloat = 30
    static let viewPadding: CGFloat = 5
}

struct BonusesView_Previews: PreviewProvider {
    
    static var bonusItems: [BonusModel] = GlobalVariables.bonus
    static var personBonus: Int = 10
    
    static var previews: some View {
        BonusesView(bonusItems: bonusItems, personBonus: personBonus)
    }
}
