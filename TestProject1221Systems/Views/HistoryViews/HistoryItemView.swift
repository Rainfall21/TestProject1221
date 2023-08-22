//
//  HistoryItemView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct HistoryItemView: View {
    
    let historyItem: HistoryModel
    
    var body: some View {
        VStack(alignment: .center, spacing: .zero) {
            ZStack(alignment: .center) {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: Constants.greenCircleWidth)
                Circle()
                    .foregroundColor(.white)
                    .frame(width: Constants.whiteCircleWidth)
                Image(historyItem.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: Constants.imageSize, height: Constants.imageSize, alignment: .center)
            }
            Text(historyItem.text)
                .font(.system(size: Constants.textSize, weight: .regular, design: .serif))
                .foregroundColor(Color.black)
        }
    }
}

private enum Constants {
    static let greenCircleWidth: CGFloat = 75
    static let whiteCircleWidth: CGFloat = 70
    static let imageSize: CGFloat = 65
    static let textSize: CGFloat = 15
}

struct HistoryItemView_Previews: PreviewProvider {
    static let historyItems: HistoryModel = GlobalVariables.history.first!
    static var previews: some View {
        HistoryItemView(historyItem: historyItems)
    }
}
