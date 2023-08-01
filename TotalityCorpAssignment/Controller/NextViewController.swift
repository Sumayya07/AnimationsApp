//
//  NextViewController.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 01/08/23.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewCircleOne: UIView!
    @IBOutlet var viewCircleTwo: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var viewThree: UIView!
    @IBOutlet var viewFour: UIView!
    @IBOutlet var viewFive: UIView!
    
    @IBOutlet var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initially hide the views
        viewCircleOne.isHidden = true
        viewCircleTwo.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        
        viewOne.smallCornerRadius()
        viewTwo.smallCornerRadius()
        viewThree.smallCornerRadius()
        viewFour.smallCornerRadius()
        viewFive.smallCornerRadius()
        
        viewCircleOne.circleCornerRadius()
        viewCircleTwo.circleCornerRadius()
        
        btnNext.btnCornerRadius()
    }
        
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            self.viewCircleOne.isHidden = false
            self.viewCircleTwo.isHidden = false
            self.viewTwo.isHidden = false
            self.viewThree.isHidden = false
            self.viewFour.isHidden = false
            self.viewFive.isHidden = false
            
            // Save the original positions
            let circleOneOriginalPosition = viewCircleOne.frame.origin.x
            let circleTwoOriginalPosition = viewCircleTwo.frame.origin.x
            let twoOriginalPosition = viewTwo.frame.origin.x
            let threeOriginalPosition = viewThree.frame.origin.x
            let fourOriginalPosition = viewFour.frame.origin.x
            let fiveOriginalPosition = viewFive.frame.origin.x
            
            // Shift them off the screen to the right
            viewCircleOne.frame.origin.x = self.view.frame.width
            viewCircleTwo.frame.origin.x = self.view.frame.width
            viewTwo.frame.origin.x = self.view.frame.width
            viewThree.frame.origin.x = self.view.frame.width
            viewFour.frame.origin.x = self.view.frame.width
            viewFive.frame.origin.x = self.view.frame.width
            
            // Animate them back to their original positions
            UIView.animate(withDuration: 1.2, animations: {
                self.viewCircleOne.frame.origin.x = circleOneOriginalPosition
                self.viewCircleTwo.frame.origin.x = circleTwoOriginalPosition
                self.viewTwo.frame.origin.x = twoOriginalPosition
                self.viewThree.frame.origin.x = threeOriginalPosition
                self.viewFour.frame.origin.x = fourOriginalPosition
                self.viewFive.frame.origin.x = fiveOriginalPosition
            })
            
            UIView.animate(withDuration: 0.8, animations: {
                self.viewOne.frame.size.width = self.view.frame.width
            })
        }
        
    
    @IBAction func btnNextTapped(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "NumberViewController") as? NumberViewController {
                vc.modalPresentationStyle = .overCurrentContext
                vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
                self.present(vc, animated: true, completion: nil)
            
            }
        
    }

}
