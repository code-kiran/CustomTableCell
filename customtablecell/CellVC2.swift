//
//  CellVC2.swift
//  customtablecell
//
//  Created by kiran on 8/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class CellVC2: UITableViewCell {
    
    @IBOutlet weak var artistProfileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        artistProfileImage.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self
            , action: #selector(imageTapped))
        self.artistProfileImage.addGestureRecognizer(tap)
        // Initialization code
    }
    
    @objc func imageTapped() {
        print("profileimage tapped")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
