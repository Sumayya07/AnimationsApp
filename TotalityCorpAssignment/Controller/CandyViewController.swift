//
//  CandyViewController.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 31/07/23.
//

import UIKit

class CandyViewController: UIViewController {
    
    @IBOutlet var viewYellow: UIView!
    @IBOutlet var viewGrayOne: UIView!
    @IBOutlet var viewGrayTwo: UIView!
    
    @IBOutlet var lblCandyBust: UILabel!
    @IBOutlet var lblLoremIpsum: UILabel!
    @IBOutlet var lblDownloadMB: UILabel!
    
    @IBOutlet var btnCross: UIButton!
    @IBOutlet var btnRead: UIButton!
    @IBOutlet var btnDownload: UIButton!
    @IBOutlet var btnPlay: UIButton!
    
    
    @IBOutlet var btnDownloadWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        viewYellow.viewCornerRadius()
        btnDownload.btnCornerRadius()
        btnPlay.btnCornerRadius()
        
        // Initially hide the views
        btnPlay.isHidden = true
        viewGrayOne.isHidden = true
        viewGrayTwo.isHidden = true
        lblLoremIpsum.alpha = 0.0
        btnCross.alpha = 0.0
        btnRead.alpha = 0.0
        
        // Save the original position
        let loremIpsumOriginalPosition = lblLoremIpsum.center
        let crossOriginalPosition = btnCross.center
        let readOriginalPosition = btnRead.center

        // Shift them a little backwards
        lblLoremIpsum.center.y += 10
        btnCross.center.y += 10
        btnRead.center.y += 10
        
        // Animation for the view
        let viewOriginalPosition = viewYellow.frame.origin.y
        viewYellow.frame.origin.y = (self.view.frame.height / 2) - 250 // You can adjust this value
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.viewYellow.frame.origin.y = viewOriginalPosition
        })
        
        // Animation for the label
        let labelOriginalPosition = lblCandyBust.frame.origin.x
        lblCandyBust.frame.origin.x = self.view.frame.width - 220
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.lblCandyBust.frame.origin.x = labelOriginalPosition
        })
        
        // Animation for the button
        let buttonOriginalPosition = btnDownload.frame.origin.y
        btnDownload.frame.origin.y = (self.view.frame.height / 2) + 150 // You can adjust this value
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.btnDownload.frame.origin.y = buttonOriginalPosition
        }, completion: { _ in
            // Show the views after the animation
            self.viewGrayOne.isHidden = false
            self.viewGrayTwo.isHidden = false

            // Animation for viewGrayOne
            let grayOneOriginalPosition = self.viewGrayOne.frame.origin.x
            self.viewGrayOne.frame.origin.x = self.view.frame.width
            UIView.animate(withDuration: 0.5, animations: {
                self.viewGrayOne.frame.origin.x = grayOneOriginalPosition
            })


            // Animation for viewGrayTwo
            let grayTwoOriginalPosition = self.viewGrayTwo.frame.origin.x
            self.viewGrayTwo.frame.origin.x = self.view.frame.width
            UIView.animate(withDuration: 0.5, animations: {
                self.viewGrayTwo.frame.origin.x = grayTwoOriginalPosition
            })
            
            // Fade in animations for the labels and the button
            UIView.animate(withDuration: 1.0, animations: {
                self.lblLoremIpsum.alpha = 1.0
                self.btnCross.alpha = 1.0
                self.btnRead.alpha = 1.0

            // Move them to their original position
                self.lblLoremIpsum.center = loremIpsumOriginalPosition
                self.btnCross.center = crossOriginalPosition
                self.btnRead.center = readOriginalPosition
            })

        })
        
        
    }
    
    
    @IBAction func btnDownloadTapped(_ sender: Any) {
        // Save the original position
        let originalPosition = self.btnPlay.center
            
        // Move the button below the screen
        self.btnPlay.center.y = self.view.frame.height + btnPlay.frame.height
            
        // Make button visible
        self.btnDownload.isHidden = true
            self.btnPlay.isHidden = false

            // Animate button coming up from the bottom
            UIView.animate(withDuration: 0.5, animations: {
                self.btnPlay.center = originalPosition
            })
        
    }
    
    
    @IBAction func btnPlayTapped(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as? NextViewController {
                vc.modalPresentationStyle = .overCurrentContext
                vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
                self.present(vc, animated: true, completion: nil) 
            }
    }
    
    
}
