//
//  TableViewController.swift
//  Expenses
//
//  Created by Jack Huffman on 1/25/19.
//  Copyright © 2019 Jack Huffman. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {

    
    
    var expenses: [Expense] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var dateString = "01/06/2018 18:30"
        var datePassed = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        dateFormatter.locale = Locale(identifier: "en_US")
        
        if let unwrappedDate = dateFormatter.date(from: dateString){
            datePassed = unwrappedDate
        }
        expenses.append(Expense(title: "Dinner", amount: 32.50, date: datePassed))
        
        dateString = "30/05/2018 12:17"
        if let unwrappedDate = dateFormatter.date(from: dateString){
            datePassed = unwrappedDate
        }
        expenses.append(Expense(title: "Office Supplies", amount: 59.34, date: datePassed))
        dateString = "30/05/2018 11:43"
        if let unwrappedDate = dateFormatter.date(from: dateString){
            datePassed = unwrappedDate
        }
        expenses.append(Expense(title: "Uber", amount: 16.23, date: datePassed))
        dateString = "29/05/2018 20:45"
        if let unwrappedDate = dateFormatter.date(from: dateString){
            datePassed = unwrappedDate
        }
        expenses.append(Expense(title: "Coffee", amount: 3.95, date: datePassed))

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "expenseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ExpensesTableViewCell
        
        let expense = expenses[indexPath.row]
        cell.titleLabel.text = expense.title
        cell.priceLabel.text = String(expense.amount)
       
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        cell.dateLabel.text = dateFormatter.string(from: expense.date)
        
        
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
