//
//  ViewController.swift
//  shakeSwift
//
//  Created by Tolga on 31/05/2017.
//  Copyright © 2017 Tolga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgShake: UIImageView!
    @IBOutlet weak var lblShake: UILabel!
    @IBOutlet weak var txtShake: UITextField!
    @IBOutlet weak var btnShake: UIButton!
   
    @IBAction func btnShakeButtonPressed(_ sender: Any) {
        shakeSwift(field: btnShake)
    }
    
    @IBAction func btnShakeTextFieldPressed(_ sender: Any) {
        shakeSwift(field: txtShake)
    }
    
    @IBAction func btnShakeImagePressed(_ sender: Any) {
        shakeSwift(field: imgShake)
    }

    @IBAction func btnShakeLabelPressed(_ sender: Any) {
      shakeSwift(field: lblShake)
    }
    
    @IBAction func btnShakeViewPressed(_ sender: Any) {
        shakeSwift(field: view)
    }

    @IBAction func btnShakeAllPressed(_ sender: Any) {
        shakeSwift(field: btnShake)
        shakeSwift(field: txtShake)
        shakeSwift(field: imgShake)
        shakeSwift(field: lblShake)
    }

    
    func shakeSwift(field: Any) {
        
        let shakeSwift = CABasicAnimation(keyPath: "position")
        shakeSwift.duration = 0.07
        shakeSwift.repeatCount = 4
        shakeSwift.autoreverses = true
        shakeSwift.fromValue = CGPoint(x: (field as AnyObject).center.x - 10, y: (field as AnyObject).center.y)
        shakeSwift.toValue = CGPoint(x: (field as AnyObject).center.x + 10, y: (field as AnyObject).center.y)
        (field as AnyObject).layer.add(shakeSwift, forKey: "position")
        
    }



}

