//
//  ExpenseDetailChartView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 17.10.2023.
//

import SwiftUI
import Charts

struct ExpenseDetailChartView: View {
    var expense: ExpenseModel
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Chart")
            Canvas { remainingDebt, paidDebt in
                let total = slices.reduce(0) { $0 + $1.0 }
                remainingDebt.translateBy(x: paidDebt.width * 0.5, y: paidDebt.height * 0.5)
                var pieContext = remainingDebt
                pie.rotate(by: .degrees(-90))
                let radius = min(paidDebt.width, paidDebt.height) * 0.48
                var startAngle = Angle.zero
                for (value, color) in slices {
                    let angle = Angle(degrees: 360 * (value / total))
                    let endAngle = startAngle + angle
                    let path = Path { p in
                        p.move(to: .zero)
                        p.addArc(center: .zero, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
                        p.closeSubpath()
                    }
                    pieContext.fill(path, with: .color(color))
                    startAngle = endAngle
                    
                }
            }
        }
    }
    
    struct ExpenseDetailChartView_Previews: PreviewProvider {
        static var previews: some View {
            ExpenseDetailChartView(expense: ExpenseModel(title: "Kumar Borcu", subtitle: "Ekrem abiye kumar borcu", debtImage: Constants.TabBarImages.expense, totalDebt: 10_000, remainingDebt: 9_900, paymentPeriod: .monthly, paymentPlan: 4))
        }
    }
