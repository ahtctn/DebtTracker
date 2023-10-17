//
//  ExpenseModelList.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 17.10.2023.
//

import Foundation

extension ExpenseModel {
    static let mList = [
        ExpenseModel(title: "Market Ödemesi", subtitle: "Öztürk Market, Yunus abiye ödenecek.", debtImage: Constants.TabBarImages.expense, totalDebt: 430, remainingDebt: 200, paymentPeriod: .daily, paymentPlan: 7),
        ExpenseModel(title: "Araba Kredisi", subtitle: "Tarcanlar Otomotiv, 12'sinde öde.", debtImage: Constants.TabBarImages.income, totalDebt: 1_000_000, remainingDebt: 55_000, paymentPeriod: .monthly, paymentPlan: 24),
        ExpenseModel(title: "Laptop Borcu", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.settings, totalDebt: 29_000, remainingDebt: 3_300, paymentPeriod: .monthly, paymentPlan: 6),
        ExpenseModel(title: "Kumaş Borcu", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.settings, totalDebt: 10_000, remainingDebt: 4_400, paymentPeriod: .weekly, paymentPlan: 5),
        ExpenseModel(title: "Hafriyat Masrafları", subtitle: "Kırmızı Hafriyat Cemal abi.", debtImage: Constants.TabBarImages.expense, totalDebt: 4000, remainingDebt: 500, paymentPeriod: .weekly, paymentPlan: 20),
        ExpenseModel(title: "Kitap Harcamaları", subtitle: "D&R ve BKM taksitler", debtImage: Constants.TabBarImages.settings, totalDebt: 1300, remainingDebt: 600, paymentPeriod: .monthly, paymentPlan: 3),
        ExpenseModel(title: "Ev Kredisi", subtitle: "Hamza abiye borç", debtImage: Constants.TabBarImages.income, totalDebt: 1000, remainingDebt: 500, paymentPeriod: .monthly, paymentPlan: 12),
        ExpenseModel(title: "Kumar Borcu", subtitle: "Tefeci Hamza abiye borç", debtImage: Constants.TabBarImages.expense, totalDebt: 17_000, remainingDebt: 11_900, paymentPeriod: .daily, paymentPlan: 3),
        ExpenseModel(title: "Erkan'a Borç", subtitle: "İki tane zurna dürüm aldı...", debtImage: Constants.TabBarImages.expense, totalDebt: 240, remainingDebt: 0, paymentPeriod: .yearly, paymentPlan: 10),
        ExpenseModel(title: "Nergis'e Sinema Borcu", subtitle: "Üç tane bilet ve patlamış mısır aldı. Ayrıca çok da güzel bir gün geçirdik.", debtImage: Constants.TabBarImages.income, totalDebt: 400, remainingDebt: 20, paymentPeriod: .yearly, paymentPlan: 10)
    ]
}
