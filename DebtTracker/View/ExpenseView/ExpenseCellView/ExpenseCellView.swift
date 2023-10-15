//
//  ExpenseCellView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct ExpenseCellView: View {
    
    @State private var progress: Double = 0.4
    
    var body: some View {
        VStack(alignment: .center, spacing: -15) {
            HStack(spacing: -10) {
                DebtImageView()
                    .padding(20)
                DebtExplanationView()
                    .padding(20)
                
            }
            DebtProgressView()
                .padding(10)
        }
    }
}

struct ExpenseCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseCellView()
    }
}
