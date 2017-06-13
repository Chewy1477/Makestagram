//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Chris Chueh on 6/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {
    
    weak var delegate: PostActionCellDelegate?

    static let height: CGFloat = 46

    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var timeAgoLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    
    
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.didTapLikeButton(sender as! UIButton, on: self)

    }
}
