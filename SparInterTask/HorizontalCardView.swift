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
        HStack {
            ZStack(alignment: .topLeading) {
                
                card.cardImage
                    .resizable()
                    .scaledToFill()
                    .frame(width: 168, height: 168)
                    .clipped()
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        if card.sale != nil {
                            Text(card.sale)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(Color("ColorSaleNumber"))
                        }
                    }
                }
                .frame(width: 168, height: 168, alignment: .bottomTrailing)
                
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
            ZStack{
            
            VStack (alignment: .leading, spacing: 4){
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width:12, height: 12)
                        .foregroundColor(.yellow)
                    
                    Text("\(card.raitingPoint) |")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.black)
                    Text("\(card.amountOfReviews) отзывов")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                    Spacer()
                    
                }
                
                
                
                Text(card.name)
                    .frame(width: 152)
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(2)
                
                if card.countryName != nil {
                    Text(card.countryName)
                        .font(.system(size: 12, weight: .light))
                        .padding(.leading, 6)
                    
                    HStack() {
                        VStack (alignment: .leading, spacing: 0){
                            HStack (spacing: 2){
                                Text(card.priceRub)
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Text(card.priceKop)
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Image("PerAmountIcon")
                            }
                            if card.PreviosPrice != "" {
                                Text(card.PreviosPrice)
                                    .font(.system(size: 12, weight: .medium))
                                    .strikethrough()
                                    .foregroundColor(.secondary)
                            }
                        }.frame(width: 96, height: 36)
                        
                        
                        Button {
                            
                        } label: {
                            
                            Image("Cart")
                                .resizable()
                                .frame(width: 16, height: 16)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                                .background(Color("ColorAdd"))
                                .cornerRadius(40)
                            
                            
                            
                            
                        }
                        .padding()
                    }
                }
            }
                VStack{
                    HStack{
                        Spacer()
                        VStack(spacing: 10){
                            Button{
                                
                            }label: {
                                Image("Favorites")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .opacity(0.4)
                            }
                            Button{
                                
                            }label: {
                                Image("Saved")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                            }
                            
                        }
                        .padding(6)
                        .background(Color(.white))
                        .clipShape(
                            RoundedCornerShape(
                                radius: 20,
                                corners: [.bottomLeft, .topRight]
                            )
                        )
                        .opacity(0.8)
                        
                    }
                    Spacer()
                }
            }.frame(height: 176)
        }
        .frame(width: 375)
        .background(Color.white)
        .cornerRadius(11)


    }
}

#Preview {
    HorizontalCardView(card: Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: true, raitingPoint: "4.3", amountOfReviews: "20", ImageName: "Image1", countryName: "Франция 🇫🇷", sale: "25%"))
}
