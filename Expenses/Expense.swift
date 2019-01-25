//
//  Expense.swift
//  Expenses
//
//  Created by Jack Huffman on 1/25/19.
//  Copyright © 2019 Jack Huffman. All rights reserved.
//

import Foundation
class Expense {
    var title: String = ""
    var amount: Double = 0
    var date: Date = Date()
    
    init(title: String, amount: Double, date: Date) {
        self.title = title
        self.amount = amount
        self.date = date
    }
}

