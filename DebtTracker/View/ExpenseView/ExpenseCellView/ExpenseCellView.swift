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
        VStack(alignment: .leading) {
            HStack(spacing: 10) {
                DebtImageView(debtImage: debtImage)
                    .padding(.horizontal, 5)
                DebtExplanationView(title: title, subtitle: subtitle)
                    .padding(.horizontal, 5)
                Spacer()
            }
            DebtProgressView(progress: progress, remainingDebt: remaining, totalDebt: total, paidDebt: paid)
                .padding(.horizontal, 5)
        }
    }
}

struct ExpenseCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCellView(progress: 0.5, remaining: 0.5, total: 203, paid: 123, debtImage: Constants.TabBarImages.expense, title: "Deneme deneme", subtitle: "Subtitle subtitle subtitle.")
            .previewLayout(.sizeThatFits)
    }
}
