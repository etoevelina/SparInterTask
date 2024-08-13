//
//  CardListView.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 13.08.2024.
//

import SwiftUI

struct CardListView: View {
    let cards: [Card]

    // Определите количество колонок в сетке
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(cards) { card in
                    VerticalCardView(card: card)
                }
            }
            .padding()
        }
    }
}


//#Preview {
//    CardListView()
//}
