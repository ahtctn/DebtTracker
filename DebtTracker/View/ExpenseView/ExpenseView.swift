//
//  ExpenseView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct ExpenseView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text("ExpenseView")
            Image(systemName: "dollarsign")
        }
    }
}

struct ExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseView()
    }
}
