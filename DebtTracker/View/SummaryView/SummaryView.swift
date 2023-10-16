//
//  SummaryView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 17.10.2023.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text("SummaryView")
            Image(systemName: "book")
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
