//
//  ExpenseModel.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 16.10.2023.
//

import SwiftUI

class ExpenseModel: Identifiable, Hashable {
    
    let title: String
    let subtitle: String
    let debtImage: String?
    let totalDebt: Double
    let remainingDebt: Double
    let paymentPeriod: DebtPaymentPeriod
    let paymentPlan: Int
    
    required init(title: String, subtitle: String, debtImage: String?, totalDebt: Double, remainingDebt: Double, paymentPeriod: DebtPaymentPeriod, paymentPlan: Int) {
        self.title = title
        self.subtitle = subtitle
        self.debtImage = debtImage
        self.totalDebt = totalDebt
        self.remainingDebt = remainingDebt
        self.paymentPeriod = paymentPeriod
        self.paymentPlan = paymentPlan
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: ExpenseModel, rhs: ExpenseModel) -> Bool {
        return lhs.id == rhs.id
    }
}

enum DebtPaymentPeriod: String, CaseIterable {
    case daily = "Daily"
    case weekly = "Weekly"
    case monthly = "Monthly"
    case yearly = "Yearly"
}
