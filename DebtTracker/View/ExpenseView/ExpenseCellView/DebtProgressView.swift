//
//  DebtProgressView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct DebtProgressView: View {
    
    @State private var progress: Double = 0.77
    
    var body: some View {
        HStack(spacing: 10) {
            ProgressView(value: progress, total: 1.0) {
                Text("12.000$ Paid")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } currentValueLabel: {
                Text("% 40 Done")
            }
            .tint(.purple)
            .frame(width: 250, alignment: .center)
            
            VStack {
                Text("4000$")
                    .foregroundColor(.purple)
                Image(systemName: "checkmark.seal")
                    .font(.title2)
                
                    .foregroundColor(.purple)
            }
        }
    }
}

struct DebtProgressView_Previews: PreviewProvider {
    static var previews: some View {
        DebtProgressView()
            .previewLayout(.sizeThatFits)
    }
}
