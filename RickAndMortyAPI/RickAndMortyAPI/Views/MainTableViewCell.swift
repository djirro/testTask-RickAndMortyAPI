//
//  MainTableViewCell.swift
//  RickAndMortyAPI
//
//  Created by Admin on 13.05.2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var characterImage:   UIImageView!
    @IBOutlet weak var characterName:    UILabel!
    @IBOutlet weak var characterSpecies: UILabel!
    @IBOutlet weak var characterGender:  UILabel!
    
    static let id = "MainTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
