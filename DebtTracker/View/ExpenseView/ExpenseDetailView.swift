//
//  ExpenseDetailView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 17.10.2023.
//

import SwiftUI

struct ExpenseDetailView: View {
    var expense: ExpenseModel
    
    var body: some View {
        VStack {
            Text("Expense Detail")
                .font(.largeTitle)
                .bold()
                .padding()
            
            // Detaylar burada görüntülenebilir. Örnek:
            Text("Title: \(expense.title)")
            Text("Subtitle: \(expense.subtitle)")
            Text("Total Debt: \(String(format: "%.2f", expense.totalDebt))")
            Text("expense remaining debt: \(expense.remainingDebt)")
            Text("Paid Debt: \(expense.totalDebt - expense.remainingDebt)")
            Image(expense.debtImage ?? Constants.TabBarImages.income)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Spacer()
        }
        .navigationTitle(expense.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExpenseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseDetailView(expense: .init(title: "Title", subtitle: "subtitle", debtImage: Constants.TabBarImages.expense, totalDebt: 1000, remainingDebt: 100))
    }
}
