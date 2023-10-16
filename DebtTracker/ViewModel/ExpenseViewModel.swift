//
//  ExpenseViewModel.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 16.10.2023.
//

import SwiftUI

class ExpenseViewModel: Identifiable, ObservableObject {
    @Published var expenses: [ExpenseModel] = ExpenseModel.mList
    
    
}


