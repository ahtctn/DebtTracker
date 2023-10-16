//
//  ExpenseCellView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct ExpenseCellView: View {
    var progress: Double
    var remaining: Double
    var total: Double
    var paid: Double
    var debtImage: String
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            VStack(alignment: .leading, spacing: 10) {
                HStack(spacing: 20) {
                    DebtImageView(debtImage: debtImage)
                    DebtExplanationView(title: title, subtitle: subtitle)
                    Spacer()
                }
                DebtProgressView(progress: progress, remainingDebt: remaining, totalDebt: total, paidDebt: paid)
            }
            Image(systemName: "arrow.right")
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(.purple)
        }
        
       
    }
}

struct ExpenseCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCellView(progress: 0.5, remaining: 0.5, total: 203, paid: 123, debtImage: Constants.TabBarImages.expense, title: "Deneme deneme", subtitle: "Subtitle subtitle subtitle.")
            .previewLayout(.sizeThatFits)
    }
}
