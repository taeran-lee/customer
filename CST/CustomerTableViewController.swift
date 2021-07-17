//
//  CustomerTableViewController.swift
//  CST
//
//  Created by lee on 2021/07/10.
//

import Foundation
import UIKit

struct Customer{
    var name:String
    var phonenum:Int
    var gender:String
    var memo:String
    var age:Int
    struct Body {
        var height:Int
        var weight:Int
    }
}
//let bb = Customer.Body(height: 180, weight: 70)

class CustomerTableViewController : UITableViewController {
    var cust:[Customer] = []
    
    override func viewDidLoad() {
        let cus1 = Customer(name: "유재석", phonenum: 1000000101, gender: "M", memo: "허리디스크!!", age: 50)
        let cus2 = Customer(name: "김종국", phonenum: 0102032322, gender: "M", memo: "바프준비중", age: 44)
        let cus3 = Customer(name: "송지효", phonenum: 0102032323, gender: "F", memo: " ", age: 40 )
        cust.append(cus1)
        cust.append(cus2)
        cust.append(cus3)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cust.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let cus = cust[indexPath.row]
        cell.textLabel?.text = cus.name
        return cell;
    }
}
