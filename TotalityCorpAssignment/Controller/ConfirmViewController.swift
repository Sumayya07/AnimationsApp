//
//  ConfirmViewController.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 01/08/23.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    @IBOutlet var lblPlay: UILabel!
    @IBOutlet var lblOswald: UILabel!
    @IBOutlet var lblBalance: UILabel!
    
    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewCircleOne: UIView!
    @IBOutlet var viewCircleTwo: UIView!
    @IBOutlet var viewCircleThree: UIView!
    @IBOutlet var viewTwo: UIView!
    
    @IBOutlet var btnConfirm: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initially hide all the views
        lblPlay.isHidden = true
        lblOswald.isHidden = true
        viewOne.isHidden = true
        viewCircleOne.isHidden = true
        viewCircleTwo.isHidden = true
        viewCircleThree.isHidden = true
        viewTwo.isHidden = true
        lblBalance.isHidden = true

        viewOne.smallCornerRadius()
        viewTwo.smallCornerRadius()
        
        viewCircleOne.circleCornerRadius()
        viewCircleTwo.circleCornerRadius()
        viewCircleThree.circleCornerRadius()
        
        btnConfirm.btnCornerRadius()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Save original positions
        let originalPositionViewCircleOne = viewCircleOne.center
        let originalPositionViewCircleTwo = viewCircleTwo.center
        let originalPositionViewCircleThree = viewCircleThree.center
        let originalPositionViewTwo = viewTwo.center
        let originalPositionLblBalance = lblBalance.center
        
        // Move them off-screen (adjust as necessary)
        viewCircleOne.center.x += view.bounds.width
        viewCircleTwo.center.x += view.bounds.width
        viewCircleThree.center.x += view.bounds.width
        viewTwo.center.y += view.bounds.height
        lblBalance.center.y += view.bounds.height
        
        // Save original font sizes
        let originalPlayFontSize = lblPlay.font.pointSize
        let originalOswaldFontSize = lblOswald.font.pointSize
        
        // Set them to a smaller size
        lblPlay.font = lblPlay.font.withSize(0)
        lblOswald.font = lblOswald.font.withSize(0)
        
        // Make views visible
        lblPlay.isHidden = false
        lblOswald.isHidden = false
        viewOne.isHidden = false
        viewCircleOne.isHidden = false
        viewCircleTwo.isHidden = false
        viewCircleThree.isHidden = false
        viewTwo.isHidden = false
        lblBalance.isHidden = false
        
        // Set labels to a smaller scale
          lblPlay.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
          lblOswald.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        // Animate labels to original scale
        UIView.animate(withDuration: 0.8, animations: {
                self.lblPlay.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.lblOswald.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        
        // Animate the rest
        UIView.animate(withDuration: 1.2, animations: {
            // Move views back to original positions
            self.viewCircleOne.center = originalPositionViewCircleOne
            self.viewCircleTwo.center = originalPositionViewCircleTwo
            self.viewCircleThree.center = originalPositionViewCircleThree
            self.viewTwo.center = originalPositionViewTwo
            self.lblBalance.center = originalPositionLblBalance
        })
    }

}
