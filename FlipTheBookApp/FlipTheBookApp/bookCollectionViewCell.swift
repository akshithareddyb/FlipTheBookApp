//
//  bookCollectionViewCell.swift
//  FlipTheBookApp
//
//  Created by student on 4/23/22.
//

import UIKit

class bookCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var libimageView: UIImageView!
    
    func assignBook(_ book: Books){
            imageViewOutlet.image = book.bookImage
        }
    func assignlibBook(_ book: Books)
    {
        libimageView.image = book.bookImage
    }
}
