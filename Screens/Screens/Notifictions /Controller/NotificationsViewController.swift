//
//  NotificationsViewController.swift
//  Screens
//
//  Created by Ahmed El Gndy on 05/12/2024.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet var notificationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
       
    }
}

extension NotificationsViewController {
    private func configureUI(){
        configureTableView(with: notificationTableView)
    }
    private func configureTableView(with table: UITableView){
        table.register(UINib(nibName: "NotificationsTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationsTableViewCell")
        table.dataSource = self
        table.delegate = self
    }
}

extension NotificationsViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
extension NotificationsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCell") as! NotificationsTableViewCell
        return cell
    }
    
    
}
