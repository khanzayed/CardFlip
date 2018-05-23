//
//  ViewController.swift
//  ProfileFlipSample
//
//  Created by Faraz Habib on 23/05/18.
//  Copyright © 2018 Faraz Habib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var cardViewOne:CardView!
    private var cardViewTwo:CardView!
    
    private var isRedShow = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardViewTwo = CardView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        cardViewTwo.center = self.view.center
        cardViewTwo.view.backgroundColor = .blue
        self.view.addSubview(cardViewTwo)
        
        cardViewOne = CardView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        cardViewOne.center = self.view.center
        cardViewOne.view.backgroundColor = .red
        self.view.addSubview(cardViewOne)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateButtonTapped(_ sender: UIButton) {
        if isRedShow {
            UIView.transition(from: self.cardViewOne.view, to: self.cardViewTwo.view, duration: 0.6, options: .transitionFlipFromRight, completion: nil)
        } else {
            UIView.transition(from: self.cardViewTwo.view, to: self.cardViewOne.view, duration: 0.6, options: .transitionFlipFromRight, completion: nil)
        }
        
        isRedShow = !isRedShow
        
        UIView.animate(withDuration: 0.3, animations: {
            self.cardViewOne.view.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            self.cardViewTwo.view.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }) { (true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.cardViewOne.view.transform = CGAffineTransform.identity
                self.cardViewTwo.view.transform = CGAffineTransform.identity
            }, completion: { (true) in

            })
        }
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        if isRedShow {
            UIView.transition(from: self.cardViewOne.view, to: self.cardViewTwo.view, duration: 0.6, options: .transitionFlipFromLeft, completion: nil)
        } else {
            UIView.transition(from: self.cardViewTwo.view, to: self.cardViewOne.view, duration: 0.6, options: .transitionFlipFromLeft, completion: nil)
        }
        
        isRedShow = !isRedShow
        
        UIView.animate(withDuration: 0.3, animations: {
            self.cardViewOne.view.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            self.cardViewTwo.view.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }) { (true) in
            UIView.animate(withDuration: 0.3, animations: {
                self.cardViewOne.view.transform = CGAffineTransform.identity
                self.cardViewTwo.view.transform = CGAffineTransform.identity
            }, completion: { (true) in
                
            })
        }
    }
    
}

