//
//  NumberViewController.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 01/08/23.
//

import UIKit

class NumberViewController: UIViewController {

    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var viewCircleOne: UIView!
    @IBOutlet var viewCircleTwo: UIView!
    @IBOutlet var viewCircleThree: UIView!
    @IBOutlet var viewThree: UIView!
    @IBOutlet var lblBalance: UILabel!
    @IBOutlet var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initially hide all the views
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewCircleOne.isHidden = true
        viewCircleTwo.isHidden = true
        viewCircleThree.isHidden = true
        lblBalance.isHidden = true
           
        viewOne.smallCornerRadius()
        viewTwo.smallCornerRadius()
        viewThree.smallCornerRadius()
        
        viewCircleOne.circleCornerRadius()
        viewCircleTwo.circleCornerRadius()
        viewCircleThree.circleCornerRadius()
        
        btnNext.btnCornerRadius()

    }
    
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            // Save original positions
            let originalPositionViewTwo = viewTwo.center
            let originalPositionViewThree = viewThree.center
            let originalPositionViewCircleOne = viewCircleOne.center
            let originalPositionViewCircleTwo = viewCircleTwo.center
            let originalPositionViewCircleThree = viewCircleThree.center
            let originalPositionLblBalance = lblBalance.center
            
            // Move them off-screen (adjust as necessary)
            viewTwo.center.x += view.bounds.width
            viewThree.center.y += view.bounds.height
            viewCircleOne.center.x += view.bounds.width
            viewCircleTwo.center.x += view.bounds.width
            viewCircleThree.center.x += view.bounds.width
            lblBalance.center.y += view.bounds.height
            
            // Make views visible
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewCircleOne.isHidden = false
            viewCircleTwo.isHidden = false
            viewCircleThree.isHidden = false
            lblBalance.isHidden = false
            
        UIView.animate(withDuration: 0.8, animations: {
                // Animate viewOne's width to fill the screen
                self.viewOne.frame.size.width = self.view.frame.width
            })
            
            // After viewOne is shown, animate the rest
        UIView.animate(withDuration: 1.2, animations: {
                // Move views back to original positions
                self.viewTwo.center = originalPositionViewTwo
                self.viewThree.center = originalPositionViewThree
                self.viewCircleOne.center = originalPositionViewCircleOne
                self.viewCircleTwo.center = originalPositionViewCircleTwo
                self.viewCircleThree.center = originalPositionViewCircleThree
                self.lblBalance.center = originalPositionLblBalance
            })
        }
    
    
    @IBAction func btnNextTapped(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ConfirmViewController") as? ConfirmViewController {
                vc.modalPresentationStyle = .overCurrentContext
                vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
                self.present(vc, animated: true, completion: nil)
            
            }
    }
    


}
