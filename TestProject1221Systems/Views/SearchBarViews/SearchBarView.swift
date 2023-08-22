//
//  SearchBarView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 21.08.2023.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack(alignment: .center, spacing: .zero) {
            HStack(alignment: .center, spacing: .zero) {
                ZStack(alignment: .center) {
                    Image("pin-image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: Constants.pinSize, height: Constants.pinSize)
                        .foregroundColor(Color("pin-color"))
                    Circle()
                        .fill(Color.white)
                        .frame(width: Constants.pinCircleSize)
                        .padding(.bottom, Constants.pinCirclePadding)
                }
                .padding(.trailing, Constants.pinTrailingPadding)
                .padding(.leading, Constants.pinLeadingPadding)

                
                TextField("Введите локацию", text: $searchText)
                    .overlay(alignment: .trailing, content: {
                        Image(systemName: "xmark.circle")
                            .padding()
                            .opacity(searchText.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                searchText = ""
                            }
                    })
            }
            .font(.headline)
            .background(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(Constants.searchBarOpacity), radius: Constants.searchBarRadius)
                    .frame(height: 35)
            )
            Menu {
                Button("Home") {
                    
                }
                Button("Catalogue") {
                    
                }
                Button("Cart") {
                    
                }
                Button("Profile") {
                    
                }
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(Color.green)
                    .font(.system(size: Constants.linesSize))
                    .padding(.leading, Constants.linesPadding)
            }
        }
        .padding(.all, Constants.searchBarPadding)
    }
}

private enum Constants {
    static let pinSize: CGFloat = 15
    static let pinCircleSize: CGFloat = 6
    static let pinCirclePadding: CGFloat = 4
    static let pinTrailingPadding: CGFloat = 5
    static let pinLeadingPadding: CGFloat = 10
    static let cornerRadius: CGFloat = 25
    static let searchBarOpacity: CGFloat = 1
    static let searchBarRadius: CGFloat = 1
    static let linesSize: CGFloat = 25
    static let linesPadding: CGFloat = 10
    static let searchBarPadding: CGFloat = 10
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}
