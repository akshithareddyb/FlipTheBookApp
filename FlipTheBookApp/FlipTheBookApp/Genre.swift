//
//  Genre.swift
//  FlipTheBookApp
//
//  Created by student on 4/23/22.
//

import Foundation

import UIKit

struct Genre{

    var genreName = ""

    var books_array:[Books] = []

}

struct Books{

    var bookName = ""

    let bookImage : UIImage

    var bookInfo = ""
    

}

let genre1 = Genre(genreName: "Fiction",  books_array: [book1,book2,book3])

    

    var book1 = Books(bookName: "Pride and Prejudice", bookImage: UIImage(named: "prideandprejudice")!, bookInfo: "In this adaptation of Jane Austen's beloved novel, Elizabeth Bennet (Keira Knightley) lives with her mother, father and sisters in the English countryside. As the eldest, she faces mounting pressure from her parents to marry. When the outspoken Elizabeth is introduced to the handsome and upper-class Mr. Darcy (Matthew MacFadyen), sparks fly. Although there is obvious chemistry between the two, Darcy's overly reserved nature threatens the fledgling relationship.")

   var book2 = Books(bookName: "When the Forest meet the stars", bookImage: UIImage(named: "forest")!, bookInfo: "After the loss of her mother and her own battle with breast cancer, Joanna Teale returns to her graduate research on nesting birds in rural Illinois, determined to prove that her recent hardships have not broken her. She throws herself into her work from dusk to dawn, until her solitary routine is disrupted by the appearance of a mysterious child who shows up at her cabin")

    var book3 = Books(bookName: "what Strange Paradise", bookImage: UIImage(named: "strange")!, bookInfo: "What Strange Paradise is a novel by Canadian writer Omar El Akkad, published in 2021 by Penguin Random House. The novel centres on Amir, a young boy from Syria who has survived the sinking of a ship that was carrying him and other refugees, and his developing bond with Vänna, a teenage girl who resides on the island where Amir washed up after the shipwreck.")

                                           



let genre2 = Genre(genreName: "Biography", books_array:[book4,book5,book6])

   

   var book4 = Books(bookName: "Wings of fire", bookImage: UIImage(named: "wingsoffire")!, bookInfo: "Wings of Fire, is the autobiography of the Missile Man of India and President of India, Dr. A. P. J. Abdul Kalam. It was written by him and Arun Tiwari.")

   var book5 = Books(bookName: "Steve Jobs The Life, Lessons and Rules for Success", bookImage: UIImage(named: "stevejobs")!, bookInfo: "Steve Jobs: The Life, Lessons & Rules for Success Only a select few individuals can claim to have changed the world. Steve Jobs is one of these. The mythology around the man is so strong that even six years after his death he still dominates online discussion.")

    var book6 = Books(bookName: "A Promised Land", bookImage: UIImage(named: "APromisedLand")!, bookInfo: "A Promised Land is a memoir by Barack Obama, the 44th president of the United States from 2009 to 2017. Published on November 17, 2020, it is the first of a planned two-volume series. Remaining focused on his political career, the presidential memoir documents Obama's life from his early years through the events surrounding the killing of Osama bin Laden in May 2011." )



let genre3 = Genre(genreName: "Comedy", books_array: [book7,book8,book9])

    var book7 = Books(bookName: "Grown Ups", bookImage: UIImage(named: "grownups")!, bookInfo: "They're a glamorous family, the Caseys.Johnny Casey, his two brothers Ed and Liam, their beautiful, talented wives and all their kids spend a lot of time together - birthday parties, anniversary celebrations, weekends away. And they're a happy family. Johnny's wife, Jessie - who has the most money - insists on it.Under the surface, though, conditions are murkier. While some people clash, other people like each other far too much . . .Everything stays under control until Ed's wife Cara, gets concussion and can't keep her thoughts to herself. One careless remark at Johnny's birthday party, with the entire family present, starts Cara spilling out all their secrets.In the subsequent unravelling, every one of the adults finds themselves wondering if it's time - finally - to grow up?")

    var book8 = Books(bookName: "Scoop", bookImage: UIImage(named: "scoop")!, bookInfo: "Scoop is a 1938 novel by the English writer Evelyn Waugh. It is a satire of sensationalist journalism and foreign correspondents.")

    var book9 = Books(bookName: "My Lifey", bookImage: UIImage(named: "mylifey")!, bookInfo: "Let Paddy McGuinness take you back, far, far away from celebrity land, to a two-up, two-down terrace in 1970s Bolton, where he grew up. They were happy times, but money was tight. Paddy slept on a mattress he dragged in from the street, and at 17 he struggled severely with the stress of juggling a college course and two jobs to support his beloved mum.But while cash may have been short, grit and wit were in over-supply, and this is the improbable true story of the lad who went from kipping in abandoned cars in Bolton to racing supercars on Top Gear, via laying concrete floors in prisons, a lively career in a leisure centre, a showbiz intervention by school pal Peter Kay and eye-popping adventures in the world of teledom.There has been mischief and misadventure, joy and sorry, huge success and unexpected challenges. It's a lifey well lived, and an unforgettable personal memoir written from the heart.")



let Genres = [genre1,genre2,genre3]



struct Library {

    var lib_array : [Books] = []

}
var toppicks:[Books] = [book3,book5,book7,book9]
var library:[Books] = [book9]
