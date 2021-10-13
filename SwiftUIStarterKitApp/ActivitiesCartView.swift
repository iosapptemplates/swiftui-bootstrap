//
//  ActivitiesCartView.swift
//  SwiftUIStarterKitApp
//
//  Created by Osama Naeem on 03/08/2019.
//  Copyright © 2019 NexThings. All rights reserved.
//

import SwiftUI
import Combine

class ActivitiesCart: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var ActivitiesCartArray : [ActivitiesCartItem] {
       willSet {
            objectWillChange.send()
        }
    }
    
    init(data: [ActivitiesCartItem] ) {
        self.ActivitiesCartArray = data
    }
}

struct ActivitiesCartItem {
    var itemID: String
    var itemName: String
    var itemPrice: Int
    var itemColor: String
    var itemManufacturer: String
    var itemImage: String
}

struct ActivitiesCartView: View {
    
    @ObservedObject var ShoppingCartItemsData : ActivitiesCart
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Divider()
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    HStack {
                        Text("\(self.ShoppingCartItemsData.ActivitiesCartArray.count) items")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .padding(.leading, 12)
                            .padding(.top, 8)
                        Spacer()
                        Button(action: {
                            print("Edit Cells")
                        }){
                            Text("Edit")
                        }.foregroundColor(Color.blue)
                        .padding(.trailing, 12)
                        .padding(.top, 8)
                    }
                    .navigationBarTitle("Shopping Cart")
                    
                ScrollView (.vertical, showsIndicators: false) {
                    VStack (alignment: .leading) {
                        ForEach(self.ShoppingCartItemsData.ActivitiesCartArray, id: \.itemID) { item in
                            ShoppingCartCellView(shoppingCartItem: item)
                                .frame(width: geometry.size.width - 24, height: 80)
                                
                            }
                    }
                }
                .frame(height: 87 * 4)
                
                Spacer()
                ShoppingFinalInfoView(ShoppingCartItemsData: self.ShoppingCartItemsData)
                Button(action: {
                    let newelement = ActivitiesCartItem(itemID: String(Int.random(in: 6 ..< 100)), itemName: "DSLR", itemPrice: 500, itemColor: "Black", itemManufacturer: "Nikon", itemImage: "4")
                        self.ShoppingCartItemsData.ActivitiesCartArray.append(newelement)
                    }) {
                        HStack {
                        Text("Checkout")
                    }
                    .padding()
                    .frame(width: geometry.size.width - 24, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(5)
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 20)
          
            }
        }
    }
}

struct ShoppingFinalInfoView: View {
    @ObservedObject var ShoppingCartItemsData : ActivitiesCart
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                VStack (alignment: .leading){
                    Spacer()
                    HStack {
                        Spacer()
                    }
                    Text("Shipping to the United States")
                        .font(.system(size: 12))
                    Text("from $225")
                        .font(.system(size: 12))
                }.frame(width: geometry.size.width / 2 - 12)

                VStack(alignment: .trailing) {
                    Spacer()
                    HStack {
                        Spacer()
                    }
                    Text("\(self.ShoppingCartItemsData.ActivitiesCartArray.count) items on")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    Text("$\(calculateSum(data: self.ShoppingCartItemsData))")
                        .font(.system(.title))
                }.frame(width: geometry.size.width / 2 - 12)
                
            }
            
        }

    }
}

func calculateSum(data: ActivitiesCart) -> Int {
    return data.ActivitiesCartArray.map({$0.itemPrice}).reduce(0, +)
}

struct ShoppingCartCellView: View {
    var shoppingCartItem: ActivitiesCartItem
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                HStack (spacing: 10) {
                    Image("\(self.shoppingCartItem.itemImage)")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 5)
                        .padding(.leading, 5)
                    
                    VStack(alignment: .leading, spacing: 3) {
                        HStack {
                            Spacer()
                        }
                        Text("\(self.shoppingCartItem.itemName)")
                            .lineLimit(nil)
                            .foregroundColor(.primary)
                        Text("\(self.shoppingCartItem.itemManufacturer)")
                            .foregroundColor(.primary)
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                        Text("\(self.shoppingCartItem.itemColor)")
                            .foregroundColor(.primary)
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 10)
                    }.frame(width: geometry.size.width - 150)
                     .padding(.top, 8)
                    VStack(alignment: .trailing){
                        //Spacer()
                        HStack {
                            Spacer()
                        }
                        Text("$\(self.shoppingCartItem.itemPrice)")
                            .font(.system(size: 16))
                            .foregroundColor(Color.black)
                            .padding(.trailing, 15)
                           
                          
                    }.padding(.bottom, 10)
                }
            }
            
        }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
        .cornerRadius(10)
       
       
    }
}
