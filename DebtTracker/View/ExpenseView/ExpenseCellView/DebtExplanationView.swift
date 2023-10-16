//
//  DebtExplanationView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct DebtExplanationView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
                .fontWeight(.bold)
                .font(.title2)

            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
                
        }
    }
}

struct DebtExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        DebtExplanationView(title: "Ekrem Abi Borç", subtitle: "Kumar borcu")
            .previewLayout(.sizeThatFits)
    }
}
