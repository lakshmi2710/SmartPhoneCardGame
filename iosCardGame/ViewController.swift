//
//  ViewController.swift
//  iosCardGame
//
//  Created by Lakshmi on 06/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var player1img1: UIImageView!
    
    
    @IBOutlet weak var player1Img2: UIImageView!
    
    @IBOutlet weak var Player1Img3: UIImageView!
    
    
    
    @IBOutlet weak var Player2Img1: UIImageView!
    
    @IBOutlet weak var Player2Img2: UIImageView!
    
    
    @IBOutlet weak var Player2Img3: UIImageView!
    
    
    
    @IBOutlet weak var lblWinner: UILabel!
    
    
    var p1Img1 = -1
    var p1Img2 = -1
    var p1Img3 = -1
    
    var p2Img1 = -1
    var p2Img2 = -1
    var p2Img3 = -1
    
    var winner = 0
    
    
    
    let imageNames = ["2H", "3H", "4H", "5H", "6H", "7H", "8H", "9H",  "KH", "JH", "QH", "2S", "3S", "4S", "5S", "6S", "7S", "8S", "9S",  "KS", "JS", "QS", "2C", "3C", "4C", "5C", "6C", "7C", "8C", "9C",  "KC", "JC", "QC", "2D", "3D", "4D", "5D", "6D", "7D", "8D", "9D",  "KD", "JD", "QD", "AD","AS","AC","AH"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shuffleCards(){
        p1Img1 = Int.random(in: 0..<48)
        p1Img2 = Int.random(in: 0..<48)
        p1Img3 = Int.random(in: 0..<48)
        
        
        p2Img1 = Int.random(in: 0..<48)
        p2Img2 = Int.random(in: 0..<48)
        p2Img3 = Int.random(in: 0..<48)
    
        player1img1.image = UIImage(named: imageNames[p1Img1])
        player1Img2.image = UIImage(named: imageNames[p1Img2])
        Player1Img3.image = UIImage(named: imageNames[p1Img3])
        
        Player2Img1.image = UIImage(named: imageNames[p2Img1])
        Player2Img2.image = UIImage(named: imageNames[p2Img2])
        Player2Img3.image = UIImage(named: imageNames[p2Img3])
    
    }


    @IBAction func PlayGame(_ sender: Any) {
        shuffleCards()
        winner = 0
        if p1Img1 >= 44 || p1Img2 >= 44 || p1Img3 >= 44{
            winner = 1
            updateWinner()
            
        }
        
        else if p2Img1 >= 44 || p2Img2 >= 44 || p2Img3 >= 44{
            winner = 2
            updateWinner()
            
        }
        else{
            updateWinner()
        }
        
        
    }
    
    func updateWinner(){
        if winner == 1{
            lblWinner.text = "Player 1 is Winner"
        }
        
        if winner == 2{
            lblWinner.text = "Player 2 is Winner"
        }
        
        if winner == 0{
            lblWinner.text = "No Winner"
        }
        
    }
    
}

