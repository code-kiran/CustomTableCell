//
//  CellVC1.swift
//  customtablecell
//
//  Created by kiran on 8/18/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit
@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}

class CellVC1: UITableViewCell {
    
    @IBOutlet weak var playView: UIView!
    
    @IBOutlet weak var playImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        playImage.isUserInteractionEnabled = true
        let tap = UIGestureRecognizer(target: self, action: #selector(playViewTapped))
        self.playImage.addGestureRecognizer(tap)
    }
    
    @objc func playViewTapped(){
        print("playviewtapped")
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
