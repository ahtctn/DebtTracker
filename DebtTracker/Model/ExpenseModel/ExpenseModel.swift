//
//  ExpenseModel.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 16.10.2023.
//

import SwiftUI

class ExpenseModel: Identifiable {
    let title: String
    let subtitle: String
    let debtImage: String?
    let totalDebt: Double
    let remainingDebt: Double
    
    required init(title: String, subtitle: String, debtImage: String?, totalDebt: Double, remainingDebt: Double) {
        self.title = title
        self.subtitle = subtitle
        self.debtImage = debtImage
        self.totalDebt = totalDebt
        self.remainingDebt = remainingDebt
    }
}

extension ExpenseModel {
    static let mList = [
        ExpenseModel(title: "Market Ödemesi", subtitle: "Öztürk Market, Yunus abiye ödenecek.", debtImage: Constants.TabBarImages.expense, totalDebt: 430, remainingDebt: 200),
        ExpenseModel(title: "Araba Kredisi", subtitle: "Tarcanlar Otomotiv, 12'sinde öde.", debtImage: Constants.TabBarImages.income, totalDebt: 1_000_000, remainingDebt: 55_000),
        ExpenseModel(title: "Laptop Borcu", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.settings, totalDebt: 29_000, remainingDebt: 3_300),
        ExpenseModel(title: "Kumaş Borcu", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.settings, totalDebt: 10_000, remainingDebt: 4_400),
        ExpenseModel(title: "Hafriyat Masrafları", subtitle: "Kırmızı Hafriyat Cemal abi.", debtImage: Constants.TabBarImages.expense, totalDebt: 4000, remainingDebt: 500),
        ExpenseModel(title: "Kitap Harcamaları", subtitle: "D&R ve BKM taksitler", debtImage: Constants.TabBarImages.settings, totalDebt: 1300, remainingDebt: 600),
        ExpenseModel(title: "Ev Kredisi", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.income, totalDebt: 1000, remainingDebt: 500),
        ExpenseModel(title: "Kumar Borcu", subtitle: "Tefeci Hamza abiye borç", debtImage: Constants.TabBarImages.expense, totalDebt: 17_000, remainingDebt: 11_900),
    ]
}
