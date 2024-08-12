//
//  GreedCardView.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 13.08.2024.
//

import SwiftUI

struct GreedCardView: View {
    let sampleCards = [
            Card(name: "Продукт 1",  price: "1000₽", PreviosPrice: "1200₽", IfUdar: true, IfNew: false, IfByCard: true, raitingPoint: "4", ImageName: "product1", countryName: "", countryFlag: ""),
            Card(name: "Продукт 2",  price: "800₽", PreviosPrice: "", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "3", ImageName: "product2", countryName: "", countryFlag: ""),
            // Добавьте больше карточек по необходимости
        ]
    
    var card: Card
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading, spacing: 4) {
                card.cardImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 168, height: 168)
                    .clipped()
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width:12, height: 12)
                        .foregroundColor(.yellow)
                    
                    Text(card.raitingPoint)
                        .font(.system(size: 12, weight: .regular))
                        
                }
                .padding(.leading, 4)
                
                Text(card.name)
                    .frame(width: 152, height: 14)
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.black)
                    .lineLimit(2)
                    
                
                HStack {
                    Text(card.price)
                        .font(.title2)
                        .foregroundColor(.primary)
                    
                    if card.PreviosPrice != "" {
                        Text(card.PreviosPrice)
                            .font(.subheadline)
                            .strikethrough()
                            .foregroundColor(.secondary)
                    }
                }
                
            }
            .padding()
            .frame(width: 168, height: 278) // Фиксированные размеры карточки
            .background(Color.white)
            .cornerRadius(11)
            .shadow(radius: 5)
            
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
                        .background(Color("ColorPoNew"))
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
            HStack{
                Spacer()
                
                VStack(spacing: 10){
                    Button{
                        
                    }label: {
                        Image("Favorites")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                    Button{
                        
                    }label: {
                        Image("Saved")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                    
                }
                .padding()
                .background(Color(.white))
                .opacity(0.8)
            }
            
        }
        .frame(width: 168, height: 278) // Фиксированные размеры всей карточки
    }
    }


#Preview {
    GreedCardView(card: Card(name: "сыр Ламбер 500/0 230г", price: "1000", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image1", countryName: "", countryFlag: ""))
}
