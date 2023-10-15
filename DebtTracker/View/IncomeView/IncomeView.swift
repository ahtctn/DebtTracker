//
//  IncomeView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct IncomeView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text("IncomeView")
            Image(systemName: "dollarsign")
        }
    }
}

struct IncomeView_Previews: PreviewProvider {
    static var previews: some View {
        IncomeView()
    }
}
