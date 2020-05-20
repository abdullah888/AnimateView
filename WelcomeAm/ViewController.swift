//
//  ViewController.swift
//  WelcomeAm
//
//  Created by abdullah on 27/09/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var MainView: UIView!
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var MainViewContstraint: NSLayoutConstraint!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  self.ImageView.contentMode = .scaleAspectFill
        MainView.layer.cornerRadius = 8
        ContinueButton.layer.cornerRadius = 75
        MainView.layer.shadowColor = UIColor.white.cgColor
        MainView.layer.shadowOpacity = 1
        MainView.layer.shadowOffset = CGSize(width: 5 , height : 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        MainViewContstraint.constant = -195
        
        for i in [ImageView , MainView , WelcomeLabel , ContinueButton] {
            i?.alpha = 0
        }
        UIView.animate(withDuration: 1, animations: {
            self.ImageView.alpha = 1
        }) { (true) in
            self.animateView()
        }
    }
    
    func animateView(){
        UIView.animate(withDuration: 2 , animations: {
            self.MainView.alpha = 1
            self.MainViewContstraint.constant = 0
            self.view.layoutIfNeeded()
        }) { (true) in
            self.animateLabel()
        }
    }
    
    func animateLabel(){
        UIView.animate(withDuration: 1, animations: {
            self.WelcomeLabel.alpha = 1
        }) { (true) in
            self.animateButton()
        }
    }
    
    func animateButton(){
        UIView.animate(withDuration: 1, animations: {
            self.ContinueButton.alpha = 1
        })
    }
    
    
    @IBAction func ContinueBAction(_ sender: Any) {
        
        // Do ??
        
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

