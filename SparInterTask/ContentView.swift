//
//  ContentView.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 12.08.2024.
//

import SwiftUI

struct ContentView: View {
    let sampleCards = [
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", amountOfReviews: "", ImageName: "Image1", countryName: "Франция 🇫🇷", sale: "25%"),
        Card(name: "Энергетический Напиток", priceRub: "450", priceKop: "99", PreviosPrice: "650", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", amountOfReviews: "5", ImageName: "Image2", countryName: "", sale: "25%"),
        Card(name: "сыр Ламбер 500/0 230г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: true, raitingPoint: "4", amountOfReviews: "4", ImageName: "Image3", countryName: "",  sale: "25%"),
        Card(name: "Дорадо Охлажденная Непотрошеная 300-400г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", amountOfReviews: "10", ImageName: "Image4", countryName: "", sale: "25%"),
        Card(name: "Ролл Маленькая Япония 216г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "1", ImageName: "Image5", countryName: "",  sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "20", ImageName: "Image6", countryName: "",  sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "5", ImageName: "Image7", countryName: "Франция 🇫🇷", sale: ""),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image8", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image7", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "550", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image8", countryName: "Франция 🇫🇷", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image9", countryName: "", sale: ""),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "750", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image10", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image11", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image12", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "950", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard:     true, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image13", countryName: "", sale: "25%"),
        Card(name: "Масло Слобода Рафинированное 1,8л", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image14", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image15", countryName: "", sale: "25%"),
        Card(name: "Макаронные Изделия SPAR Спагетти 450г", priceRub: "509", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3",amountOfReviews: "15", ImageName: "Image16", countryName: "Франция 🇫🇷", sale: "25%"),
    ]
    
    @State private var isGridView = false
    
    var body: some View {
        //        CardGridView(cards: sampleCards)
        
        //CardListView(cards: sampleCards)
        
        Button {
            isGridView.toggle()
        } label: {
            HStack{
                if isGridView {
                    Image("list")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .padding()
                        .background(Color("ColorForChangeButton"))
                        .cornerRadius(12)
                } else {
                    Image("Grid")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .padding()
                        .background(Color("ColorForChangeButton"))
                        .cornerRadius(12)
                }
                Spacer()
            }.padding(.horizontal)
                
        }
        
        if isGridView {
                        CardGridView(cards: sampleCards)
                    } else {
                        CardListView(cards: sampleCards)
                    }
    }
}

#Preview {
    ContentView()
}
