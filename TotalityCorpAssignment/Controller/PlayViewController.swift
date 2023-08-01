//
//  ViewController.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 31/07/23.
//

import UIKit

class PlayViewController: UIViewController {
    
    @IBOutlet var viewOrange: UIView!
    @IBOutlet var viewYellow: UIView!
    
    @IBOutlet var btnOrange: UIButton!
    @IBOutlet var btnGreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOrange.viewCornerRadius()
        viewYellow.viewCornerRadius()
        
        btnOrange.btnCornerRadius()
        btnGreen.btnCornerRadius()
        
    }


    @IBAction func btnOrangeTapped(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "CandyViewController") as? CandyViewController {
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    
}

