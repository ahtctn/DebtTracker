//
//  ExpenseView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct ExpenseView: View {
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(0..<10, id: \.self) { _ in
                    ExpenseCellView()
                }
            }
            .navigationTitle("Expenses")
            .navigationBarItems(trailing: HStack {
                Spacer()
                Button(action: {
                    // Artı butona tıklama işlemi burada gerçekleştirilebilir
                    // Örneğin yeni bir gider ekranını açabilirsiniz
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
        ExpenseView()
    }
}
