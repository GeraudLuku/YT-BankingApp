//
//  TransactionItemView.swift
//  BankingApp
//
//  Created by LVMM on 28/04/2023.
//

import SwiftUI

struct TransactionItemView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    .foregroundColor(.white)
                    .padding(.all, 5)
                    .background(.pink)
                    .cornerRadius(10)
                
                Text("Fast Food")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("$450.00")
            }
            .padding(.all, 25)
        }
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
        }
    }
}

struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView()
            .previewLayout(.sizeThatFits)
    }
}
