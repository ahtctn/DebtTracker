//
//  HomeView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    @State private var selectedTabBarX: CGFloat = 0

    let buttonWidth = UIScreen.main.bounds.width / CGFloat(TabbedItems.allCases.count)

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ExpenseView()
                    .tag(0)
                IncomeView()
                    .tag(1)
                SettingsView()
                    .tag(2)
            }

            HStack(spacing: 0) {
                ForEach(TabbedItems.allCases, id: \.self) { item in
                    customTabButton(item: item)
                }
            }
            .frame(height: 70)
            .background(Color.purple.opacity(0.2))
            .cornerRadius(35)
            .padding(.horizontal, 10)
            .offset(x: selectedTabBarX)
        }
    }

    func customTabButton(item: TabbedItems) -> some View {
        Button {
            withAnimation(.easeIn(duration: 0.3)) {
                //selectedTabBarX = buttonWidth * CGFloat(item.rawValue)
                selectedTab = item.rawValue
            }
        } label: {
            customTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
        }
    }

    func customTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        HStack(spacing: 10) {
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)
            if isActive {
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .frame(width: .infinity, height: 60)
        .background(isActive ? Color.purple.opacity(0.4) : Color.clear)
        .cornerRadius(30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
