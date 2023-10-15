//
//  TabbedItems.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import Foundation

enum TabbedItems: Int, CaseIterable {
    case incomeTab = 0
    case expenseTab
    case settingsTab
    
    var title: String {
        switch self {
        case .incomeTab:
            return "Incomes"
        case .expenseTab:
            return "Expenses"
        case .settingsTab:
            return "Settings"
        }
    }
    
    var iconName: String {
        switch self {
        case .incomeTab:
            return "income_image"
        case .expenseTab:
            return "expense_image"
        case .settingsTab:
            return "settings_image"
        }
    }
}
