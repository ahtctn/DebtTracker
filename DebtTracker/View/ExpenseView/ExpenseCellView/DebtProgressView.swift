//
//  DebtProgressView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct DebtProgressView: View {
    //MARK: PROPERTIES
    var progress: Double
    var remainingDebt: Double
    var totalDebt: Double
    var paidDebt: Double
    
    var body: some View {
        HStack(spacing: 10) {
            ProgressView(value: paidDebt, total: totalDebt) {
                Text("\(numberFormatter(number: totalDebt)) ₺")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } currentValueLabel: {
                Text("%\(String(format: "%.0f", progress)) Done")
            }
            .tint(.purple)
            .frame(width: 250, alignment: .center)
            
            VStack {
                Text("\(numberFormatter(number: remainingDebt))₺")
                    .foregroundColor(.purple)
                    .font(.system(size: 12))
                Image(systemName: "checkmark.seal")
                    .font(.title2)
                
                    .foregroundColor(.purple)
            }
        }
    }
    
    func numberFormatter(number: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = "."
        numberFormatter.usesGroupingSeparator = true
        
        if let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) {
            return formattedNumber
        } else {
            return "\(number)"
        }
    }
    
}

struct DebtProgressView_Previews: PreviewProvider {
    static var previews: some View {
        DebtProgressView(progress: 5, remainingDebt: 13412, totalDebt: 3423, paidDebt: 2000)
            .previewLayout(.sizeThatFits)
    }
}
