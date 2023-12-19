//
//  Transactions.swift
//  Expense Tracker
//
//  Created by Imam Robani on 19/12/23.
//

import SwiftUI

struct Transactions: Identifiable {
    let id: UUID = .init()
    // Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
}

