//
//  books.swift
//  FlipTheBookApp
//
//  Created by student on 4/23/22.
//

import Foundation
import UIKit

struct Book{
    let title:String
    let image:UIImage
    let author:String
}
let book1 : [Book] = [
    Book(title:"Rich Dad Poor Dad",image:UIImage(named: "richdadpoordad")!,author: "Robert Kiyosaki"),
    Book(title:"The Secret",image:UIImage(named: "thesecret")!,author: "Rhonda Byrne"),
    Book(title:"Think And Grow Rich",image:UIImage(named: "thinkandgrowrich")!,author: "Napolean Hill"),
    Book(title:"Wings Of Fire",image:UIImage(named: "wingsoffire")!,author:"Tui T.Sutherland"),
    Book(title:"How To Win Friends",image:UIImage(named: "howtowinfriends")!,author:"Dale Carnegie")
]
