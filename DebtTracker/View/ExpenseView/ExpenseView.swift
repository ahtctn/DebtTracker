//
//  ExpenseView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct ExpenseView: View {
    @ObservedObject var viewModel = ExpenseViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.expenses) { expense in
                    let paidDebt = expense.totalDebt - expense.remainingDebt
                    let progress = (100 * paidDebt) / expense.totalDebt
                    
                    ExpenseCellView(progress: progress, remaining: expense.remainingDebt, total: expense.totalDebt, paid: paidDebt, debtImage: expense.debtImage ?? Constants.TabBarImages.income, title: expense.title, subtitle: expense.subtitle)
                }
            }
            .navigationTitle("Expenses")
            .navigationBarItems(trailing: HStack {
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                        .font(.bold(.headline)())
                        .tint(.purple)
                }
            })
            
        }
    }
}

struct ExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseView(viewModel: .init())
    }
}
