//
//  CardTableViewCell.swift
//  Screens
//
//  Created by Ahmed El Gndy on 07/12/2024.
//

import UIKit
protocol CardTableViewCellDelegate:NSObject {
    func pluseButtonTapped(index:Int)
    func miunsButtonTapped(index:Int)
    func removeButtonTapped(index:Int)
}
class CardTableViewCell: UITableViewCell {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var priceLbl: UILabel!
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var quantityLBL: UILabel!
    @IBOutlet var mainView: UIView!
    
    var index:Int?
    //MARK: delegate
    weak var delegate:CardTableViewCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configureUI()
    }
    
    //MARK: Actions
    @IBAction func pluseButtonTaped(_ sender: Any) {
        delegate?.pluseButtonTapped(index: index ?? 0)
        
    }
    @IBAction func minusButtonTapped(_ sender: Any) {
        delegate?.miunsButtonTapped(index: index ?? 0)
    }
    @IBAction func removeButtonTapped(_ sender: Any) {
        delegate?.removeButtonTapped(index: index ?? 0)
    }
}
extension CardTableViewCell {
    private func configureUI () {
        mainView.layer.cornerRadius = 20
        productImage.layer.cornerRadius = 20
        self.backgroundColor = UIColor.clear
    }
    
    func ConfigureData(with dash:Dash) {
        productImage.image = UIImage(named:dash.image)
        titleLbl.text = dash.name
        quantityLBL.text = String((dash.qunatity))
        priceLbl.text = String(dash.totalPrice)
        
    }
}
