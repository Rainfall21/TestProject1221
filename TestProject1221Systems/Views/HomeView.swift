//
//  HomeView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 22.08.2023.
//

import SwiftUI
import Combine

final class HomeViewModel: ObservableObject {
    
    @Published var query: String = ""
    @Published var historyItems: [HistoryModel] = GlobalVariables.history
    @Published var promoItems: [PromoModel] = GlobalVariables.promo
    @Published var bonusItems: [BonusModel] = GlobalVariables.bonus
    @Published var recommended: [ProductCatalogueItemModel] = GlobalVariables.recommended
    @Published var sugar: [ProductCatalogueItemModel] = GlobalVariables.sugar
    @Published var party: [ProductCatalogueItemModel] = GlobalVariables.party
    @Published var profileBonus: Int = 10 //Число бонусов пользователя для теста
    
    private var querySubscription: AnyCancellable?
    
    init() {
        querySubscription = $query.debounce(for: .seconds(0.5) , scheduler: DispatchQueue.main).sink { result in
            //fetchRequest with query
        }
    }
    
    func viewDidAppear() {
        //fetchRequest
    }
}

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
        
    var body: some View {
        VStack(alignment: .center, spacing: Constants.searchBarSpacing) {
            SearchBarView(searchText: $viewModel.query)
                .frame(height: Constants.searchBarFrameHeight)
            Divider()
            ScrollView() {
                Spacer(minLength: Constants.spacerLength)
                LazyVStack(alignment: .leading, spacing: .zero) {
                    HistoryView(historyItems: viewModel.historyItems)
                    PromoView(promoItems: viewModel.promoItems)
                    BonusesView(bonusItems: viewModel.bonusItems, personBonus: viewModel.profileBonus)
                    ProductCatalogueView(section: "Рекомендуем", sectionItems: viewModel.recommended)
                    ProductCatalogueView(section: "Сладкое", sectionItems: viewModel.sugar)
                    ProductCatalogueView(section: "Вечеринка", sectionItems: viewModel.party)
                }
            }
        }
        .onAppear {
            viewModel.viewDidAppear()
        }
    }
}

private enum Constants {
    static let padding: CGFloat = 20
    static let searchBarFrameHeight: CGFloat = 50
    static let searchBarSpacing: CGFloat = 1
    static let spacerLength: CGFloat = 20
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
}
