//
//  CardViewController.swift
//  Screens
//
//  Created by Ahmed El Gndy on 07/12/2024.
//

import UIKit

class CardViewController: UIViewController {
    var dashes:[Dash] = []
    @IBOutlet var totlePriceLbl: UILabel!
    @IBOutlet var cardTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        calcTotalprice(dashes: dashes)
    }
}
 
extension CardViewController {
    func configureUI() {
        dashes = [Dash(name: "فراخه مشويه", price: 10, qunatity: 2, image: "food.jpg"),
                Dash(name: "وجبه افصار تكفي لشخص واحد", price: 10, qunatity: 2, image: "food1.jpg"),
                Dash(name: "معكرونا ايطاليه بالريحان والزبده", price: 10, qunatity: 2, image: "food2.jpg"),
                Dash(name: "طبق حمص سوري بزيت الزيتون", price: 10, qunatity: 2, image: "food3.jpg"),]
        conigureTableView(with: cardTableView)
    }
    func conigureTableView(with table:UITableView){
        
        table.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
        table.backgroundColor = UIColor(named: Colors.CF1F1F0.rawValue)
        table.delegate = self
        table.dataSource = self
    }
    func calcTotalprice(dashes:[Dash]) {
        var totalPrice:Float = 0
        for item in dashes{
            totalPrice += item.totalPrice
        }
        var totalText = "السعر الكلي \(totalPrice) ك.ك"
        totlePriceLbl.text = totalText
        cardTableView.reloadData()
    }
}


extension CardViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}

extension CardViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dashes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
        let dash =  dashes[indexPath.row]
        cell.index = indexPath.row
        cell.delegate = self
        cell.ConfigureData(with: dash)
        return cell
    }
   
}

extension CardViewController:CardTableViewCellDelegate {

    func removeButtonTapped(index: Int) {
        dashes.remove(at: index)
        calcTotalprice(dashes: dashes)
    }
    
    func miunsButtonTapped(index: Int) {
        if ( dashes[index].qunatity != 1) {
            dashes[index].qunatity -= 1
            calcTotalprice(dashes: dashes) }
            
        }
    
    func pluseButtonTapped(index: Int) {
        dashes[index].qunatity += 1
        calcTotalprice(dashes: dashes)
    }
       
}
