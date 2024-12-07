//
//  CardViewController.swift
//  Screens
//
//  Created by Ahmed El Gndy on 07/12/2024.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet var cardTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}
 
extension CardViewController {
    func configureUI() {
        conigureTableView(with: cardTableView)
    }
    func conigureTableView(with table:UITableView){
        table.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
        table.delegate = self
        table.dataSource = self
    }
}


extension CardViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}

extension CardViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as! CardTableViewCell
        return cell
    }
    
    
}
