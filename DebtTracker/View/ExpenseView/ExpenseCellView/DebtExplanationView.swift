//
//  DebtExplanationView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct DebtExplanationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Araba Kredi Borcum")
                .fontWeight(.bold)
                .font(.title2)

            Text("Renault Spring 1996")
                .font(.subheadline)
                .foregroundColor(.secondary)
                
        }
    }
}

struct DebtExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        DebtExplanationView()
            .previewLayout(.sizeThatFits)
    }
}
