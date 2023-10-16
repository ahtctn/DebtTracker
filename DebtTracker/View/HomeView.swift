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
                SummaryView()
                    .tag(0)
                ExpenseView(viewModel: ExpenseViewModel())
                    .tag(1)
                IncomeView()
                    .tag(2)
                SettingsView()
                    .tag(3)
            }

            HStack(spacing: 50) {
                ForEach(TabbedItems.allCases, id: \.self) { item in
                    customTabButton(item: item)
                }
            }
            
            .frame(height: 70)
            .background(Color(Constants.TabBarColorSet.secondary))
            
            .cornerRadius(35)
            .padding(.horizontal, 10)
            .offset(x: selectedTabBarX)
        }
    }

    func customTabButton(item: TabbedItems) -> some View {
        Button {
            withAnimation(.easeIn(duration: 0.3)) {
                selectedTab = item.rawValue
            }
        } label: {
            customTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
        }
        
    }

    func customTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        VStack(spacing: 8) {
            Spacer()
            Image(systemName: imageName)
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
        //MARK: CHOOSED BUTTON HEIGHT
        .frame(width: isActive ? 100 : 50, height: 70)
        .background(isActive ? Color(Constants.TabBarColorSet.primary) : Color.clear)
        .cornerRadius(35)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
