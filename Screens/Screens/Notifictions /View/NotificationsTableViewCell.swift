//
//  NotificationsTableViewCell.swift
//  Screens
//
//  Created by Ahmed El Gndy on 05/12/2024.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

    @IBOutlet var borderView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
    }

}
extension NotificationsTableViewCell {
    func configureUI(){
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor(named: Colors.CE5E5E5.rawValue)?.cgColor
        borderView.layer.cornerRadius = 15
    }
}
