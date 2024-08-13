//
//  HorizontalCardView.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 13.08.2024.
//

import SwiftUI

struct HorizontalCardView: View {
    var card: Card
    var body: some View {
        ZStack (alignment: .topLeading){
            HStack {
                ZStack (alignment: .topLeading){
                    
                    VStack(alignment: .trailing) {
                        //Spacer()
                        if card.sale != nil {
                            Text(card.sale)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color("ColorSaleNumber"))
                        }
                    }
                    
                    card.cardImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 168, height: 168)
                        .clipped()
                    
                
                    
                    HStack {
                        if card.IfUdar {
                            Text("Удар по ценам")
                                .font(.system(size: 10, weight: .medium))
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color("ColorUdar"))
                                .clipShape(
                                    RoundedCornerShape(
                                        radius: 20,
                                        corners: [.bottomRight, .topRight, .topLeft]
                                    )
                                )
                        }
                        
                        if card.IfNew {
                            Text("Новинки")
                                .font(.system(size: 10, weight: .medium))
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color("ColorNew"))
                                .clipShape(
                                    RoundedCornerShape(
                                        radius: 20,
                                        corners: [.bottomRight, .topRight, .topLeft]
                                    )
                                )
                        }
                        
                        if card.IfByCard {
                            Text("Цена по карте")
                                .font(.system(size: 10, weight: .medium))
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color("ColorPoCard"))
                                .clipShape(
                                    RoundedCornerShape(
                                        radius: 20,
                                        corners: [.bottomRight, .topRight, .topLeft]
                                    )
                                )
                        }
                        
                        Spacer()
                    }
                }
            }.background(Color.white)
                .cornerRadius(11)
                
            
        }.frame(width: 375)
    }
}

#Preview {
    HorizontalCardView(card: Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: true, raitingPoint: "4.3", ImageName: "Image1", countryName: "Франция 🇫🇷", sale: "25%"))
}
