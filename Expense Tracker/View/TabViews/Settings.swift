//
//  Settings.swift
//  Expense Tracker
//
//  Created by Imam Robani on 19/12/23.
//

import SwiftUI

struct Settings: View {
    /// User properties
    @AppStorage("userName") private var userName: String = ""
    /// App  Lock Properties
    @AppStorage("isAppLockEnable") private var isAppLockEnable: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section("User Name") {
                    TextField("type user name", text: $userName)
                }
                
                Section("App Lock") {
                    Toggle("Enable App Lock", isOn: $isAppLockEnable)
                    
                    if isAppLockEnable {
                        Toggle("Lock When App Goes Background", isOn: $lockWhenAppGoesBackground)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
