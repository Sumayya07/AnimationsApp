//
//  UIView + Ext.swift
//  TotalityCorpAssignment
//
//  Created by Sumayya Siddiqui on 31/07/23.
//

import Foundation
import UIKit

// MARK: UIView Extension
extension UIView {
    public func viewCornerRadius() {
        self.layer.cornerRadius = 20
    }
    
    public func smallCornerRadius() {
        self.layer.cornerRadius = 10
    }
    
    public func circleCornerRadius() {
        self.layer.cornerRadius = frame.size.height/2
    }
    
}
