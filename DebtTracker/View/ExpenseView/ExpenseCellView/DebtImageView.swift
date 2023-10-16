//
//  DebtImageView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct DebtImageView: View {
    
    var debtImage: String
    
    var body: some View {
        Image(debtImage)
            .resizable()
            .frame(width: 75, height: 75, alignment: .center)
            .cornerRadius(20)
    }
}

struct DebtImageView_Previews: PreviewProvider {
    static var previews: some View {
        DebtImageView(debtImage: Constants.TabBarImages.expense)
            .previewLayout(.sizeThatFits)
    }
}
