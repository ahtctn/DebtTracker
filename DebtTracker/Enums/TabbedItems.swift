//
//  TabbedItems.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import Foundation

enum TabbedItems: Int, CaseIterable {
    case expenseTab = 0
    case incomeTab
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
            return "newspaper"
        case .expenseTab:
            return "camera.filters"
        case .settingsTab:
            return "gear"
        }
    }
}
