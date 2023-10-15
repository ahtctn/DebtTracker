//
//  SettingsView.swift
//  DebtTracker
//
//  Created by Ahmet Ali ÇETİN on 15.10.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text("SettingsView")
            Image(systemName: "gear")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
