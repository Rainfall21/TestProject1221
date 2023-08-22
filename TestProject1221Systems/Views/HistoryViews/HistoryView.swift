//
//  HistoryView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI

struct HistoryView: View {
    
    private var historyItems: [HistoryModel]
    
    init(historyItems: [HistoryModel]) {
        self.historyItems = historyItems
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: Constants.spacing) {
                ForEach(historyItems, id: \.self) { item in
                    NavigationLink {
                        
                    } label: {
                        HistoryItemView(historyItem: item)
                    }
                }
            }
        }
        .padding(.leading, Constants.viewLeadingPadding)
        .padding(.bottom, Constants.viewBottomPadding)
    }
}

private enum Constants {
    static let spacing: CGFloat = 30
    static let padding: CGFloat = 5
    static let viewLeadingPadding: CGFloat = 10
    static let viewBottomPadding: CGFloat = 30
}

struct HistoryView_Previews: PreviewProvider {
    static let historyItems: [HistoryModel] = GlobalVariables.history
    static var previews: some View {
        HistoryView(historyItems: historyItems)
    }
}

