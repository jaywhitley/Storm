//
//  TeamViewController.swift
//  Storm
//
//  Created by Jay Whitley jr on 8/24/15.
//  Copyright (c) 2015 Jay Whitley jr. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var player1Button: UIButton!
    @IBOutlet weak var player2Button: UIButton!
    @IBOutlet weak var player3Button: UIButton!
    @IBOutlet weak var player4Button: UIButton!
    @IBOutlet weak var backgroundImageView:UIImageView!
    @IBAction func close(segue:UIStoryboardSegue) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        

        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
          player1Button.transform = CGAffineTransformConcat(scale, translate)
          player2Button.transform = CGAffineTransformConcat(scale, translate)
          player3Button.transform = CGAffineTransformConcat(scale, translate)
          player4Button.transform = CGAffineTransformConcat(scale, translate)

    }

    
    override func viewDidAppear(animated: Bool) {
    let scale = CGAffineTransformMakeScale(1, 1)
    let translate = CGAffineTransformMakeTranslation(0, 0)
    
        UIView.animateWithDuration(0.3, delay: 0.0, options: nil, animations: {
            self.player1Button.transform = CGAffineTransformConcat(scale, translate)
            }, completion: nil)
    
        UIView.animateWithDuration(0.5, delay: 0.0, options: nil, animations: {
                    self.player2Button.transform = CGAffineTransformConcat(scale, translate)
                    }, completion: nil)
        
        UIView.animateWithDuration(0.7, delay: 0.0, options: nil, animations: {
                        self.player3Button.transform = CGAffineTransformConcat(scale, translate)
                        }, completion: nil)
        
        UIView.animateWithDuration(0.9, delay: 0.0, options: nil, animations: {
                            self.player4Button.transform = CGAffineTransformConcat(scale, translate)
                            }, completion: nil)
        
        // Spring animation
        UIView.animateWithDuration(0.4, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.5, options: nil, animations: {
            self.player1Button.transform = CGAffineTransformMakeTranslation(0, 0)
                
            }, completion: nil)
        
        
    }
    
    
    
    
    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
