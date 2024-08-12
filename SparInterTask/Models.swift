//
//  Models.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 13.08.2024.
//

import Foundation
import SwiftUI

struct Card: Identifiable, Codable {
    var id = UUID()
    let name: String
    let price: String
    let PreviosPrice: String
    let IfUdar: Bool
    let IfNew: Bool
    let IfByCard: Bool
    let raitingPoint: String
    let ImageName: String
    let countryName: String
    let countryFlag: String
    
    var cardImage: Image {
        Image(ImageName)
    }
    var flag:Image {
        Image(countryFlag)
    }
}

struct RoundedCornerShape: Shape { // 1
    let radius: CGFloat
    let corners: UIRectCorner

    func path(in rect: CGRect) -> Path { // 2
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
