//
//  ContentView.swift
//  SparInterTask
//
//  Created by Эвелина Пенькова on 12.08.2024.
//

import SwiftUI

struct ContentView: View {
    let sampleCards = [
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image1", countryName: "Франция 🇫🇷", sale: "25%"),
        Card(name: "Энергетический Напиток", priceRub: "450", priceKop: "99", PreviosPrice: "650", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image2", countryName: "", sale: "25%"),
        Card(name: "сыр Ламбер 500/0 230г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: true, raitingPoint: "4", ImageName: "Image3", countryName: "",  sale: "25%"),
        Card(name: "Дорадо Охлажденная Непотрошеная 300-400г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image4", countryName: "", sale: "25%"),
        Card(name: "Ролл Маленькая Япония 216г", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image5", countryName: "",  sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image6", countryName: "",  sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image7", countryName: "Франция 🇫🇷", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image8", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image7", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "550", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image8", countryName: "Франция 🇫🇷", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image9", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "750", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image10", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: true, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image11", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image12", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "950", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard:     true, raitingPoint: "4.3", ImageName: "Image13", countryName: "", sale: "25%"),
        Card(name: "Масло Слобода Рафинированное 1,8л", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image14", countryName: "", sale: "25%"),
        Card(name: "Салат Овощной с Крабовыми Палочками", priceRub: "250", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: true, IfByCard: false, raitingPoint: "4.3", ImageName: "Image15", countryName: "", sale: "25%"),
        Card(name: "Макаронные Изделия SPAR Спагетти 450г", priceRub: "509", priceKop: "99", PreviosPrice: "1100", IfUdar: false, IfNew: false, IfByCard: false, raitingPoint: "4.3", ImageName: "Image16", countryName: "Франция 🇫🇷", sale: "25%"),
    ]
    
    var body: some View {
        CardListView(cards: sampleCards)
    }
}

#Preview {
    ContentView()
}
