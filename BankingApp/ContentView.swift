//
//  ContentView.swift
//  BankingApp
//
//  Created by LVMM on 27/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                // MARK: - Top Bank Card Section
                VStack {
                    BankCardView(balance: "24,098.00")
                        .zIndex(1)
                    ShareCardView()
                        .offset(y: -70)
                }
                .padding(.top, 50)
                
                // MARK: - Middle Section
                Text("Amount")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 5)
                
                HStack {
                    Text("500.00 USD")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "arrow.forward")
                        .padding(.vertical)
                        .padding(.horizontal, 40)
                        .background(Color("green"))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                
                Divider()
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                
                HStack {
                    Text("Transaction")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text("View all")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 30)
                
                // MARK: - Transactions List
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(1...6, id: \.self) { value in
                            TransactionItemView()
                        }
                    }
                }
                .padding(.horizontal, 30)
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Text("Hello")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                    Text("Nick")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "bell.badge")
                        .foregroundStyle(Color.red, Color.black)
                    CircularImageView(image: "1", size: 50)
                        .padding(.leading)
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
